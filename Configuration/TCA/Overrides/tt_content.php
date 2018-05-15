<?php
if (!defined('TYPO3_MODE')) {
        die ('Access denied.');
}

\TYPO3\CMS\Core\Utility\ExtensionManagementUtility::addToAllTCAtypes('tt_content','subheader', 'text,textpic,textmedia,html,image', 'before:bodytext');
