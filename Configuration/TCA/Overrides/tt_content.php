<?php
defined('TYPO3') || die();

// allow longer subheaders
$GLOBALS['TCA']['tt_content']['columns']['subheader']['config']['max']= 4096;
$GLOBALS['TCA']['tt_content']['columns']['subheader']['config']['type']= 'text';
$GLOBALS['TCA']['tt_content']['columns']['subheader']['config']['cols']= 40;
$GLOBALS['TCA']['tt_content']['columns']['subheader']['config']['rows']= 3;


// allow filelink sorting ASC and DESC
// obsolete since TYPO3 Version 9 (Feature: #65403 - Add file links sorting by date and sorting direction)
