<?php
defined('TYPO3') || die();


$GLOBALS['TCA']['sys_category']['ctrl']['sortby'] = null; /* unset default */
$GLOBALS['TCA']['sys_category']['ctrl']['default_sortby'] = 'ORDER BY slug';