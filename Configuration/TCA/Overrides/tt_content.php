<?php
defined('TYPO3') || die();

// allow longer subheaders
$GLOBALS['TCA']['tt_content']['columns']['subheader']['config']['max']= 4096;
$GLOBALS['TCA']['tt_content']['columns']['subheader']['config']['type']= 'text';
$GLOBALS['TCA']['tt_content']['columns']['subheader']['config']['cols']= 40;
$GLOBALS['TCA']['tt_content']['columns']['subheader']['config']['rows']= 3;
