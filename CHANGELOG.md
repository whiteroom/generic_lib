# Generic_Lib - Changelog


## Beta features

## generic_lib 1.4.1

- corrected dependencies
- Design styling static placeholdern

## generic_lib 1.4.1

- Cleanup
- https default for new pages
- Added static placeholder while website Dev. TYPO3 BE/FE functionality is given for Admin


## generic_lib 1.4.0

- enable contentFooter in constants and define PID, in order to get footer content from pages CE
- TSconfig towards more universal usage and slim backend
- removed RealUrl Configuration


## generic_lib 1.3.1

- minor corrections
- Updated dependencies in ext_emconf.php
- image altText solved for fluid MediaGallery.html
- tx_realurl_enable by default
- Display browsehappy based on Modernizr, added tests (mix-blend-mode, vh/vw)


## generic_lib 1.2.1

- Moved to github


## generic_lib 1.1.7

- preProductive Version v7 whiteroom
- first fully functional version


## generic_lib 1.1.0

- Added TYPO3 7.x support
- Implemented Signals
- Implemented blacklist of PAGE typeNum in SetupTS
- Implemented blacklist for index/noindex robots metatag
- Implemented blacklist for canonical url
- Implemented canonical url support for mounted pages, pointing to real page instead of mount path (disabled by default)
- Implemented expiry date for sitemap entries (customizable with SetupTS or Connector)
- Implemented pagetitle caching (if there is any USER_INT on the current page)
- Removed own caching solution, using TYPO3 caching framework now
- Fixed many bugs and issues
- Design styling (layouts and)


## Alpha features

- 	Version 1.0.1 to 1.0.4, fixed many bugs and issues


## generic_lib 1.0 (2016-12-06)

- 	Version 1.0.0
- 	Initial Release
- 	Primary aims: create a distribution that could serve as a client's project kickstarter
	Install TYPO3, create database, install extension generic_lib and start customizing
- 	Minimal responsive css
- 	TYPO3 7.x support, fluid_styled_content based



## todo:
-   include scriptmerger extension
-	template layouts für news
-	Entscheid ob einmal installieren und weg (#resDir = EXT:generic_lib/Resources) oder nicht
- 	update code for V8 compatability
