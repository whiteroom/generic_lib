<?php
if (!defined('TYPO3_MODE')) {
        die ('Access denied.');
}

$GLOBALS['TCA']['tt_content']['columns']['subheader']['config']['max']= 4096;
$GLOBALS['TCA']['tt_content']['columns']['subheader']['config']['type']= 'text';
$GLOBALS['TCA']['tt_content']['columns']['subheader']['config']['cols']= 40;
$GLOBALS['TCA']['tt_content']['columns']['subheader']['config']['rows']= 3;
