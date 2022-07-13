<?php
namespace Whiteroom\GenericLib\XmlSitemap;

/*
 * This file is part of the TYPO3 CMS project.
 *
 * It is free software; you can redistribute it and/or modify it under
 * the terms of the GNU General Public License, either version 2
 * of the License, or any later version.
 *
 * The TYPO3 project - inspiring people to share!
 */

use TYPO3\CMS\Seo\XmlSitemap\RecordsXmlSitemapDataProvider;
use TYPO3\CMS\Seo\XmlSitemap\Exception\MissingConfigurationException;
/**
 * Class TxNewsGoogleXmlSitemapDataProvider
 *
 * @package TYPO3
 * @license http://www.gnu.org/licenses/gpl.html GNU General Public License, version 2 or later
 */
class TxNewsGoogleXmlSitemapDataProvider extends RecordsXmlSitemapDataProvider
{
    /**
     * Generate Items
     *
     * @throws MissingConfigurationException
     */
    public function generateItems(): void
    {
        parent::generateItems();
        $this->resolveRequiredValues();
        $this->overrideValuesByConfiguration();
    }
    /**
     * Resolve item values for minimum requirements
     */
    protected function resolveRequiredValues(): void
    {
        if (!empty($this->items)) {
            foreach ($this->items as &$item) {
                // publication -> name
                if (!isset($item['name']) || empty($item['name']))
                    $item['name'] = $GLOBALS['TSFE']->tmpl->sitetitle ? : $GLOBALS['TYPO3_CONF_VARS']['SYS']['sitename'];
                // publication -> language
                if (!isset($item['language']) || empty($item['language']))
                    $item['language'] = $GLOBALS['TSFE']->lang; // @todo get iso code by $item['data']['sys_language_uid'];
                // publication_date
                if (!isset($item['publication_date']) || empty($item['publication_date']))
                    $item['publication_date'] = date('c', $item['data']['datetime']);
                // title
                if (!isset($item['title']) || empty($item['title']))
                 $item['title'] = htmlspecialchars($item['data']['title']);
            }
        }
    }
    /**
     * Override Item values with typoscript configuration
     */
    protected function overrideValuesByConfiguration(): void
    {
        if (!empty($this->items)) {
            if (isset($this->config['itemOverrides']) && !empty($this->config['itemOverrides'])) {
                foreach ($this->items as &$item) {
                    foreach ($this->config['itemOverrides'] as $key => $value) {
                        if (!empty($value)) {
                            if (is_array($value)) {
                                foreach ($value as $subKey => $subValue) {
                                    if (!empty($subValue)) {
                                        $item[$key][$subKey] = $subValue;
                                    }
                                }
                            } else {
                                $item[$key] = $value;
                            }
                        }
                    }
                }
            }
        }
    }
}