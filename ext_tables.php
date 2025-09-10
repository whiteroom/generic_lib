<?php
defined('TYPO3') || die();

(function () {

	// extend the sorting options of the news extension in TYPO3
	// Labels go to overrides > locallang_be.xlf
    $GLOBALS['TYPO3_CONF_VARS']['EXT']['news']['orderByNews'] .= ',author,categories.slug';
})();