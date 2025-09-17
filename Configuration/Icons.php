<?php

declare(strict_types=1);

use TYPO3\CMS\Core\Imaging\IconProvider\BitmapIconProvider;
use TYPO3\CMS\Core\Imaging\IconProvider\SvgIconProvider;

return [

    'generic-lib-svg' => [

        'provider' => SvgIconProvider::class,
        'source' => 'EXT:generic_lib/Resources/Public/Icons/Extension.svg',
    ],
];
