<?php

declare(strict_types=1);

/*
 * This file is part of the "generic_lib" Extension for TYPO3 CMS.
 *
 * For the full copyright and license information, please read the
 * LICENSE.txt file that was distributed with this source code.
 */

namespace Whiteroom\GenericLib\Command;

use Override;
use Symfony\Component\Console\Command\Command;
use Symfony\Component\Console\Input\InputInterface;
use Symfony\Component\Console\Input\InputOption;
use Symfony\Component\Console\Output\OutputInterface;
use Symfony\Component\Console\Style\SymfonyStyle;
use TYPO3\CMS\Core\Database\ConnectionPool;
use TYPO3\CMS\Core\Http\RequestFactory;
use TYPO3\CMS\Core\Site\Entity\SiteLanguage;
use TYPO3\CMS\Core\Site\SiteFinder;
use TYPO3\CMS\Core\Site\Entity\Site;
use TYPO3\CMS\Core\Utility\GeneralUtility;
use TYPO3\CMS\Core\Cache\CacheManager;

/**
 * IndexedSearchCacheCommand
 */
class IndexedSearchCacheCommand extends Command
{
    /**
     * @var array<string>
     */
    private array $tablesTruncate = [
        'index_phash',
        'index_fulltext',
        'index_rel',
        'index_words',
        'index_section',
        'index_grlist'
    ];

    /**
     * @var array<string>
     */
    private array $urls = [];

    /**
     * @var array<int|string, int>
     */
    private array $statusCodes = [];

    /**
     * @var array<string, string>
     */
    private array $errors = [];

    /**
     * Configures the command
     */
    #[Override]
    protected function configure(): void
    {
        $this->setDescription('Clears and rebuilds the indexed_search cache by crawling sitemap.xml.');
        $this->setHelp('Clears and rebuilds the indexed_search cache by crawling sitemap.xml for all sites and languages.' . LF . 'If you want to get more detailed information, use the --verbose option.');
        $this->addOption('dry-run', 'd', InputOption::VALUE_NONE, 'Performs a dry run without truncating "indexed_search" tables and without requesting the urls.');
        $this->addOption('no-status', null, InputOption::VALUE_NONE, 'Do not show status when requesting the urls.');
    }

    /**
     * Executes the command
     */
    #[Override]
    protected function execute(InputInterface $input, OutputInterface $output): int
    {
        $io = new SymfonyStyle($input, $output);
        $sites = $this->getSites();

        if (!empty($sites)) {
            $io->writeln('Found ' . count($sites) . ' sites.');
            /** @var Site $site */
            foreach ($sites as $site) {
                $io->newLine();
                $io->writeln('Processing site "' . $site->getIdentifier() . '" (' . $site->getBase() . ').');
                
                $siteLanguages = $site->getLanguages();
                if (!empty($siteLanguages)) {
                    $io->writeln('Found ' . count($siteLanguages) . ' site languages.');
                    /** @var SiteLanguage $siteLanguage */
                    foreach ($siteLanguages as $siteLanguage) {
                        $io->newLine();
                        $io->writeln('Processing site language "' . $siteLanguage->getTitle() . '" (' . $siteLanguage->getBase() . ').');
                        
                        $sitemapIndexUrl = $this->getSitemapIndexUrl($site, $siteLanguage);
                        $sitemapIndex = $this->getSitemap($sitemapIndexUrl);

                        if (!empty($sitemapIndex->sitemap)) {
                            $io->writeln('Found ' . count($sitemapIndex->sitemap) . ' sitemaps in sitemap index "' . $sitemapIndexUrl . '".');
                            foreach ($sitemapIndex->sitemap as $item) {
                                $sitemapUrl = (string)$item->loc;
                                $sitemap = $this->getSitemap($sitemapUrl);
                                if (!empty($sitemap->url)) {
                                    $io->writeln('Found ' . count($sitemap->url) . ' urls in sitemap "' . $sitemapUrl . '".');
                                    foreach ($sitemap->url as $urlItem) {
                                        $this->urls[] = (string)$urlItem->loc;
                                    }
                                } else {
                                    $io->writeln('Sitemap "' . $sitemapUrl . '" could not be fetched.');
                                }
                            }
                        } else {
                            $io->writeln('Sitemap index "' . $sitemapIndexUrl . '" could not be fetched.');
                        }
                    }
                } else {
                    $io->writeln('No site languages found.');
                }
            }

            if (!empty($this->urls)) {
                $io->newLine();
                $io->writeln('Fetched ' . count($this->urls) . ' urls total for processing.');

                if (!$input->getOption('dry-run')) {
                    
                    // #1: For reindexing, we only need to clar the page cache (only place where it's determined whether a page will be re-rendered)
                    $cacheManager = GeneralUtility::makeInstance(CacheManager::class);
                    $cacheManager->getCache('pages')->flush();
                    $io->writeln('Flushed page cache.');


                    $this->truncateIndexedSearchTables();
                    $io->writeln('Truncated ' . count($this->tablesTruncate) . ' "indexed_search" tables.');
                } else {
                    $io->writeln('Skipping truncating "indexed_search" tables (performing dry run).');
                }

                $io->writeln('Processing ' . count($this->urls) . ' urls now.');
                $io->newLine();

                $dryRun = (bool)$input->getOption('dry-run');
                $failedUrls = []; 
                
                foreach ($this->urls as $url) {
                    $statusCode = $dryRun ? 0 : $this->requestUrl($url);
                    $key = $dryRun ? 'dry-run' : $statusCode;

                    $this->statusCodes[$key] = ($this->statusCodes[$key] ?? 0) + 1;
                    if (!$dryRun && $statusCode >= 500) {
                        // #2: In case #1 does lead to issues where the cache files are deleted or rewritten, while PHP-FPM is still operating based on the old state
                        $failedUrls[] = $url;
                    }

                    if (!$input->getOption('no-status')) {
                        $io->writeln('Got status code "' . $statusCode . '" when requesting "' . $url . '".');
                    }
                }
                
                if ($failedUrls !== []) {
                    $io->newLine();
                    $io->writeln('Retrying ' . count($failedUrls) . ' failed urls.');
                    //sleep(5);
                
                    foreach ($failedUrls as $url) {
                        $statusCode = $this->requestUrl($url);
                        $io->writeln('Retry: status code "' . $statusCode . '" when requesting "' . $url . '".');
                    }
                }

                if (!empty($this->statusCodes)) {
                    foreach ($this->statusCodes as $statusCode => $count) {
                        $io->writeln('Finished processing ' . $count . ' urls with status code "' . $statusCode . '".');
                    }
                }

                foreach ($this->errors as $url => $message) {
                    $io->writeln('Error for "' . $url . '": ' . $message);
                }

            } else {
                $io->writeln('No urls found for processing.');
            }
        } else {
            $io->writeln('No sites found.');
        }

        return $this->errors !== [] ? self::FAILURE : self::SUCCESS;
    }

    /**
     * Performs a request
     */
    private function requestUrl(string $url): int
    {
        try {
            $requestFactory = GeneralUtility::makeInstance(RequestFactory::class);
            $response = $requestFactory->request($url, 'GET', [
                'http_errors' => false,
                'timeout' => 60,
            ]);
            return $response->getStatusCode();

        } catch (\Exception $ex) {
            $this->errors[$url] = $ex->getMessage();
            return 999;
        }
    }

    /**
     * Gets all sites
     *
     * @return Site[]
     */
    private function getSites(): array
    {
        $siteFinder = GeneralUtility::makeInstance(SiteFinder::class);
        $allSites = $siteFinder->getAllSites();
        $sites = [];

        if (!empty($allSites)) {
            foreach ($allSites as $site) {
                $sites[] = $site;
            }
        }
        return $sites;
    }

    /**
     * Gets a sitemap
     */
    private function getSitemap(string $url): \SimpleXMLElement|array
    {
        $content = null;
        try {
            $requestFactory = GeneralUtility::makeInstance(RequestFactory::class);
            $response = $requestFactory->request($url);

            if ($response->getStatusCode() === 200) {
                if (str_starts_with($response->getHeaderLine('Content-Type'), 'application/xml')) {
                    $content = simplexml_load_string($response->getBody()->getContents());
                }
            }
        } catch (\Exception $ex) {
        }

        return $content instanceof \SimpleXMLElement ? $content : [];
    }

    /**
     * Gets a sitemap index url
     */
    private function getSitemapIndexUrl(Site $site, SiteLanguage $siteLanguage): string
    {
        $parameters = [
            'type' => 1533906435,
            '_language' => $siteLanguage
        ];
        return (string)$site->getRouter()->generateUri($site->getRootPageId(), $parameters);
    }

    /**
     * Truncates the indexed_search tables
     */
    private function truncateIndexedSearchTables(): void
    {
        foreach ($this->tablesTruncate as $table) {
            GeneralUtility::makeInstance(ConnectionPool::class)
                ->getConnectionForTable($table)
                ->truncate($table);
        }
    }
}