<?php
defined('TYPO3_MODE') or die();

/**
 * Add extra cropping aspects ratios
 */


$GLOBALS['TCA']['sys_file_reference']['columns']['crop']['config']['ratios'] = array(
    '0.75' => 'Portrait Mode 3:4',
    '1' => 'LLL:EXT:lang/Resources/Private/Language/locallang_wizards.xlf:imwizard.ratio.1_1',
    '1.3333333333333333' => 'LLL:EXT:lang/Resources/Private/Language/locallang_wizards.xlf:imwizard.ratio.4_3',
    '1.7777777777777777' => 'LLL:EXT:lang/Resources/Private/Language/locallang_wizards.xlf:imwizard.ratio.16_9',
    'NaN' => 'LLL:EXT:lang/Resources/Private/Language/locallang_wizards.xlf:imwizard.ratio.free',
);