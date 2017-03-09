# Generic_Lib - Changelog

## generic_lib 2.0.1

## Beta features

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
- 	Initial Release, fork of bsdist
- 	Primary aims: create a distribution that could serve as a client's project kickstarter
	Install TYPO3, create database, install extension generic_lib and start customizing
- 	Minimal responsive css
- 	TYPO3 7.x support, fluid_styled_content based



## todo:
-   include scriptmerger extension
-	template layouts für news
-	Entscheid ob einmal installieren und weg (#resDir = EXT:generic_lib/Resources) oder nicht