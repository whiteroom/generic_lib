<?php
defined('TYPO3_MODE') or die();

(function () {
\TYPO3\CMS\Core\Utility\ExtensionManagementUtility::addPageTSConfig('<INCLUDE_TYPOSCRIPT: source="DIR:EXT:generic_lib/Configuration/TSconfig/Page" extensions="t3s">');
\TYPO3\CMS\Core\Utility\ExtensionManagementUtility::addPageTSConfig('<INCLUDE_TYPOSCRIPT: source="DIR:EXT:generic_lib/Configuration/TSconfig/Ext/News" extensions="t3s">');
\TYPO3\CMS\Core\Utility\ExtensionManagementUtility::addUserTSConfig('<INCLUDE_TYPOSCRIPT: source="DIR:EXT:generic_lib/Configuration/TSconfig/User" extensions="t3s">');



# allow custom translations for tx_news 
$GLOBALS['TYPO3_CONF_VARS']['SYS']['locallangXMLOverride']['de']['EXT:news/Resources/Private/Language/locallang_be.xlf'][] = 'EXT:generic_lib/Resources/Private/Language/Overrides/News/de.locallang_be.xlf';
$GLOBALS['TYPO3_CONF_VARS']['SYS']['locallangXMLOverride']['de']['EXT:news/Resources/Private/Language/locallang_csh_flexforms.xlf'][] = 'EXT:generic_lib/Resources/Private/Language/Overrides/News/de.locallang_csh_flexforms.xlf';
$GLOBALS['TYPO3_CONF_VARS']['SYS']['locallangXMLOverride']['de']['EXT:news/Resources/Private/Language/locallang_db.xlf'][] = 'EXT:generic_lib/Resources/Private/Language/Overrides/News/de.locallang_db.xlf';
$GLOBALS['TYPO3_CONF_VARS']['SYS']['locallangXMLOverride']['de']['EXT:news/Resources/Private/Language/locallang_modadministration.xlf'][] = 'EXT:generic_lib/Resources/Private/Language/Overrides/News/de.locallang_modadministration.xlf';
$GLOBALS['TYPO3_CONF_VARS']['SYS']['locallangXMLOverride']['de']['EXT:news/Resources/Private/Language/locallang.xlf'][] = 'EXT:generic_lib/Resources/Private/Language/Overrides/News/de.locallang.xlf';



$customChanges = [
    'SYS' => [
        'systemMaintainers' => [
            #  Admin Users are also SystemMaintainers
            1,
        ],
        
        'FileInfo' => [
            'fileExtensionToMimeType' => [
                # add mp3 audio
                'mp3' => 'audio/mpeg',
            ]
        ],
        
    ],
    
    'BE' => [
        'lockSSL' => true,
    ],
    
    
    'RTE' => [
        'Presets' => [
            #  register the rte_ckeditor yaml files
            'client_default' => 'EXT:generic_lib/Configuration/RTE/client.yaml',
        ],
    ],


    'EXTENSIONS' => [
        
        'generic_lib' => [
            'enableDummySetting' => 0,
        ],
        'news' => [
            'manualSorting' => 1,
            'rteForTeaser' => 0,
            'contentElementRelation' => 0,
        ],
        
        'backend' => [
            'loginLogo' => 'fileadmin/generic_lib/Resources/Public/Images/login-logo.svg',
            'loginBackgroundImage' => 'fileadmin/generic_lib/Resources/Public/Images/img_102515664287.jpg',
        ],
    ]
];
$GLOBALS['TYPO3_CONF_VARS'] = array_replace_recursive($GLOBALS['TYPO3_CONF_VARS'], (array)$customChanges);



# MediaViewHelper in the core 
# Comma separated list of file extensions perceived as media files by TYPO3 (lowercase and no spaces between)
# Register a file extension as allowed media file (valid for >= TYPO3 CMS 7.5)
$GLOBALS['TYPO3_CONF_VARS']['SYS']['mediafile_ext'] .= ',eps';

# Backwards-Compatability, this is how it was/is done before
# Register your custom file extension as allowed media file (< TYPO3 CMS 7.5)
$GLOBALS['TYPO3_CONF_VARS']['GFX']['imagefile_ext'] .= ',eps';


})();