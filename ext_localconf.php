<?php
if (!defined('TYPO3_MODE')) {
	die ('Access denied.');
}


\TYPO3\CMS\Core\Utility\ExtensionManagementUtility::addPageTSConfig('<INCLUDE_TYPOSCRIPT: source="DIR:EXT:' . $_EXTKEY . '/Configuration/TSconfig/Page" extensions="t3s">');
\TYPO3\CMS\Core\Utility\ExtensionManagementUtility::addPageTSConfig('<INCLUDE_TYPOSCRIPT: source="DIR:EXT:' . $_EXTKEY . '/Configuration/TSconfig/Ext/News" extensions="t3s">');
\TYPO3\CMS\Core\Utility\ExtensionManagementUtility::addUserTSConfig('<INCLUDE_TYPOSCRIPT: source="DIR:EXT:' . $_EXTKEY . '/Configuration/TSconfig/User" extensions="t3s">');


$GLOBALS['TYPO3_CONF_VARS']['EXT']['extConf']['realurl'] = serialize([
    'configFile' => 'typo3conf/ext/' . $_EXTKEY . '/Configuration/RealUrl/Configuration.php',
    'enableAutoConf' => 1
]);


$GLOBALS['TYPO3_CONF_VARS']['EXT']['extConf']['rtehtmlarea'] = serialize([
    'enableImages' => 1,
    'enableInlineElements' => 1
]);

$GLOBALS['TYPO3_CONF_VARS']['EXT']['extConf']['news'] = serialize([
    'manualSorting' => 1
]);


$GLOBALS['TYPO3_CONF_VARS']['EXT']['extConf']['backend'] = serialize([
    'loginLogo' => 'fileadmin/' . $_EXTKEY . '/Resources/Public/Images/login-logo.svg',
    //'loginHighlightColor' => '#17385E',
    'loginBackgroundImage' => 'fileadmin/' . $_EXTKEY . '/Resources/Public/Images/img_102515664287.jpg',
]);


