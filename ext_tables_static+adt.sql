

DROP TABLE IF EXISTS `be_groups`;
CREATE TABLE IF NOT EXISTS `be_groups` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `non_exclude_fields` text COLLATE utf8_unicode_ci,
  `explicit_allowdeny` text COLLATE utf8_unicode_ci,
  `allowed_languages` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `custom_options` text COLLATE utf8_unicode_ci,
  `db_mountpoints` text COLLATE utf8_unicode_ci,
  `pagetypes_select` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tables_select` text COLLATE utf8_unicode_ci,
  `tables_modify` text COLLATE utf8_unicode_ci,
  `crdate` int(10) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(10) unsigned NOT NULL DEFAULT '0',
  `groupMods` text COLLATE utf8_unicode_ci,
  `file_mountpoints` text COLLATE utf8_unicode_ci,
  `file_permissions` text COLLATE utf8_unicode_ci,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT '0',
  `description` varchar(2000) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `lockToDomain` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `deleted` smallint(5) unsigned NOT NULL DEFAULT '0',
  `TSconfig` text COLLATE utf8_unicode_ci,
  `subgroup` text COLLATE utf8_unicode_ci,
  `hide_in_lists` smallint(6) NOT NULL DEFAULT '0',
  `workspace_perms` smallint(6) NOT NULL DEFAULT '1',
  `category_perms` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Daten für Tabelle `be_groups`
--

LOCK TABLES `be_groups` WRITE;
INSERT INTO `be_groups` (`uid`, `pid`, `tstamp`, `title`, `non_exclude_fields`, `explicit_allowdeny`, `allowed_languages`, `custom_options`, `db_mountpoints`, `pagetypes_select`, `tables_select`, `tables_modify`, `crdate`, `cruser_id`, `groupMods`, `file_mountpoints`, `file_permissions`, `hidden`, `description`, `lockToDomain`, `deleted`, `TSconfig`, `subgroup`, `hide_in_lists`, `workspace_perms`, `category_perms`) VALUES
(1, 0, 1528987737, '_globalSettingsForAll', '', '', '', '', '', '', '', '', 1528987737, 1, '', '', 'readFolder,writeFolder,addFolder,renameFolder,moveFolder,deleteFolder,readFile,writeFile,addFile,renameFile,replaceFile,moveFile,copyFile,deleteFile', 0, '', '', 0, '', '', 0, 0, ''),
(2, 0, 1528987737, 'Redaktoren', 'pages_language_overlay:author,pages_language_overlay:description,pages_language_overlay:media,pages_language_overlay:author_email,pages_language_overlay:abstract,pages_language_overlay:nav_title,pages_language_overlay:tx_realurl_pathsegment,pages_language_overlay:hidden,pages_language_overlay:starttime,pages_language_overlay:keywords,pages_language_overlay:endtime,pages_language_overlay:doktype,pages_language_overlay:urltype,pages_language_overlay:subtitle,pages_language_overlay:url,pages_language_overlay:shortcut_mode,tx_news_domain_model_news:endtime,tx_news_domain_model_news:alternative_title,tx_news_domain_model_news:archive,tx_news_domain_model_news:editlock,tx_news_domain_model_news:description,tx_news_domain_model_news:author_email,tx_news_domain_model_news:content_elements,tx_news_domain_model_news:categories,tx_news_domain_model_news:fal_media,tx_news_domain_model_news:author,tx_news_domain_model_news:sys_language_uid,tx_news_domain_model_news:path_segment,tx_news_domain_model_news:keywords,tx_news_domain_model_news:tags,tx_news_domain_model_news:teaser,tx_news_domain_model_news:istopnews,tx_news_domain_model_news:l10n_parent,tx_news_domain_model_news:hidden,tx_news_domain_model_news:related_from,tx_news_domain_model_news:starttime,tx_news_domain_model_news:fe_group,tx_news_domain_model_news:fal_related_files,tx_news_domain_model_news:related_links,tx_news_domain_model_news:related,backend_layout:hidden,backend_layout:icon,sys_file_metadata:width,sys_file_metadata:height,sys_file_metadata:categories,sys_file_metadata:title,sys_file_reference:alternative,sys_file_reference:autoplay,sys_file_reference:description,sys_file_reference:crop,sys_file_reference:showinpreview,sys_file_reference:link,sys_file_reference:title,sys_file_collection:sys_language_uid,sys_file_collection:starttime,sys_file_collection:endtime,sys_file_collection:l10n_parent,sys_file_collection:hidden,sys_category:seo_title,sys_category:images,sys_category:single_pid,sys_category:seo_headline,sys_category:seo_description,sys_category:shortcut,sys_category:seo_text,sys_category:sys_language_uid,sys_category:starttime,sys_category:endtime,sys_category:l10n_parent,sys_category:hidden,tx_news_domain_model_link:description,tx_news_domain_model_link:sys_language_uid,tx_news_domain_model_link:l10n_parent,tx_news_domain_model_link:hidden,tx_news_domain_model_tag:seo_text,tx_news_domain_model_tag:seo_title,tx_news_domain_model_tag:seo_headline,tx_news_domain_model_tag:seo_description,tx_news_domain_model_tag:hidden,pages:newUntil,pages:alias,pages:fe_login_mode,pages:author,pages:backend_layout_next_level,pages:backend_layout,pages:editlock,pages:description,pages:cache_timeout,pages:cache_tags,pages:media,pages:tx_realurl_pathoverride,pages:author_email,pages:mount_pid_ol,pages:module,pages:nav_hide,pages:content_from_pid,pages:abstract,pages:extendToSubpages,pages:is_siteroot,pages:categories,pages:layout,pages:lastUpdated,pages:l18n_cfg,pages:nav_title,pages:no_cache,pages:tx_realurl_exclude,pages:no_search,pages:tx_realurl_pathsegment,pages:hidden,pages:tsconfig_includes,pages:php_tree_stop,pages:starttime,pages:keywords,pages:endtime,pages:TSconfig,pages:doktype,pages:subtitle,pages:shortcut_mode,pages:target,pages:fe_group,tt_content:space_after_class,tt_content:space_before_class,tt_content:pages,tt_content:header_position,tt_content:editlock,tt_content:uploads_description,tt_content:rowDescription,tt_content:imagewidth,tt_content:uploads_type,tt_content:date,tt_content:table_delimiter,tt_content:imageheight,tt_content:sectionIndex,tt_content:categories,tt_content:image_zoom,tt_content:layout,tt_content:header_link,tt_content:linkToTop,tt_content:imageorient,tt_content:table_header_position,tt_content:imageborder,tt_content:frame_class,tt_content:recursive,tt_content:imagecols,tt_content:colPos,tt_content:sys_language_uid,tt_content:starttime,tt_content:endtime,tt_content:table_tfoot,tt_content:table_class,tt_content:table_caption,tt_content:table_enclosure,tt_content:bullets_type,tt_content:header_layout,tt_content:subheader,tt_content:l18n_parent,tt_content:hidden,tt_content:fe_group,fe_users:address,fe_users:lockToDomain,fe_users:felogin_redirectPid,fe_users:image,fe_users:tx_extbase_type,fe_users:email,fe_users:fax,fe_users:company,fe_users:disable,fe_users:country,fe_users:lastlogin,fe_users:middle_name,fe_users:last_name,fe_users:name,fe_users:felogin_forgotHash,fe_users:zip,fe_users:city,fe_users:starttime,fe_users:endtime,fe_users:telephone,fe_users:title,fe_users:TSconfig,fe_users:first_name,fe_users:www', 'tt_content:CType:header:ALLOW,tt_content:CType:text:ALLOW,tt_content:CType:textpic:ALLOW,tt_content:CType:image:ALLOW,tt_content:CType:textmedia:ALLOW,tt_content:CType:bullets:ALLOW,tt_content:CType:table:ALLOW,tt_content:CType:uploads:ALLOW,tt_content:CType:menu_abstract:ALLOW,tt_content:CType:menu_categorized_content:ALLOW,tt_content:CType:menu_categorized_pages:ALLOW,tt_content:CType:menu_pages:ALLOW,tt_content:CType:menu_subpages:ALLOW,tt_content:CType:menu_recently_updated:ALLOW,tt_content:CType:menu_related_pages:ALLOW,tt_content:CType:menu_section:ALLOW,tt_content:CType:menu_section_pages:ALLOW,tt_content:CType:menu_sitemap:ALLOW,tt_content:CType:menu_sitemap_pages:ALLOW,tt_content:CType:shortcut:ALLOW,tt_content:CType:list:ALLOW,tt_content:CType:div:ALLOW,tt_content:CType:html:ALLOW,tt_content:CType:login:ALLOW,tt_content:CType:form_formframework:ALLOW', '', '', '1', '1,4,3', 'pages,sys_category,sys_collection,sys_file,sys_file_collection,sys_file_metadata,sys_file_reference,sys_file_storage,pages_language_overlay,tt_content,tx_news_domain_model_link,tx_news_domain_model_news,tx_news_domain_model_tag', 'pages,sys_category,sys_collection,sys_file,sys_file_collection,sys_file_metadata,sys_file_reference,sys_file_storage,pages_language_overlay,tt_content,tx_news_domain_model_link,tx_news_domain_model_news,tx_news_domain_model_tag', 1528987737, 1, 'web_layout,web_ViewpageView,web_list,web_info,web_func,web_RealurlRealurl,web_NewsTxNewsM2,file_FilelistList,user_setup,help_DocumentationDocumentation,help_CshmanualCshmanual,help_AboutAbout', '1,2', 'readFolder,writeFolder,addFolder,renameFolder,moveFolder,deleteFolder,readFile,writeFile,addFile,renameFile,replaceFile,moveFile,copyFile,deleteFile', 0, '', '', 0, '', '1', 0, 0, '');
UNLOCK TABLES;
-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `be_users`
--

DROP TABLE IF EXISTS `be_users`;
CREATE TABLE IF NOT EXISTS `be_users` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `username` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` varchar(2000) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `avatar` int(10) unsigned NOT NULL DEFAULT '0',
  `password` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `admin` smallint(5) unsigned NOT NULL DEFAULT '0',
  `usergroup` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `disable` smallint(5) unsigned NOT NULL DEFAULT '0',
  `starttime` int(10) unsigned NOT NULL DEFAULT '0',
  `endtime` int(10) unsigned NOT NULL DEFAULT '0',
  `lang` varchar(6) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(80) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `db_mountpoints` text COLLATE utf8_unicode_ci,
  `options` smallint(5) unsigned NOT NULL DEFAULT '0',
  `crdate` int(10) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(10) unsigned NOT NULL DEFAULT '0',
  `realName` varchar(80) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `userMods` text COLLATE utf8_unicode_ci,
  `allowed_languages` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `uc` mediumblob,
  `file_mountpoints` text COLLATE utf8_unicode_ci,
  `file_permissions` text COLLATE utf8_unicode_ci,
  `workspace_perms` smallint(6) NOT NULL DEFAULT '1',
  `lockToDomain` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `disableIPlock` smallint(5) unsigned NOT NULL DEFAULT '0',
  `deleted` smallint(5) unsigned NOT NULL DEFAULT '0',
  `TSconfig` text COLLATE utf8_unicode_ci,
  `lastlogin` int(10) unsigned NOT NULL DEFAULT '0',
  `createdByAction` int(11) NOT NULL DEFAULT '0',
  `usergroup_cached_list` text COLLATE utf8_unicode_ci,
  `workspace_id` int(11) NOT NULL DEFAULT '0',
  `workspace_preview` smallint(6) NOT NULL DEFAULT '1',
  `category_perms` text COLLATE utf8_unicode_ci,
  `tx_news_categorymounts` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `username` (`username`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Daten für Tabelle `be_users`
--
LOCK TABLES `be_users` WRITE;
INSERT INTO `be_users` (`uid`, `pid`, `tstamp`, `crdate`, `cruser_id`, `deleted`, `disable`, `starttime`, `endtime`, `description`, `username`, `avatar`, `password`, `admin`, `usergroup`, `lang`, `email`, `db_mountpoints`, `options`, `realName`, `userMods`, `allowed_languages`, `uc`, `file_mountpoints`, `file_permissions`, `workspace_perms`, `lockToDomain`, `disableIPlock`, `TSconfig`, `lastlogin`, `createdByAction`, `usergroup_cached_list`, `workspace_id`, `category_perms`, `tx_news_categorymounts`) VALUES
(1, 0, 1578307985, 1528987737, 1, 0, 0, 0, 0, '', 'dummy-admin', 0, '$argon2i$v=19$m=65536,t=16,p=2$Ym94TE9VQk5HdUl2cFNXTQ$Woxi9Y6kyymLuvoRgwgvJWjov4Y4urA13AEOify6+MM', 1, '', '', '', '', 0, '', '', '', 0x613a32303a7b733a31343a22696e746572666163655365747570223b733a373a226261636b656e64223b733a31303a226d6f64756c6544617461223b613a31313a7b733a31303a227765625f6c61796f7574223b613a323a7b733a383a2266756e6374696f6e223b733a313a2231223b733a383a226c616e6775616765223b733a313a2230223b7d733a383a227765625f6c697374223b613a303a7b7d733a31303a22466f726d456e67696e65223b613a323a7b693a303b613a303a7b7d693a313b733a33323a223634656434616566646563623735343039616334633865366631303762333333223b7d733a35373a225459504f335c434d535c4261636b656e645c5574696c6974795c4261636b656e645574696c6974793a3a6765745570646174655369676e616c223b613a303a7b7d733a31363a226f70656e646f63733a3a726563656e74223b613a383a7b733a33323a223634656434616566646563623735343039616334633865366631303762333333223b613a343a7b693a303b733a393a227479706f61646d696e223b693a313b613a363a7b733a343a2265646974223b613a313a7b733a383a2262655f7573657273223b613a313a7b693a323b733a343a2265646974223b7d7d733a373a2264656656616c73223b4e3b733a31323a226f7665727269646556616c73223b4e3b733a31313a22636f6c756d6e734f6e6c79223b4e3b733a363a226e6f56696577223b4e3b733a393a22776f726b7370616365223b4e3b7d693a323b733a33313a22266564697425354262655f7573657273253544253542322535443d65646974223b693a333b613a353a7b733a353a227461626c65223b733a383a2262655f7573657273223b733a333a22756964223b693a323b733a333a22706964223b693a303b733a333a22636d64223b733a343a2265646974223b733a31323a2264656c657465416363657373223b623a313b7d7d733a33323a223961303163663966333363396530376638653333396364396230393038326664223b613a343a7b693a303b733a31303a22526564616b746f72656e223b693a313b613a363a7b733a343a2265646974223b613a313a7b733a393a2262655f67726f757073223b613a313a7b693a323b733a343a2265646974223b7d7d733a373a2264656656616c73223b4e3b733a31323a226f7665727269646556616c73223b4e3b733a31313a22636f6c756d6e734f6e6c79223b4e3b733a363a226e6f56696577223b4e3b733a393a22776f726b7370616365223b4e3b7d693a323b733a33323a22266564697425354262655f67726f757073253544253542322535443d65646974223b693a333b613a353a7b733a353a227461626c65223b733a393a2262655f67726f757073223b733a333a22756964223b693a323b733a333a22706964223b693a303b733a333a22636d64223b733a343a2265646974223b733a31323a2264656c657465416363657373223b623a313b7d7d733a33323a226234303232636664386463363832613766323539326236643131323439343333223b613a343a7b693a303b733a32313a225f676c6f62616c53657474696e6773466f72416c6c223b693a313b613a363a7b733a343a2265646974223b613a313a7b733a393a2262655f67726f757073223b613a313a7b693a313b733a343a2265646974223b7d7d733a373a2264656656616c73223b4e3b733a31323a226f7665727269646556616c73223b4e3b733a31313a22636f6c756d6e734f6e6c79223b4e3b733a363a226e6f56696577223b4e3b733a393a22776f726b7370616365223b4e3b7d693a323b733a33323a22266564697425354262655f67726f757073253544253542312535443d65646974223b693a333b613a353a7b733a353a227461626c65223b733a393a2262655f67726f757073223b733a333a22756964223b693a313b733a333a22706964223b693a303b733a333a22636d64223b733a343a2265646974223b733a31323a2264656c657465416363657373223b623a313b7d7d733a33323a223839343934636130336330643731363134633230373937633337323936633561223b613a343a7b693a303b733a393a227768697465726f6f6d223b693a313b613a363a7b733a343a2265646974223b613a313a7b733a383a2262655f7573657273223b613a313a7b693a313b733a343a2265646974223b7d7d733a373a2264656656616c73223b4e3b733a31323a226f7665727269646556616c73223b4e3b733a31313a22636f6c756d6e734f6e6c79223b4e3b733a363a226e6f56696577223b4e3b733a393a22776f726b7370616365223b4e3b7d693a323b733a33313a22266564697425354262655f7573657273253544253542312535443d65646974223b693a333b613a353a7b733a353a227461626c65223b733a383a2262655f7573657273223b733a333a22756964223b693a313b733a333a22706964223b693a303b733a333a22636d64223b733a343a2265646974223b733a31323a2264656c657465416363657373223b623a313b7d7d733a33323a226163376532363433643531333430396134663832326463333835646437656432223b613a343a7b693a303b733a31343a225f636c695f7363686564756c6572223b693a313b613a363a7b733a343a2265646974223b613a313a7b733a383a2262655f7573657273223b613a313a7b693a333b733a343a2265646974223b7d7d733a373a2264656656616c73223b4e3b733a31323a226f7665727269646556616c73223b4e3b733a31313a22636f6c756d6e734f6e6c79223b4e3b733a363a226e6f56696577223b4e3b733a393a22776f726b7370616365223b4e3b7d693a323b733a33313a22266564697425354262655f7573657273253544253542332535443d65646974223b693a333b613a353a7b733a353a227461626c65223b733a383a2262655f7573657273223b733a333a22756964223b693a333b733a333a22706964223b693a303b733a333a22636d64223b733a343a2265646974223b733a31323a2264656c657465416363657373223b623a313b7d7d733a33323a226632636461303334623866646633316533306464333835636437666330383837223b613a343a7b693a303b733a363a2253747564696f223b693a313b613a363a7b733a343a2265646974223b613a313a7b733a353a227061676573223b613a313a7b693a383b733a343a2265646974223b7d7d733a373a2264656656616c73223b4e3b733a31323a226f7665727269646556616c73223b4e3b733a31313a22636f6c756d6e734f6e6c79223b4e3b733a363a226e6f56696577223b4e3b733a393a22776f726b7370616365223b4e3b7d693a323b733a32383a2226656469742535427061676573253544253542382535443d65646974223b693a333b613a353a7b733a353a227461626c65223b733a353a227061676573223b733a333a22756964223b693a383b733a333a22706964223b693a313b733a333a22636d64223b733a343a2265646974223b733a31323a2264656c657465416363657373223b623a313b7d7d733a33323a226661323062613363373763343663393635343134623566393639663138316131223b613a343a7b693a303b733a31343a22656672676874683033372e6a7067223b693a313b613a363a7b733a343a2265646974223b613a313a7b733a31373a227379735f66696c655f6d65746164617461223b613a313a7b693a37353b733a343a2265646974223b7d7d733a373a2264656656616c73223b4e3b733a31323a226f7665727269646556616c73223b4e3b733a31313a22636f6c756d6e734f6e6c79223b4e3b733a363a226e6f56696577223b4e3b733a393a22776f726b7370616365223b4e3b7d693a323b733a38383a2226656469745b7379735f66696c655f6d657461646174615d5b37355d3d656469742664656656616c733d266f7665727269646556616c733d26636f6c756d6e734f6e6c793d266e6f566965773d26776f726b73706163653d223b693a333b613a353a7b733a353a227461626c65223b733a31373a227379735f66696c655f6d65746164617461223b733a333a22756964223b693a37353b733a333a22706964223b693a303b733a333a22636d64223b733a343a2265646974223b733a31323a2264656c657465416363657373223b623a313b7d7d733a33323a226333353633346364386165343839346536343365626238393265353839353135223b613a343a7b693a303b733a343a22486f6d65223b693a313b613a363a7b733a343a2265646974223b613a313a7b733a353a227061676573223b613a313a7b693a313b733a343a2265646974223b7d7d733a373a2264656656616c73223b4e3b733a31323a226f7665727269646556616c73223b4e3b733a31313a22636f6c756d6e734f6e6c79223b4e3b733a363a226e6f56696577223b4e3b733a393a22776f726b7370616365223b4e3b7d693a323b733a37353a2226656469745b70616765735d5b315d3d656469742664656656616c733d266f7665727269646556616c733d26636f6c756d6e734f6e6c793d266e6f566965773d26776f726b73706163653d223b693a333b613a353a7b733a353a227461626c65223b733a353a227061676573223b733a333a22756964223b693a313b733a333a22706964223b693a303b733a333a22636d64223b733a343a2265646974223b733a31323a2264656c657465416363657373223b623a313b7d7d7d733a393a2266696c655f6c697374223b613a313a7b733a31353a22626967436f6e74726f6c50616e656c223b733a313a2231223b7d733a393a2274785f626575736572223b733a3533303a224f3a34303a225459504f335c434d535c4265757365725c446f6d61696e5c4d6f64656c5c4d6f64756c6544617461223a323a7b733a393a22002a0064656d616e64223b4f3a33363a225459504f335c434d535c4265757365725c446f6d61696e5c4d6f64656c5c44656d616e64223a31323a7b733a31313a22002a00757365724e616d65223b733a303a22223b733a31313a22002a007573657254797065223b693a303b733a393a22002a00737461747573223b693a303b733a393a22002a006c6f67696e73223b693a303b733a31393a22002a006261636b656e645573657247726f7570223b4e3b733a363a22002a00756964223b4e3b733a31363a22002a005f6c6f63616c697a6564556964223b4e3b733a31353a22002a005f6c616e6775616765556964223b4e3b733a31363a22002a005f76657273696f6e6564556964223b4e3b733a363a22002a00706964223b4e3b733a36313a22005459504f335c434d535c457874626173655c446f6d61696e4f626a6563745c4162737472616374446f6d61696e4f626a656374005f6973436c6f6e65223b623a303b733a36393a22005459504f335c434d535c457874626173655c446f6d61696e4f626a6563745c4162737472616374446f6d61696e4f626a656374005f636c65616e50726f70657274696573223b613a303a7b7d7d733a31383a22002a00636f6d70617265557365724c697374223b613a303a7b7d7d223b733a31333a22784d4f445f7478696d70657870223b613a313a7b733a383a2266756e6374696f6e223b733a303a22223b7d733a31323a2273797374656d5f6462696e74223b613a333a7b733a383a2266756e6374696f6e223b733a373a227265636f726473223b733a363a22736561726368223b733a333a22726177223b733a32323a227365617263685f71756572795f6d616b655175657279223b733a333a22616c6c223b7d733a34373a225459504f335c434d535c42656c6f675c436f6e74726f6c6c65725c4261636b656e644c6f67436f6e74726f6c6c6572223b733a3335333a224f3a33393a225459504f335c434d535c42656c6f675c446f6d61696e5c4d6f64656c5c436f6e73747261696e74223a31323a7b733a31343a22002a00757365724f7247726f7570223b733a313a2230223b733a393a22002a006e756d626572223b693a32303b733a31353a22002a00776f726b7370616365556964223b693a2d39393b733a31323a22002a0074696d654672616d65223b693a32303b733a393a22002a00616374696f6e223b693a303b733a31343a22002a0067726f7570427950616765223b623a303b733a31373a22002a00737461727454696d657374616d70223b693a303b733a31353a22002a00656e6454696d657374616d70223b693a303b733a31383a22002a006d616e75616c446174655374617274223b4e3b733a31373a22002a006d616e75616c4461746553746f70223b4e3b733a393a22002a00706167654964223b693a303b733a383a22002a006465707468223b693a303b7d223b733a383a227765625f696e666f223b613a313a7b733a383a2266756e6374696f6e223b733a34383a225459504f335c434d535c42656c6f675c4d6f64756c655c4261636b656e644c6f674d6f64756c65426f6f747374726170223b7d7d733a31393a227468756d626e61696c73427944656661756c74223b693a313b733a31343a22656d61696c4d6541744c6f67696e223b693a303b733a31313a2273746172744d6f64756c65223b733a31353a2268656c705f41626f757441626f7574223b733a383a227469746c654c656e223b693a35303b733a383a22656469745f525445223b733a313a2231223b733a32303a22656469745f646f634d6f64756c6555706c6f6164223b733a313a2231223b733a31353a22726573697a65546578746172656173223b693a313b733a32353a22726573697a655465787461726561735f4d6178486569676874223b693a3530303b733a32343a22726573697a655465787461726561735f466c657869626c65223b693a303b733a343a226c616e67223b733a303a22223b733a31393a2266697273744c6f67696e54696d655374616d70223b693a313532393030323832343b733a31353a226d6f64756c6553657373696f6e4944223b613a31313a7b733a31303a227765625f6c61796f7574223b733a33323a223564666566646635346434316366646130353235343330633061373233383463223b733a383a227765625f6c697374223b733a33323a223865346161623131333731623865626566633033363430373461386433343432223b733a31303a22466f726d456e67696e65223b733a33323a226562663233363431303135366361633461316236653763363166643430646231223b733a35373a225459504f335c434d535c4261636b656e645c5574696c6974795c4261636b656e645574696c6974793a3a6765745570646174655369676e616c223b733a33323a226562663233363431303135366361633461316236653763363166643430646231223b733a31363a226f70656e646f63733a3a726563656e74223b733a33323a226562663233363431303135366361633461316236653763363166643430646231223b733a393a2266696c655f6c697374223b733a33323a223137363639373961633266643231353435353965623936316138633336653636223b733a393a2274785f626575736572223b733a33323a226562663233363431303135366361633461316236653763363166643430646231223b733a31333a22784d4f445f7478696d70657870223b733a33323a226165313133656631353036636335646664383335346364623230306631326637223b733a31323a2273797374656d5f6462696e74223b733a33323a223863326634626666373831666337313436633231653131366665356161643132223b733a34373a225459504f335c434d535c42656c6f675c436f6e74726f6c6c65725c4261636b656e644c6f67436f6e74726f6c6c6572223b733a33323a223735363034623165373162616239626666633038343634613730656431643663223b733a383a227765625f696e666f223b733a33323a226537653635636139313833313037323731306636613661653432303732343166223b7d733a31373a224261636b656e64436f6d706f6e656e7473223b613a313a7b733a363a22537461746573223b613a313a7b733a383a225061676574726565223b613a313a7b733a393a22737461746548617368223b613a31313a7b693a303b733a313a2231223b693a313b733a313a2231223b693a323b733a313a2231223b693a333b733a313a2231223b693a343b733a313a2231223b693a353b733a313a2231223b693a363b733a313a2231223b693a373b733a313a2231223b733a343a22726f6f74223b733a313a2231223b733a31363a226c61737453656c65637465644e6f6465223b733a323a227038223b733a333a22305f31223b733a313a2231223b7d7d7d7d733a31313a2262726f7773655472656573223b613a313a7b733a363a22666f6c646572223b733a38333a22613a313a7b693a32353231383b613a343a7b693a36323832323732343b693a313b693a3138323038373535353b693a313b693a3230393836303834393b693a313b693a3131363036373639343b693a313b7d7d223b7d733a31343a22696e64657865645f736561726368223b613a323a7b733a363a22616374696f6e223b733a353a22696e646578223b733a393a22617267756d656e7473223b613a323a7b733a363a22616374696f6e223b733a353a22696e646578223b733a31303a22636f6e74726f6c6c6572223b733a31343a2241646d696e697374726174696f6e223b7d7d733a31303a22696e6c696e6556696577223b733a3134333a22613a323a7b733a353a227061676573223b613a313a7b693a313b613a313a7b733a31383a227379735f66696c655f7265666572656e6365223b613a313a7b693a353b733a303a22223b7d7d7d733a343a2273697465223b613a313a7b693a313b613a313a7b733a31333a22736974655f6c616e6775616765223b613a313a7b693a323b733a313a2230223b7d7d7d7d223b733a31373a2273797374656d696e666f726d6174696f6e223b733a34353a227b2273797374656d5f42656c6f674c6f67223a7b226c617374416363657373223a313537373732313632307d7d223b733a373a227265706f727473223b613a313a7b733a393a2273656c656374696f6e223b613a323a7b733a393a22657874656e73696f6e223b733a31303a2274785f7265706f727473223b733a363a227265706f7274223b733a363a22737461747573223b7d7d7d, '', 'readFolder,writeFolder,addFolder,renameFolder,moveFolder,deleteFolder,readFile,writeFile,addFile,renameFile,replaceFile,moveFile,copyFile,deleteFile', 1, '', 0, NULL, 1578308090, 0, NULL, 0, '', ''),
(2, 0, 1578307372, 1528987737, 1, 0, 0, 0, 0, '', 'clientuser', 0, '$argon2i$v=19$m=65536,t=16,p=2$TGtreUZnY2lHSlJmMkdYRg$0bv3W234NX1GKkVZhYi6rCbyDbHzT9b5Ikbs8e9h86A', 0, '2', 'de', '', '', 3, '', '', '', 0x613a31383a7b733a31343a22696e746572666163655365747570223b733a303a22223b733a31303a226d6f64756c6544617461223b613a323a7b733a31303a227765625f6c61796f7574223b613a323a7b733a383a2266756e6374696f6e223b733a313a2231223b733a383a226c616e6775616765223b733a313a2230223b7d733a393a2266696c655f6c697374223b613a303a7b7d7d733a31393a227468756d626e61696c73427944656661756c74223b693a313b733a31343a22656d61696c4d6541744c6f67696e223b693a303b733a31313a2273746172744d6f64756c65223b733a31353a2268656c705f41626f757441626f7574223b733a383a227469746c654c656e223b693a35303b733a383a22656469745f525445223b733a313a2231223b733a32303a22656469745f646f634d6f64756c6555706c6f6164223b733a313a2231223b733a31353a22726573697a65546578746172656173223b693a313b733a32353a22726573697a655465787461726561735f4d6178486569676874223b693a3530303b733a32343a22726573697a655465787461726561735f466c657869626c65223b693a303b733a31333a22636f6e64656e7365644d6f6465223b733a313a2230223b733a31323a22657874656e64656456696577223b733a313a2231223b733a32323a22727465436c65616e50617374654265686176696f7572223b733a393a22706c61696e54657874223b733a343a226c616e67223b733a323a226465223b733a31393a2266697273744c6f67696e54696d655374616d70223b693a313532393439343830353b733a31353a226d6f64756c6553657373696f6e4944223b613a323a7b733a31303a227765625f6c61796f7574223b733a33323a223865346161623131333731623865626566633033363430373461386433343432223b733a393a2266696c655f6c697374223b733a33323a223865346161623131333731623865626566633033363430373461386433343432223b7d733a31373a224261636b656e64436f6d706f6e656e7473223b613a313a7b733a363a22537461746573223b613a313a7b733a383a225061676574726565223b613a313a7b733a393a22737461746548617368223b613a323a7b693a303b733a313a2231223b733a343a22726f6f74223b733a313a2231223b7d7d7d7d7d, '', 'readFolder,writeFolder,addFolder,renameFolder,moveFolder,deleteFolder,readFile,writeFile,addFile,renameFile,replaceFile,moveFile,copyFile,deleteFile', 1, '', 0, '', 0, 0, '1,2', 0, '', ''),
(3, 0, 1578307462, 1528987737, 1, 0, 0, 0, 0, '', '_cli_scheduler', 0, '$argon2i$v=19$m=65536,t=16,p=2$bTBJbWljU3FVb2FPZXkyUw$zsMK+nsQ5cMCFfjhV/6h6NtIOZJfagg+S7dEVtIOaNk', 0, '', 'de', '', '', 3, '', '', '', NULL, '', 'readFolder,writeFolder,addFolder,renameFolder,moveFolder,deleteFolder,readFile,writeFile,addFile,renameFile,replaceFile,moveFile,copyFile,deleteFile', 1, '', 0, NULL, 0, 0, NULL, 0, '', '');

UNLOCK TABLES;
-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `pages`
--

DROP TABLE IF EXISTS `pages`;
CREATE TABLE IF NOT EXISTS `pages` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `t3ver_state` smallint(6) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `sorting` int(10) unsigned NOT NULL DEFAULT '0',
  `deleted` smallint(5) unsigned NOT NULL DEFAULT '0',
  `perms_userid` int(10) unsigned NOT NULL DEFAULT '0',
  `perms_groupid` int(10) unsigned NOT NULL DEFAULT '0',
  `perms_user` smallint(5) unsigned NOT NULL DEFAULT '0',
  `perms_group` smallint(5) unsigned NOT NULL DEFAULT '0',
  `perms_everybody` smallint(5) unsigned NOT NULL DEFAULT '0',
  `editlock` smallint(5) unsigned NOT NULL DEFAULT '0',
  `crdate` int(10) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(10) unsigned NOT NULL DEFAULT '0',
  `hidden` smallint(5) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `doktype` int(10) unsigned NOT NULL DEFAULT '0',
  `TSconfig` text COLLATE utf8_unicode_ci,
  `is_siteroot` smallint(6) NOT NULL DEFAULT '0',
  `php_tree_stop` smallint(6) NOT NULL DEFAULT '0',
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `starttime` int(10) unsigned NOT NULL DEFAULT '0',
  `endtime` int(10) unsigned NOT NULL DEFAULT '0',
  `urltype` smallint(5) unsigned NOT NULL DEFAULT '0',
  `shortcut` int(10) unsigned NOT NULL DEFAULT '0',
  `shortcut_mode` int(10) unsigned NOT NULL DEFAULT '0',
  `no_cache` int(10) unsigned NOT NULL DEFAULT '0',
  `fe_group` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `subtitle` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `layout` int(10) unsigned NOT NULL DEFAULT '0',
  `target` varchar(80) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `media` int(10) unsigned NOT NULL DEFAULT '0',
  `lastUpdated` int(10) unsigned NOT NULL DEFAULT '0',
  `keywords` text COLLATE utf8_unicode_ci,
  `cache_timeout` int(10) unsigned NOT NULL DEFAULT '0',
  `cache_tags` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `newUntil` int(10) unsigned NOT NULL DEFAULT '0',
  `description` text COLLATE utf8_unicode_ci,
  `no_search` smallint(5) unsigned NOT NULL DEFAULT '0',
  `SYS_LASTCHANGED` int(10) unsigned NOT NULL DEFAULT '0',
  `abstract` text COLLATE utf8_unicode_ci,
  `module` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `extendToSubpages` smallint(5) unsigned NOT NULL DEFAULT '0',
  `author` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `author_email` varchar(80) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `nav_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `nav_hide` smallint(6) NOT NULL DEFAULT '0',
  `content_from_pid` int(10) unsigned NOT NULL DEFAULT '0',
  `mount_pid` int(10) unsigned NOT NULL DEFAULT '0',
  `mount_pid_ol` smallint(6) NOT NULL DEFAULT '0',
  `alias` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `l18n_cfg` smallint(6) NOT NULL DEFAULT '0',
  `fe_login_mode` smallint(6) NOT NULL DEFAULT '0',
  `backend_layout` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `backend_layout_next_level` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tsconfig_includes` text COLLATE utf8_unicode_ci,
  `tx_impexp_origuid` int(11) NOT NULL DEFAULT '0',
  `categories` int(11) NOT NULL DEFAULT '0',
  `tx_realurl_pathsegment` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tx_realurl_pathoverride` int(11) NOT NULL DEFAULT '0',
  `tx_realurl_exclude` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`),
  KEY `parent` (`pid`,`deleted`,`sorting`),
  KEY `alias` (`alias`),
  KEY `determineSiteRoot` (`is_siteroot`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=12 ;

--
-- Daten für Tabelle `pages`
--
LOCK TABLES `pages` WRITE;
INSERT INTO `pages` (`uid`, `pid`, `t3ver_oid`, `t3ver_id`, `t3ver_wsid`, `t3ver_label`, `t3ver_state`, `t3ver_stage`, `t3ver_count`, `t3ver_tstamp`, `t3ver_move_id`, `t3_origuid`, `tstamp`, `sorting`, `deleted`, `perms_userid`, `perms_groupid`, `perms_user`, `perms_group`, `perms_everybody`, `editlock`, `crdate`, `cruser_id`, `hidden`, `title`, `doktype`, `TSconfig`, `is_siteroot`, `php_tree_stop`, `url`, `starttime`, `endtime`, `urltype`, `shortcut`, `shortcut_mode`, `no_cache`, `fe_group`, `subtitle`, `layout`, `target`, `media`, `lastUpdated`, `keywords`, `cache_timeout`, `cache_tags`, `newUntil`, `description`, `no_search`, `SYS_LASTCHANGED`, `abstract`, `module`, `extendToSubpages`, `author`, `author_email`, `nav_title`, `nav_hide`, `content_from_pid`, `mount_pid`, `mount_pid_ol`, `alias`, `l18n_cfg`, `fe_login_mode`, `backend_layout`, `backend_layout_next_level`, `tsconfig_includes`, `tx_impexp_origuid`, `categories`, `tx_realurl_pathsegment`, `tx_realurl_pathoverride`, `tx_realurl_exclude`) VALUES
(1, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1528987737, 256, 0, 1, 1, 31, 31, 0, 0, 1528987737, 1, 0, 'Home', 1, '', 1, 0, '', 0, 0, 1, 0, 0, 0, '', 'Persönliche Beratung, individuelle Lösungen, sorgfältige Ausführung', 0, '', 6, 0, NULL, 0, '', 0, NULL, 0, 1528987737, NULL, '', 0, '', '', '', 0, 0, 0, 0, '', 0, 0, 'pagets__1', 'pagets__2', '', 1, 0, '', 0, 0),
(2, 1, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1528987737, 256, 0, 1, 1, 31, 27, 0, 0, 1528987737, 1, 0, 'News', 254, '', 0, 0, '', 0, 0, 1, 0, 0, 0, '', '', 0, '', 0, 0, NULL, 0, '', 0, NULL, 0, 0, NULL, 'news', 0, '', '', '', 0, 0, 0, 0, '', 0, 0, '', '', '', 2, 0, '', 0, 0),
(3, 1, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1528987737, 128, 0, 1, 1, 31, 27, 0, 0, 1528987737, 1, 0, 'Meta Navigation (Utilities)', 254, NULL, 0, 0, '', 0, 0, 1, 0, 0, 0, '', '', 0, '', 0, 0, NULL, 0, '', 0, NULL, 0, 0, NULL, '', 0, '', '', '', 0, 0, 0, 0, '', 0, 0, '', '', '', 3, 0, '', 0, 0),
(4, 1, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1528987737, 64, 0, 1, 1, 31, 27, 0, 0, 1528987737, 1, 0, 'Kontakt', 1, '', 0, 0, '', 0, 0, 1, 0, 0, 0, '', '', 0, '', 0, 0, '', 0, '', 0, '', 0, 1528987737, '', '', 0, '', '', '', 0, 0, 0, 0, '', 0, 0, '', '', '', 4, 0, '', 0, 1),
(5, 1, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1528987737, 32, 0, 1, 1, 31, 31, 0, 0, 1528987737, 1, 0, 'Wettbewerbe', 1, NULL, 0, 0, '', 0, 0, 1, 0, 0, 0, '', 'Proche a l''académie royale des sciences de Berlin et l''Institution Smithsonnienne de Washington', 0, '', 0, 0, NULL, 0, '', 0, NULL, 0, 1528987737, NULL, '', 0, '', '', '', 0, 0, 0, 0, '', 0, 0, '', '', '', 5, 0, '', 0, 0),
(6, 1, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1528987737, 16, 0, 1, 1, 31, 31, 0, 0, 1528987737, 1, 0, 'Portfolio', 1, '', 0, 0, '', 0, 0, 1, 0, 0, 0, '', 'Sort of earthenware for my use', 0, '', 0, 0, NULL, 0, '', 0, NULL, 0, 1528992375, NULL, '', 0, '', '', '', 0, 0, 0, 0, '', 0, 0, '', '', '', 6, 0, '', 0, 0),
(7, 1, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1528987737, 8, 0, 1, 1, 31, 31, 0, 0, 1528987737, 1, 0, 'Fotografien', 1, NULL, 0, 0, '', 0, 0, 1, 0, 0, 0, '', 'Les canards eurent là une belle occasion de pondre des oeufs de toute couleur', 0, '', 0, 0, NULL, 0, '', 0, NULL, 0, 1528987737, NULL, '', 0, '', '', '', 0, 0, 0, 0, '', 0, 0, '', '', '', 7, 0, '', 0, 0),
(8, 1, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1528987737, 4, 0, 1, 1, 31, 31, 0, 0, 1528987737, 1, 0, 'Studio', 1, NULL, 0, 0, '', 0, 0, 1, 0, 0, 0, '', 'Untertitel der aktuellen Seite, mit maximal 255 Zeichen, da hat es durchaus Platz zum Schreiben, auch auf drei Zeilen.', 0, '', 0, 0, NULL, 0, '', 0, NULL, 0, 1528987737, NULL, '', 0, '', '', '', 0, 0, 0, 0, '', 0, 0, '', '', '', 8, 0, '', 0, 0),
(9, 8, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1528987737, 256, 0, 1, 1, 31, 31, 0, 0, 1528987737, 1, 0, 'Specification', 1, NULL, 0, 0, '', 0, 0, 1, 0, 0, 0, '', 'Sprache ist Praxis. Sprache an sich existiert nicht', 0, '', 0, 0, NULL, 0, '', 0, NULL, 0, 1528987737, NULL, '', 0, '', '', '', 0, 0, 0, 0, '', 0, 0, '', '', '', 9, 0, '', 0, 0),
(10, 8, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1528987737, 128, 0, 1, 1, 31, 31, 0, 0, 1528987737, 1, 0, 'Catalogue', 1, NULL, 0, 0, '', 0, 0, 1, 0, 0, 0, '', 'Zum Beispiel der Reiseführer für Inseln und ein Exemplar von «Die unglaublichen Abenteuer von Kavalier & Clay»', 0, '', 0, 0, NULL, 0, '', 0, NULL, 0, 1528987737, NULL, '', 0, '', '', '', 0, 0, 0, 0, '', 0, 0, '', '', '', 10, 0, '', 0, 0),
(11, 8, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1528987737, 64, 0, 1, 1, 31, 31, 0, 0, 1528987737, 1, 0, 'Download', 1, NULL, 0, 0, '', 0, 0, 1, 0, 0, 0, '', '', 0, '', 0, 0, NULL, 0, '', 0, NULL, 0, 1528987737, NULL, '', 0, '', '', '', 0, 0, 0, 0, '', 0, 0, '', '', '', 11, 0, '', 0, 0);

UNLOCK TABLES;
-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `sys_category`
--

DROP TABLE IF EXISTS `sys_category`;
CREATE TABLE IF NOT EXISTS `sys_category` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `crdate` int(11) NOT NULL DEFAULT '0',
  `cruser_id` int(11) NOT NULL DEFAULT '0',
  `deleted` smallint(6) NOT NULL DEFAULT '0',
  `hidden` smallint(6) NOT NULL DEFAULT '0',
  `starttime` int(10) unsigned NOT NULL DEFAULT '0',
  `endtime` int(10) unsigned NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `t3ver_state` smallint(6) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `sorting` int(10) unsigned NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `l10n_parent` int(11) NOT NULL DEFAULT '0',
  `l10n_diffsource` mediumblob,
  `title` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `parent` int(11) NOT NULL DEFAULT '0',
  `items` int(11) NOT NULL DEFAULT '0',
  `l10n_state` text COLLATE utf8_unicode_ci,
  `fe_group` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `images` int(10) unsigned DEFAULT '0',
  `single_pid` int(10) unsigned NOT NULL DEFAULT '0',
  `shortcut` int(11) NOT NULL DEFAULT '0',
  `import_id` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `import_source` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `seo_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `seo_description` text COLLATE utf8_unicode_ci,
  `seo_headline` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `seo_text` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`uid`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`),
  KEY `category_parent` (`parent`),
  KEY `category_list` (`pid`,`deleted`,`sys_language_uid`),
  KEY `import` (`import_id`,`import_source`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Daten für Tabelle `sys_category`
--
LOCK TABLES `sys_category` WRITE;
INSERT INTO `sys_category` (`uid`, `pid`, `tstamp`, `crdate`, `cruser_id`, `deleted`, `hidden`, `starttime`, `endtime`, `t3ver_oid`, `t3ver_id`, `t3ver_wsid`, `t3ver_label`, `t3ver_state`, `t3ver_stage`, `t3ver_count`, `t3ver_tstamp`, `t3ver_move_id`, `t3_origuid`, `sorting`, `sys_language_uid`, `l10n_parent`, `l10n_diffsource`, `title`, `description`, `parent`, `items`, `l10n_state`, `fe_group`, `images`, `single_pid`, `shortcut`, `import_id`, `import_source`, `seo_title`, `seo_description`, `seo_headline`, `seo_text`) VALUES
(1, 0, 1528987737, 1528987737, 1, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 256, 0, 0, 0x613a313a7b733a353a226974656d73223b4e3b7d, 'Portfolio', '', 0, 3, NULL, '0', 0, 0, 0, '', '', '', '', '', ''),
(2, 0, 1528987737, 1528987737, 1, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 128, 0, 0, 0x613a313a7b733a353a226974656d73223b4e3b7d, 'Projekte', '', 0, 6, NULL, '0', 0, 0, 0, '', '', '', '', '', ''),
(3, 0, 1528987737, 1528987737, 1, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 64, 0, 0, 0x613a313a7b733a353a226974656d73223b4e3b7d, 'Exhibitions', '', 0, 2, NULL, '0', 0, 0, 0, '', '', '', '', '', '');

UNLOCK TABLES;
-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `sys_category_record_mm`
--

DROP TABLE IF EXISTS `sys_category_record_mm`;
CREATE TABLE IF NOT EXISTS `sys_category_record_mm` (
  `uid_local` int(11) NOT NULL DEFAULT '0',
  `uid_foreign` int(11) NOT NULL DEFAULT '0',
  `tablenames` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `fieldname` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `sorting` int(11) NOT NULL DEFAULT '0',
  `sorting_foreign` int(11) NOT NULL DEFAULT '0',
  KEY `uid_local_foreign` (`uid_local`,`uid_foreign`),
  KEY `uid_foreign_tablefield` (`uid_foreign`,`tablenames`(40),`fieldname`(3),`sorting_foreign`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Daten für Tabelle `sys_category_record_mm`
--
LOCK TABLES `sys_category_record_mm` WRITE;
INSERT INTO `sys_category_record_mm` (`uid_local`, `uid_foreign`, `tablenames`, `fieldname`, `sorting`, `sorting_foreign`) VALUES
(1, 4, 'tx_news_domain_model_news', 'categories', 2, 1),
(1, 5, 'tx_news_domain_model_news', 'categories', 1, 1),
(2, 9, 'tx_news_domain_model_news', 'categories', 1, 1),
(3, 7, 'tx_news_domain_model_news', 'categories', 1, 0),
(3, 3, 'tx_news_domain_model_news', 'categories', 2, 0),
(2, 8, 'tx_news_domain_model_news', 'categories', 2, 0),
(2, 6, 'tx_news_domain_model_news', 'categories', 3, 0),
(2, 2, 'tx_news_domain_model_news', 'categories', 4, 0),
(2, 1, 'tx_news_domain_model_news', 'categories', 5, 0),
(2, 10, 'tx_news_domain_model_news', 'categories', 6, 0),
(1, 9, 'tx_news_domain_model_news', 'categories', 3, 0);

UNLOCK TABLES;
-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `sys_file`
--

DROP TABLE IF EXISTS `sys_file`;
CREATE TABLE IF NOT EXISTS `sys_file` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `last_indexed` int(11) NOT NULL DEFAULT '0',
  `missing` smallint(6) NOT NULL DEFAULT '0',
  `storage` int(11) NOT NULL DEFAULT '0',
  `type` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `metadata` int(11) NOT NULL DEFAULT '0',
  `identifier` text COLLATE utf8_unicode_ci,
  `identifier_hash` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `folder_hash` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `extension` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `mime_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `name` tinytext COLLATE utf8_unicode_ci,
  `sha1` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `size` bigint(20) unsigned NOT NULL DEFAULT '0',
  `creation_date` int(11) NOT NULL DEFAULT '0',
  `modification_date` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `sel01` (`storage`,`identifier_hash`),
  KEY `folder` (`storage`,`folder_hash`),
  KEY `tstamp` (`tstamp`),
  KEY `lastindex` (`last_indexed`),
  KEY `sha1` (`sha1`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=35 ;

--
-- Daten für Tabelle `sys_file`
--
LOCK TABLES `sys_file` WRITE;
INSERT INTO `sys_file` (`uid`, `pid`, `tstamp`, `last_indexed`, `missing`, `storage`, `type`, `metadata`, `identifier`, `identifier_hash`, `folder_hash`, `extension`, `mime_type`, `name`, `sha1`, `size`, `creation_date`, `modification_date`) VALUES
(1, 0, 1528987771, 1528987771, 0, 1, '2', 0, '/generic_lib/Resources/Public/Images/Portfolio/2314546jd.jpg', '92afeaad8680bf2405cbfba0d71b8b93c94db814', '896d7f05a864a46ab40b8ed89448cadd999c7c57', 'jpg', 'image/jpeg', '2314546jd.jpg', '109dde2c64b9591996d7ee5700c090b71b3ec55a', 950045, 1528987771, 1528987771),
(2, 0, 1528987771, 1528987771, 0, 1, '2', 0, '/generic_lib/Resources/Public/Images/Portfolio/28dfgdhjmg5670.jpg', 'f1773e5abea6fce168a6f53de95398f45a3f4558', '896d7f05a864a46ab40b8ed89448cadd999c7c57', 'jpg', 'image/jpeg', '28dfgdhjmg5670.jpg', 'ed3f3c8cea659d88f9cfada480d863f28df1a1f9', 187566, 1528987771, 1528987771),
(3, 0, 1528987771, 1528987771, 0, 1, '2', 0, '/generic_lib/Resources/Public/Images/Portfolio/41vua43dzpl.jpg', 'd742a6053489d864992a1925b8e04fecd10e22cf', '896d7f05a864a46ab40b8ed89448cadd999c7c57', 'jpg', 'image/jpeg', '41vua43dzpl.jpg', '0d4a955efab50991a3cd7e9fd77d15d492655b5d', 24641, 1528987771, 1528987771),
(4, 0, 1528987771, 1528987771, 0, 1, '2', 0, '/generic_lib/Resources/Public/Images/Portfolio/a35462760572_l.jpg', '0b9dc03ccf8f10010dc793a72433fce51a2b1cd8', '896d7f05a864a46ab40b8ed89448cadd999c7c57', 'jpg', 'image/jpeg', 'a35462760572_l.jpg', 'c0946781409bee1f69e76256e36030237f017b02', 1020263, 1528987771, 1528987771),
(5, 0, 1528987771, 1528987772, 0, 1, '2', 0, '/generic_lib/Resources/Public/Images/Portfolio/a823745685934z7.jpg', '25ee1661b447854e146fa5425e79f6773fd6d75a', '896d7f05a864a46ab40b8ed89448cadd999c7c57', 'jpg', 'image/jpeg', 'a823745685934z7.jpg', 'ff172121e42a97d044f542d193adeba62a4e796e', 106621, 1528987771, 1528987771),
(6, 0, 1528987772, 1528987772, 0, 1, '2', 0, '/generic_lib/Resources/Public/Images/Portfolio/b455b5cd8a875ce1e3408c3f0.jpg', 'aae9f296f0a078f0dc6fdfbe637c47a34355b501', '896d7f05a864a46ab40b8ed89448cadd999c7c57', 'jpg', 'image/jpeg', 'b455b5cd8a875ce1e3408c3f0.jpg', '0446e6bff7244362cc9e9a6e5786107f42cbc799', 324537, 1528987772, 1528987772),
(7, 0, 1528987772, 1528987772, 0, 1, '2', 0, '/generic_lib/Resources/Public/Images/Portfolio/d44657879809p.jpg', 'd60040b0b90121e220179795126b312e2ab4056d', '896d7f05a864a46ab40b8ed89448cadd999c7c57', 'jpg', 'image/jpeg', 'd44657879809p.jpg', 'd5438dd0dbf9faf445b6add264c3bd7a808f75dc', 315739, 1528987772, 1528987772),
(8, 0, 1528987772, 1528987772, 0, 1, '2', 0, '/generic_lib/Resources/Public/Images/Portfolio/dc6a01817d4031337661b9c50b1.jpg', 'ae5b34bd073124d4f0b703a9d90c2cb50ac2b493', '896d7f05a864a46ab40b8ed89448cadd999c7c57', 'jpg', 'image/jpeg', 'dc6a01817d4031337661b9c50b1.jpg', 'f796ab9d90163b3c99c7ecb0ee7cba267f32da59', 856415, 1528987772, 1528987772),
(9, 0, 1528987772, 1528987772, 0, 1, '2', 0, '/generic_lib/Resources/Public/Images/Portfolio/efrghth037.jpg', '65b42c2bb41dc50609395584ce125c2343af53cb', '896d7f05a864a46ab40b8ed89448cadd999c7c57', 'jpg', 'image/jpeg', 'efrghth037.jpg', 'ea7aaa8c118acc405916e9420bf38217fb899c5c', 937984, 1528987772, 1528987772),
(10, 0, 1528987772, 1528987772, 0, 1, '2', 0, '/generic_lib/Resources/Public/Images/Portfolio/h123457538298474z7.jpg', '687b7bf40f62848c7c0d8009e7a7b0d794ab28b1', '896d7f05a864a46ab40b8ed89448cadd999c7c57', 'jpg', 'image/jpeg', 'h123457538298474z7.jpg', 'e5d8ec334d66951c739e97c8671f0ec3f418b7f5', 396319, 1528987772, 1528987772),
(11, 0, 1528987772, 1528987772, 0, 1, '2', 0, '/generic_lib/Resources/Public/Images/Portfolio/h263475896a.jpg', '9178dfb6a52c1bc1c7202aecd3ac72b030c4c158', '896d7f05a864a46ab40b8ed89448cadd999c7c57', 'jpg', 'image/jpeg', 'h263475896a.jpg', '16ffd4b8a5e24196cd12028d56c943e1cca84585', 454853, 1528987772, 1528987772),
(12, 0, 1528987772, 1528987772, 0, 1, '2', 0, '/generic_lib/Resources/Public/Images/Portfolio/h92345894834929346535u9.jpg', '58349c2c9c984474ceae8d21f5be8433a613bcdb', '896d7f05a864a46ab40b8ed89448cadd999c7c57', 'jpg', 'image/jpeg', 'h92345894834929346535u9.jpg', 'd3ceefa197229fce5cca38590627e4888e800dd0', 793090, 1528987772, 1528987772),
(13, 0, 1528987772, 1528987772, 0, 1, '2', 0, '/generic_lib/Resources/Public/Images/icon.png', '3856acdb971d2a35eed47468c5e3907d4ed07102', 'c79857e2faad3376320bcf89e64393cbecc62c15', 'png', 'image/png', 'icon.png', '26aadb6abcc651d7e8267966ba545273a20eaebf', 11168, 1528987772, 1528987772),
(14, 0, 1528987772, 0, 0, 1, '0', 0, '/user_upload/index.html', 'c25533f303185517ca3e1e24b215d53aa74076d2', '19669f1e02c2f16705ec7587044c66443be70725', 'html', 'inode/x-empty', 'index.html', 'da39a3ee5e6b4b0d3255bfef95601890afd80709', 0, 1528987356, 1528987356),
(15, 0, 1528987772, 1528987772, 0, 1, '2', 0, '/generic_lib/Resources/Public/Images/Portfolio/j362737348439z3.jpg', 'bfe94249a12c76f828f35bdfb8f99145db384d3f', '896d7f05a864a46ab40b8ed89448cadd999c7c57', 'jpg', 'image/jpeg', 'j362737348439z3.jpg', '94052954ade53050e8abe51b97d3933d1c762da2', 366407, 1528987772, 1528987772),
(16, 0, 1528987772, 1528987772, 0, 1, '2', 0, '/generic_lib/Resources/Public/Images/Portfolio/k12934482919238746z8.jpg', 'cde3bb18101186ca174dd54148bcec68e134206f', '896d7f05a864a46ab40b8ed89448cadd999c7c57', 'jpg', 'image/jpeg', 'k12934482919238746z8.jpg', '52aa3a23270a873c7f4324e4139c81f2b6a005b6', 543971, 1528987772, 1528987772),
(17, 0, 1528987772, 1528987772, 0, 1, '2', 0, '/generic_lib/Resources/Public/Images/Portfolio/k2384475382984z3.jpg', 'c095f3815cf58229628f946b6a5a909c0ba0df38', '896d7f05a864a46ab40b8ed89448cadd999c7c57', 'jpg', 'image/jpeg', 'k2384475382984z3.jpg', '64571da7e454e19b3c6797324f9e8d061708b45e', 497213, 1528987772, 1528987772),
(18, 0, 1528987772, 1528987772, 0, 1, '2', 0, '/generic_lib/Resources/Public/Images/Portfolio/k92435846753482p9.jpg', '4050094cf8c01436c2f27359cb0476c2dafecf53', '896d7f05a864a46ab40b8ed89448cadd999c7c57', 'jpg', 'image/jpeg', 'k92435846753482p9.jpg', '81d2fb8c4fd304d859947ccbe630af85b8eddaaa', 155575, 1528987772, 1528987772),
(19, 0, 1528987772, 1528987772, 0, 1, '2', 0, '/generic_lib/Resources/Public/Images/Portfolio/k9982374637128z5.jpg', '48d7dfa4297ec240dcd40c6cffe60e0972f77ef2', '896d7f05a864a46ab40b8ed89448cadd999c7c57', 'jpg', 'image/jpeg', 'k9982374637128z5.jpg', '7fd9b88de14a7197b055f727edb39c153113e5b7', 751792, 1528987772, 1528987772),
(20, 0, 1528987772, 1528987773, 0, 1, '2', 0, '/generic_lib/Resources/Public/Images/Portfolio/m34z4765432.jpg', 'e3c40ac71625922446cae8468be85307f220fb13', '896d7f05a864a46ab40b8ed89448cadd999c7c57', 'jpg', 'image/jpeg', 'm34z4765432.jpg', 'f76b150b21b156a6b8a76f2550e36d8f294ce43f', 238468, 1528987772, 1528987772),
(21, 0, 1528987773, 1528987773, 0, 1, '2', 0, '/generic_lib/Resources/Public/Images/Portfolio/o93930348pp06.jpg', '3b517224b17078cb5dd76b917068b0fec30f4b4c', '896d7f05a864a46ab40b8ed89448cadd999c7c57', 'jpg', 'image/jpeg', 'o93930348pp06.jpg', 'fdd18a905a26c1d795e749e9fc41b317be55c93c', 276963, 1528987773, 1528987773),
(22, 0, 1528987773, 1528987773, 0, 1, '2', 0, '/generic_lib/Resources/Public/Images/Portfolio/p0697857436215d.jpg', 'bf87aad922b5f8e6d75d5087e2d6c2bd1cd665e2', '896d7f05a864a46ab40b8ed89448cadd999c7c57', 'jpg', 'image/jpeg', 'p0697857436215d.jpg', 'eff2052b177d23f44849bc5f44ecf0c1e1294775', 394182, 1528987773, 1528987773),
(23, 0, 1528987773, 1528987773, 0, 1, '2', 0, '/generic_lib/Resources/Public/Images/Portfolio/p123456543j.jpg', '4d3693d04fe4f33ebd3e42e969ed1640d26a17e8', '896d7f05a864a46ab40b8ed89448cadd999c7c57', 'jpg', 'image/jpeg', 'p123456543j.jpg', '5d5a4b42061bcbf5000dc59ee8b5741f0a5b314e', 325324, 1528987773, 1528987773),
(24, 0, 1528987773, 1528987773, 0, 1, '2', 0, '/generic_lib/Resources/Public/Images/Portfolio/p12345j.jpg', 'b8884fb501b5e477b46b22bd6bf72281cd204da6', '896d7f05a864a46ab40b8ed89448cadd999c7c57', 'jpg', 'image/jpeg', 'p12345j.jpg', '3b2be95e5ae22777a159999d035f80e36dc1f4a5', 209884, 1528987773, 1528987773),
(25, 0, 1528987773, 1528987773, 0, 1, '2', 0, '/generic_lib/Resources/Public/Images/Portfolio/p234637281n.jpg', '47cfafd453ac9c4bb7cad847b49f611e0dd35b2e', '896d7f05a864a46ab40b8ed89448cadd999c7c57', 'jpg', 'image/jpeg', 'p234637281n.jpg', '6324f83a5975f2932f455483ac8e568a689f2c87', 395625, 1528987773, 1528987773),
(26, 0, 1528987773, 1528987773, 0, 1, '2', 0, '/generic_lib/Resources/Public/Images/Portfolio/q3249560965z8.jpg', '47786e872ed5a169e273141c8da78877112d2dce', '896d7f05a864a46ab40b8ed89448cadd999c7c57', 'jpg', 'image/jpeg', 'q3249560965z8.jpg', 'b1a8b2d04429804f5939b97c8cec2869be6a749a', 168871, 1528987773, 1528987773),
(27, 0, 1528987773, 1528987773, 0, 1, '2', 0, '/generic_lib/Resources/Public/Images/Portfolio/q3456440395h7.jpg', '34183f87585664f2b6b9caf126d0796a8e4fe0b3', '896d7f05a864a46ab40b8ed89448cadd999c7c57', 'jpg', 'image/jpeg', 'q3456440395h7.jpg', '7547e2992a0a53f012f8f3202b1827fe1d87d8a9', 516290, 1528987773, 1528987773),
(28, 0, 1528987773, 1528987773, 0, 1, '2', 0, '/generic_lib/Resources/Public/Images/Portfolio/q923494z0325k9.jpg', 'd8b2b6f4f84ff93b98007a95b915010fb5c67d33', '896d7f05a864a46ab40b8ed89448cadd999c7c57', 'jpg', 'image/jpeg', 'q923494z0325k9.jpg', '5a3475b95b35bc8c68893ce60e56526d56c11500', 523917, 1528987773, 1528987773),
(29, 0, 1528987773, 1528987773, 0, 1, '2', 0, '/generic_lib/Resources/Public/Images/Portfolio/r9934547583854365z8.jpg', 'ce5a5cb736d9636e98f40d690b3f4c2b467de034', '896d7f05a864a46ab40b8ed89448cadd999c7c57', 'jpg', 'image/jpeg', 'r9934547583854365z8.jpg', '63571e2d12df3ff20834c1596561fcbcaa777781', 663460, 1528987773, 1528987773),
(30, 0, 1528987773, 1528987773, 0, 1, '2', 0, '/generic_lib/Resources/Public/Images/Portfolio/s328457357543j8.jpg', '295c681008f21f75d728fbdb8abec64d6607ea9e', '896d7f05a864a46ab40b8ed89448cadd999c7c57', 'jpg', 'image/jpeg', 's328457357543j8.jpg', '4f301aa1396fa714daf0d98d8c53ff96371d06ef', 328421, 1528987773, 1528987773),
(31, 0, 1528987773, 1528987773, 0, 1, '5', 0, '/generic_lib/Resources/Public/Downloads/void.docx', '80665679ffa20b63c7adbb6ce154775d18af2190', 'e69003fc486bb6880c6490101d05e492dc517298', 'docx', 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', 'void.docx', '68f12480547809a08fec2babe609aa3e9aba2622', 5052, 1528987773, 1528987773),
(32, 0, 1528987773, 1528987773, 0, 1, '5', 0, '/generic_lib/Resources/Public/Downloads/void.pdf', '4849c40ea786cc3a15db0571435b046dc28a0e0f', 'e69003fc486bb6880c6490101d05e492dc517298', 'pdf', 'application/pdf', 'void.pdf', '06a07dce37ac4a385d7d428ed7f2535b6a8efefa', 10597, 1528987773, 1528987773),
(33, 0, 1528987773, 1528987773, 0, 1, '5', 0, '/generic_lib/Resources/Public/Downloads/void.xlsx', 'd31f46ca227d8f3ebacee307560d0c2a17472f12', 'e69003fc486bb6880c6490101d05e492dc517298', 'xlsx', 'application/octet-stream', 'void.xlsx', '11c69ce37a440204f18cf2ac9f1d4e374eb28e82', 4218, 1528987773, 1528987773),
(34, 0, 1528987773, 1528987773, 0, 1, '2', 0, '/generic_lib/Resources/Public/Images/Portfolio/z666475843826.png', '72efc7ff72843daf9a9a64421bc83dcfe414aacf', '896d7f05a864a46ab40b8ed89448cadd999c7c57', 'png', 'image/png', 'z666475843826.png', '2134470574e32df65e3a48c57f325e9caa69f197', 720896, 1528987773, 1528987773);

UNLOCK TABLES;
-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `sys_filemounts`
--

DROP TABLE IF EXISTS `sys_filemounts`;
CREATE TABLE IF NOT EXISTS `sys_filemounts` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` varchar(2000) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `path` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `base` int(10) unsigned NOT NULL DEFAULT '0',
  `hidden` smallint(5) unsigned NOT NULL DEFAULT '0',
  `deleted` smallint(5) unsigned NOT NULL DEFAULT '0',
  `sorting` int(10) unsigned NOT NULL DEFAULT '0',
  `read_only` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Daten für Tabelle `sys_filemounts`
--
LOCK TABLES `sys_filemounts` WRITE;
INSERT INTO `sys_filemounts` (`uid`, `pid`, `tstamp`, `title`, `description`, `path`, `base`, `hidden`, `deleted`, `sorting`, `read_only`) VALUES
(1, 0, 1529494922, 'Downloads', 'Datei-Downloads (PDF, DOC, XLS, etc.)', '/generic_lib/Resources/Public/Downloads/', 1, 0, 0, 256, 0),
(2, 0, 1529494827, 'Portfolio', 'Arbeitsverzeichnis mit Bildern, Videos, etc. für das Portfolio', '/generic_lib/Resources/Public/Images/Portfolio/', 1, 0, 0, 128, 0);

UNLOCK TABLES;
-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `sys_file_metadata`
--

DROP TABLE IF EXISTS `sys_file_metadata`;
CREATE TABLE IF NOT EXISTS `sys_file_metadata` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `crdate` int(11) NOT NULL DEFAULT '0',
  `cruser_id` int(11) NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `l10n_parent` int(11) NOT NULL DEFAULT '0',
  `l10n_diffsource` mediumblob,
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `t3ver_state` smallint(6) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `file` int(11) NOT NULL DEFAULT '0',
  `title` tinytext COLLATE utf8_unicode_ci,
  `width` int(11) NOT NULL DEFAULT '0',
  `height` int(11) NOT NULL DEFAULT '0',
  `description` text COLLATE utf8_unicode_ci,
  `alternative` text COLLATE utf8_unicode_ci,
  `l10n_state` text COLLATE utf8_unicode_ci,
  `categories` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `file` (`file`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`),
  KEY `fal_filelist` (`l10n_parent`,`sys_language_uid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=35 ;

--
-- Daten für Tabelle `sys_file_metadata`
--
LOCK TABLES `sys_file_metadata` WRITE;
INSERT INTO `sys_file_metadata` (`uid`, `pid`, `tstamp`, `crdate`, `cruser_id`, `sys_language_uid`, `l10n_parent`, `l10n_diffsource`, `t3ver_oid`, `t3ver_id`, `t3ver_wsid`, `t3ver_label`, `t3ver_state`, `t3ver_stage`, `t3ver_count`, `t3ver_tstamp`, `t3ver_move_id`, `t3_origuid`, `file`, `title`, `width`, `height`, `description`, `alternative`, `l10n_state`, `categories`) VALUES
(1, 0, 1528987737, 1528987737, 1, 0, 0, 0x613a313a7b733a343a2266696c65223b4e3b7d, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1, NULL, 3000, 2220, NULL, NULL, NULL, 0),
(2, 0, 1528987737, 1528987737, 1, 0, 0, 0x613a313a7b733a343a2266696c65223b4e3b7d, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 2, NULL, 1050, 751, NULL, NULL, NULL, 0),
(3, 0, 1528987737, 1528987737, 1, 0, 0, 0x613a313a7b733a343a2266696c65223b4e3b7d, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 3, NULL, 1200, 925, NULL, NULL, NULL, 0),
(4, 0, 1528987737, 1528987737, 1, 0, 0, 0x613a313a7b733a343a2266696c65223b4e3b7d, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 4, NULL, 1920, 2703, NULL, NULL, NULL, 0),
(5, 0, 1528987737, 1528987737, 1, 0, 0, 0x613a313a7b733a343a2266696c65223b4e3b7d, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 5, 'Jürg Jenatsch: Eine Bündnergeschichte', 1270, 1152, 'Seit unser Landsmann Konrad Geßner die Wissenschaft der Botanik begründet hat, treiben wir sie eifrig an unserm Carolinum.', NULL, NULL, 0),
(6, 0, 1528987737, 1528987737, 1, 0, 0, 0x613a313a7b733a343a2266696c65223b4e3b7d, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 6, NULL, 1920, 1464, NULL, NULL, NULL, 0),
(7, 0, 1528987737, 1528987737, 1, 0, 0, 0x613a313a7b733a343a2266696c65223b4e3b7d, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 7, NULL, 1920, 1440, NULL, NULL, NULL, 0),
(8, 0, 1528987737, 1528987737, 1, 0, 0, 0x613a313a7b733a343a2266696c65223b4e3b7d, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 8, NULL, 1920, 1459, NULL, NULL, NULL, 0),
(9, 0, 1528987737, 1528987737, 1, 0, 0, 0x613a313a7b733a343a2266696c65223b4e3b7d, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 9, 'Vingt mille lieues sous les mers', 1920, 2786, 'L''année 1866 fut marquée par un événement bizarre, un phénomène inexpliqué et inexplicable que personne n''a sans doute oublié.', NULL, NULL, 0),
(10, 0, 1528987737, 1528987737, 1, 0, 0, 0x613a313a7b733a343a2266696c65223b4e3b7d, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 10, NULL, 3000, 2254, NULL, NULL, NULL, 0),
(11, 0, 1528987737, 1528987737, 1, 0, 0, 0x613a313a7b733a343a2266696c65223b4e3b7d, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 11, 'Tour du Monde sous marin (Premier partie)', 3000, 2000, 'Sans parler des rumeurs qui agitaient les populations des ports et surexcitaient l''esprit public à l''intérieur des continents les gens de mer furent particulièrement émus.', NULL, NULL, 0),
(12, 0, 1528987737, 1528987737, 1, 0, 0, 0x613a313a7b733a343a2266696c65223b4e3b7d, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 12, NULL, 3364, 2420, NULL, NULL, NULL, 0),
(13, 0, 1528987737, 1528987737, 1, 0, 0, 0x613a313a7b733a343a2266696c65223b4e3b7d, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 13, 'Robinson Crusoe by Daniel Defoe', 960, 960, 'But first I was to prepare more land, for I had now seed enough to sow above an acre of ground. ', NULL, NULL, 0),
(14, 0, 1528987737, 1528987737, 1, 0, 0, 0x613a313a7b733a343a2266696c65223b4e3b7d, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 15, NULL, 1280, 803, NULL, NULL, NULL, 0),
(15, 0, 1528987737, 1528987737, 1, 0, 0, 0x613a313a7b733a343a2266696c65223b4e3b7d, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 16, 'Conrad Ferdinand Meyer', 2500, 1914, 'Jürg Jenatsch: Eine Bündnergeschichte', NULL, NULL, 0),
(16, 0, 1528987737, 1528987737, 1, 0, 0, 0x613a313a7b733a343a2266696c65223b4e3b7d, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 17, 'Un écueil fuyant', 1672, 1152, 'Les négociants, armateurs, capitaines de navires, skippers et masters de l''Europe et de l''Amérique, officiers des marines militaires de tous pays, et, après eux, les gouvernements des divers États des deux continents, se préoccupèrent de ce fait au plus haut point.', NULL, NULL, 0),
(17, 0, 1528987737, 1528987737, 1, 0, 0, 0x613a313a7b733a343a2266696c65223b4e3b7d, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 18, NULL, 1024, 885, NULL, NULL, NULL, 0),
(18, 0, 1528987737, 1528987737, 1, 0, 0, 0x613a313a7b733a343a2266696c65223b4e3b7d, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 19, 'Giorgio, guardati', 2000, 1494, 'Waser verbeugte sich und schaute eine Weile nachdenklich dem über die Hochebene davontrabenden Reisezuge nach. ', NULL, NULL, 0),
(19, 0, 1528987737, 1528987737, 1, 0, 0, 0x613a313a7b733a343a2266696c65223b4e3b7d, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 20, NULL, 1700, 900, NULL, NULL, NULL, 0),
(20, 0, 1528987737, 1528987737, 1, 0, 0, 0x613a313a7b733a343a2266696c65223b4e3b7d, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 21, 'Erstes Buch', 1162, 1152, 'Die Reise des Herrn Waser', NULL, NULL, 0),
(21, 0, 1528987737, 1528987737, 1, 0, 0, 0x613a313a7b733a343a2266696c65223b4e3b7d, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 22, 'Die Sonne rückte vorwärts und die Wolken zogen', 3000, 2000, 'An dieser grünen Stelle erschien jetzt und verschwand wieder der braune Kopf einer grasenden Stute und nach einer Weile weideten zwei Pferde behaglich auf dem Rasenflecke und ein drittes schlürfte die kalte Flut.', NULL, NULL, 0),
(22, 0, 1528987737, 1528987737, 1, 0, 0, 0x613a313a7b733a343a2266696c65223b4e3b7d, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 23, 'But for an oven I was indeed in great pain', 3000, 2254, 'At length I found out an experiment for that also, which was this: I made some earthen-vessels very broad but not deep, that is to say, about two feet diameter, and not above nine inches deep.', NULL, NULL, 0),
(23, 0, 1528987737, 1528987737, 1, 0, 0, 0x613a313a7b733a343a2266696c65223b4e3b7d, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 24, 'Ein preußischer Wachtmeister', 1728, 1152, 'In St. Blasien im Schwarzwald fügte es sich, daß sie dem Landvogt von Greifensee, der eine Wirtschafterin suchte, empfohlen wurde, und so diente sie ihm schon seit zwei Jahren.', NULL, NULL, 0),
(24, 0, 1528987737, 1528987737, 1, 0, 0, 0x613a313a7b733a343a2266696c65223b4e3b7d, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 25, 'However', 3000, 2254, 'Before I did this, I had a week''s work at least to make me a spade, which, when it was done, was but a sorry one indeed, and very heavy, and required double labour to work with it.', NULL, NULL, 0),
(25, 0, 1528987737, 1528987737, 1, 0, 0, 0x613a313a7b733a343a2266696c65223b4e3b7d, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 26, 'Barley-loaves', 736, 502, 'These I burned in the fire, as I had done the other, and laid them by; and when I wanted to bake, I made a great fire upon my hearth, which I had paved with some square tiles of my own baking and burning also; but I should not call them square.', NULL, NULL, 0),
(26, 0, 1528987737, 1528987737, 1, 0, 0, 0x613a313a7b733a343a2266696c65223b4e3b7d, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 27, 'On Kawara: Date Paintings', 3000, 2000, NULL, NULL, NULL, 0),
(27, 0, 1528987737, 1528987737, 1, 0, 0, 0x613a313a7b733a343a2266696c65223b4e3b7d, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 28, 'Erstes Kapitel', 1280, 903, 'Die Mittagssonne stand über der kahlen, von Felshäuptern umragten Höhe des Julierpasses im Lande Bünden.', NULL, NULL, 0),
(28, 0, 1528987737, 1528987737, 1, 0, 0, 0x613a313a7b733a343a2266696c65223b4e3b7d, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 29, NULL, 2000, 2667, NULL, NULL, NULL, 0),
(29, 0, 1528987737, 1528987737, 1, 0, 0, 0x613a313a7b733a343a2266696c65223b4e3b7d, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 30, 'Formverletzung', 1726, 1152, 'Die Steinwände brannten und schimmerten unter den stechenden senkrechten Strahlen.', NULL, NULL, 0),
(30, 0, 1528987773, 1528987737, 1, 0, 0, '', 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 31, NULL, 0, 0, NULL, NULL, NULL, 0),
(31, 0, 1528987773, 1528987737, 1, 0, 0, '', 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 32, NULL, 0, 0, NULL, NULL, NULL, 0),
(32, 0, 1528987773, 1528987737, 1, 0, 0, '', 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 33, NULL, 0, 0, NULL, NULL, NULL, 0),
(33, 0, 1528987737, 1528987737, 1, 0, 0, 0x613a313a7b733a343a2266696c65223b4e3b7d, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 34, 'Blown up upon the shore', 2064, 1410, 'She lay almost where she did at first, but not quite; and was turned, by the force of the waves and the winds, almost bottom upward, against a high ridge of beachy, rough sand, but no water about her.', NULL, NULL, 0),
(34, 0, 1528987737, 1528987737, 1, 0, 0, 0x613a313a7b733a343a2266696c65223b4e3b7d, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 14, 'Civis turicensis 1', 0, 0, 'Zuweilen, wenn eine geballte Wetterwolke emporquoll und vorüberzog, schienen die Bergmauern näher heranzutreten und, die Landschaft verengend, schroff und unheimlich zusammenzurücken.', NULL, NULL, 0);

UNLOCK TABLES;
-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `sys_file_reference`
--

DROP TABLE IF EXISTS `sys_file_reference`;
CREATE TABLE IF NOT EXISTS `sys_file_reference` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `crdate` int(11) NOT NULL DEFAULT '0',
  `cruser_id` int(11) NOT NULL DEFAULT '0',
  `sorting` int(11) NOT NULL DEFAULT '0',
  `deleted` smallint(6) NOT NULL DEFAULT '0',
  `hidden` smallint(6) NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `t3ver_state` smallint(6) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `l10n_parent` int(11) NOT NULL DEFAULT '0',
  `l10n_diffsource` mediumblob,
  `uid_local` int(11) NOT NULL DEFAULT '0',
  `uid_foreign` int(11) NOT NULL DEFAULT '0',
  `tablenames` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `fieldname` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `sorting_foreign` int(11) NOT NULL DEFAULT '0',
  `table_local` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `title` tinytext COLLATE utf8_unicode_ci,
  `description` text COLLATE utf8_unicode_ci,
  `alternative` text COLLATE utf8_unicode_ci,
  `link` varchar(1024) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `crop` varchar(4000) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `autoplay` smallint(6) NOT NULL DEFAULT '0',
  `l10n_state` text COLLATE utf8_unicode_ci,
  `showinpreview` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`),
  KEY `tablenames_fieldname` (`tablenames`(32),`fieldname`(12)),
  KEY `deleted` (`deleted`),
  KEY `uid_local` (`uid_local`),
  KEY `uid_foreign` (`uid_foreign`),
  KEY `combined_1` (`l10n_parent`,`t3ver_oid`,`t3ver_wsid`,`t3ver_state`,`deleted`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=54 ;

--
-- Daten für Tabelle `sys_file_reference`
--
LOCK TABLES `sys_file_reference` WRITE;
INSERT INTO `sys_file_reference` (`uid`, `pid`, `tstamp`, `crdate`, `cruser_id`, `sorting`, `deleted`, `hidden`, `t3ver_oid`, `t3ver_id`, `t3ver_wsid`, `t3ver_label`, `t3ver_state`, `t3ver_stage`, `t3ver_count`, `t3ver_tstamp`, `t3ver_move_id`, `t3_origuid`, `sys_language_uid`, `l10n_parent`, `l10n_diffsource`, `uid_local`, `uid_foreign`, `tablenames`, `fieldname`, `sorting_foreign`, `table_local`, `title`, `description`, `alternative`, `link`, `crop`, `autoplay`, `l10n_state`, `showinpreview`) VALUES
(1, 10, 1536135017, 1528987737, 1, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0x613a383a7b733a353a227469746c65223b4e3b733a31313a22616c7465726e6174697665223b4e3b733a343a226c696e6b223b4e3b733a31313a226465736372697074696f6e223b4e3b733a343a2263726f70223b4e3b733a393a227569645f6c6f63616c223b4e3b733a363a2268696464656e223b4e3b733a31363a227379735f6c616e67756167655f756964223b4e3b7d, 17, 2, 'tt_content', 'assets', 5, 'sys_file', NULL, NULL, NULL, '', '{\"default\":{\"cropArea\":{\"x\":0.081000000000000016431300764452316798269748687744140625,\"y\":0.00035936250898406366972859249386829105787910521030426025390625,\"width\":0.9179999999999999271693695845897309482097625732421875,\"height\":0.9992812749820318973803523476817645132541656494140625},\"selectedRatio\":\"4:3\",\"focusArea\":null}}', 0, NULL, 0),
(2, 10, 1536135017, 1528987737, 1, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0x613a383a7b733a353a227469746c65223b4e3b733a31313a22616c7465726e6174697665223b4e3b733a343a226c696e6b223b4e3b733a31313a226465736372697074696f6e223b4e3b733a343a2263726f70223b4e3b733a393a227569645f6c6f63616c223b4e3b733a363a2268696464656e223b4e3b733a31363a227379735f6c616e67756167655f756964223b4e3b7d, 12, 2, 'tt_content', 'assets', 2, 'sys_file', NULL, NULL, NULL, '', '{\"default\":{\"cropArea\":{\"x\":0.050999999999999996724842077355788205750286579132080078125,\"y\":0.00068231404958678395188120813230625572032295167446136474609375,\"width\":0.8979999999999999094058011905872263014316558837890625,\"height\":0.99863537190082640737642805106588639318943023681640625},\"selectedRatio\":\"5:4\",\"focusArea\":null}}', 0, NULL, 0),
(3, 10, 1536135017, 1528987737, 1, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0x613a383a7b733a353a227469746c65223b4e3b733a31313a22616c7465726e6174697665223b4e3b733a343a226c696e6b223b4e3b733a31313a226465736372697074696f6e223b4e3b733a343a2263726f70223b4e3b733a393a227569645f6c6f63616c223b4e3b733a363a2268696464656e223b4e3b733a31363a227379735f6c616e67756167655f756964223b4e3b7d, 8, 2, 'tt_content', 'assets', 4, 'sys_file', NULL, NULL, NULL, '', '{\"default\":{\"cropArea\":{\"x\":0.01499999999999999771016501171061463537625968456268310546875,\"y\":0.0003263410410879974909124923154735142816207371652126312255859375,\"width\":0.947999999999999953814722175593487918376922607421875,\"height\":0.99803152844413978161952627488062717020511627197265625},\"selectedRatio\":\"5:4\",\"focusArea\":null}}', 0, NULL, 0),
(4, 10, 1536135017, 1528987737, 1, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0x613a383a7b733a353a227469746c65223b4e3b733a31313a22616c7465726e6174697665223b4e3b733a343a226c696e6b223b4e3b733a31313a226465736372697074696f6e223b4e3b733a343a2263726f70223b4e3b733a393a227569645f6c6f63616c223b4e3b733a363a2268696464656e223b4e3b733a31363a227379735f6c616e67756167655f756964223b4e3b7d, 16, 2, 'tt_content', 'assets', 8, 'sys_file', NULL, NULL, NULL, '', '{\"default\":{\"cropArea\":{\"height\":0.97911227154047,\"width\":1,\"x\":0,\"y\":0.010443864229765013},\"selectedRatio\":\"4:3\",\"focusArea\":null}}', 0, NULL, 0),
(5, 10, 1536135017, 1528987737, 1, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0x613a383a7b733a353a227469746c65223b4e3b733a31313a22616c7465726e6174697665223b4e3b733a343a226c696e6b223b4e3b733a31313a226465736372697074696f6e223b4e3b733a343a2263726f70223b4e3b733a393a227569645f6c6f63616c223b4e3b733a363a2268696464656e223b4e3b733a31363a227379735f6c616e67756167655f756964223b4e3b7d, 25, 2, 'tt_content', 'assets', 9, 'sys_file', NULL, NULL, NULL, '', '{\"default\":{\"cropArea\":{\"height\":0.9986684420772304,\"width\":0.999,\"x\":0,\"y\":0},\"selectedRatio\":\"4:3\",\"focusArea\":null}}', 0, NULL, 0),
(6, 10, 1536135017, 1528987737, 1, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0x613a383a7b733a353a227469746c65223b4e3b733a31313a22616c7465726e6174697665223b4e3b733a343a226c696e6b223b4e3b733a31313a226465736372697074696f6e223b4e3b733a343a2263726f70223b4e3b733a393a227569645f6c6f63616c223b4e3b733a363a2268696464656e223b4e3b733a31363a227379735f6c616e67756167655f756964223b4e3b7d, 10, 2, 'tt_content', 'assets', 10, 'sys_file', NULL, NULL, NULL, '', '{\"default\":{\"cropArea\":{\"height\":0.9986684420772304,\"width\":0.999,\"x\":0,\"y\":0},\"selectedRatio\":\"4:3\",\"focusArea\":null}}', 0, NULL, 0),
(7, 10, 1536135017, 1528987737, 1, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0x613a383a7b733a353a227469746c65223b4e3b733a31313a22616c7465726e6174697665223b4e3b733a343a226c696e6b223b4e3b733a31313a226465736372697074696f6e223b4e3b733a343a2263726f70223b4e3b733a393a227569645f6c6f63616c223b4e3b733a363a2268696464656e223b4e3b733a31363a227379735f6c616e67756167655f756964223b4e3b7d, 18, 2, 'tt_content', 'assets', 1, 'sys_file', NULL, NULL, NULL, '', '{\"default\":{\"cropArea\":{\"x\":-0.000570989884393079648317037566584986052475869655609130859375,\"y\":0.04161849710982658268054734662655391730368137359619140625,\"width\":0.9991419797687861592550007117097266018390655517578125,\"height\":0.924855491329479750817199601442553102970123291015625},\"selectedRatio\":\"5:4\",\"focusArea\":null}}', 0, NULL, 0),
(8, 10, 1536135017, 1528987737, 1, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0x613a383a7b733a353a227469746c65223b4e3b733a31313a22616c7465726e6174697665223b4e3b733a343a226c696e6b223b4e3b733a31313a226465736372697074696f6e223b4e3b733a343a2263726f70223b4e3b733a393a227569645f6c6f63616c223b4e3b733a363a2268696464656e223b4e3b733a31363a227379735f6c616e67756167655f756964223b4e3b7d, 28, 2, 'tt_content', 'assets', 6, 'sys_file', NULL, NULL, NULL, '', '{\"default\":{\"cropArea\":{\"x\":0.0316860067503429154722738303462392650544643402099609375,\"y\":0,\"width\":0.9366279864993141135443011080496944487094879150390625,\"height\":0.99575070821529754194756378637976013123989105224609375},\"selectedRatio\":\"4:3\",\"focusArea\":null}}', 0, NULL, 0),
(9, 10, 1536135017, 1528987737, 1, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0x613a383a7b733a353a227469746c65223b4e3b733a31313a22616c7465726e6174697665223b4e3b733a343a226c696e6b223b4e3b733a31313a226465736372697074696f6e223b4e3b733a343a2263726f70223b4e3b733a393a227569645f6c6f63616c223b4e3b733a363a2268696464656e223b4e3b733a31363a227379735f6c616e67756167655f756964223b4e3b7d, 19, 2, 'tt_content', 'assets', 3, 'sys_file', NULL, NULL, NULL, '', '{\"default\":{\"cropArea\":{\"x\":0.040000000000000000832667268468867405317723751068115234375,\"y\":0.0004016064257028264410966100772526488071889616549015045166015625,\"width\":0.9330000000000000515143483426072634756565093994140625,\"height\":0.99919678714859438972695215852581895887851715087890625},\"selectedRatio\":\"5:4\",\"focusArea\":null}}', 0, NULL, 0),
(10, 10, 1536135017, 1528987737, 1, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0x613a383a7b733a353a227469746c65223b4e3b733a31313a22616c7465726e6174697665223b4e3b733a343a226c696e6b223b4e3b733a31313a226465736372697074696f6e223b4e3b733a343a2263726f70223b4e3b733a393a227569645f6c6f63616c223b4e3b733a363a2268696464656e223b4e3b733a31363a227379735f6c616e67756167655f756964223b4e3b7d, 6, 2, 'tt_content', 'assets', 7, 'sys_file', NULL, NULL, NULL, '', '{\"default\":{\"cropArea\":{\"x\":0,\"y\":0.009174311926605505,\"width\":1,\"height\":0.9829619921363041},\"selectedRatio\":\"4:3\",\"focusArea\":null}}', 0, NULL, 0),
(11, 9, 1528987737, 1528987737, 1, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0x613a383a7b733a353a227469746c65223b4e3b733a31313a22616c7465726e6174697665223b4e3b733a343a226c696e6b223b4e3b733a31313a226465736372697074696f6e223b4e3b733a343a2263726f70223b4e3b733a393a227569645f6c6f63616c223b4e3b733a363a2268696464656e223b4e3b733a31363a227379735f6c616e67756167655f756964223b4e3b7d, 25, 3, 'tt_content', 'assets', 1, 'sys_file', NULL, NULL, NULL, '', '', 0, NULL, 0),
(12, 9, 1528987737, 1528987737, 1, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0x613a313a7b733a363a2268696464656e223b4e3b7d, 21, 3, 'tt_content', 'assets', 2, 'sys_file', NULL, NULL, NULL, '', '', 0, NULL, 0),
(13, 8, 1528987737, 1528987737, 1, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0x613a383a7b733a353a227469746c65223b4e3b733a31313a22616c7465726e6174697665223b4e3b733a343a226c696e6b223b4e3b733a31313a226465736372697074696f6e223b4e3b733a343a2263726f70223b4e3b733a393a227569645f6c6f63616c223b4e3b733a363a2268696464656e223b4e3b733a31363a227379735f6c616e67756167655f756964223b4e3b7d, 29, 8, 'tt_content', 'assets', 1, 'sys_file', 'Der junge Reisende', 'Die wenigen zwischen den Felszacken herniederhangenden Schneeflecke und Gletscherzungen leuchteten bald grell auf, bald wichen sie zurück in grünliches Dunkel.', NULL, '', '', 0, NULL, 0),
(14, 8, 1528987737, 1528987737, 1, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0x613a383a7b733a353a227469746c65223b4e3b733a31313a22616c7465726e6174697665223b4e3b733a343a226c696e6b223b4e3b733a31313a226465736372697074696f6e223b4e3b733a343a2263726f70223b4e3b733a393a227569645f6c6f63616c223b4e3b733a363a2268696464656e223b4e3b733a31363a227379735f6c616e67756167655f756964223b4e3b7d, 29, 7, 'tt_content', 'assets', 1, 'sys_file', 'However', 'Before I did this, I had a week\'s work at least to make me a spade, which, when it was done, was but a sorry one indeed, and very heavy, and required double labour to work with it.', NULL, '', '', 0, NULL, 0),
(15, 8, 1528987737, 1528987737, 1, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, '', 29, 6, 'tt_content', 'assets', 1, 'sys_file', NULL, NULL, NULL, '', '', 0, NULL, 0),
(16, 8, 1528987737, 1528987737, 1, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0x613a383a7b733a353a227469746c65223b4e3b733a31313a22616c7465726e6174697665223b4e3b733a343a226c696e6b223b4e3b733a31313a226465736372697074696f6e223b4e3b733a343a2263726f70223b4e3b733a393a227569645f6c6f63616c223b4e3b733a363a2268696464656e223b4e3b733a31363a227379735f6c616e67756167655f756964223b4e3b7d, 30, 5, 'tt_content', 'assets', 1, 'sys_file', 'On Kawara: Silence', '42°15\' de latitude nord, 60°35\' de longitude à l\'ouest', NULL, '', '', 0, NULL, 0),
(17, 8, 1528987737, 1528987737, 1, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0x613a313a7b733a363a2268696464656e223b4e3b7d, 30, 4, 'tt_content', 'assets', 1, 'sys_file', NULL, NULL, NULL, '', '', 0, NULL, 0),
(18, 7, 1528987737, 1528987737, 1, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0x613a313a7b733a363a2268696464656e223b4e3b7d, 17, 9, 'tt_content', 'assets', 5, 'sys_file', 'On Kawara: I\'m still alive', 'Telegramm, Deutsche Bundespost, 1971', NULL, '', '', 0, NULL, 0),
(19, 7, 1528987737, 1528987737, 1, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0x613a313a7b733a363a2268696464656e223b4e3b7d, 18, 9, 'tt_content', 'assets', 3, 'sys_file', NULL, NULL, NULL, '', '', 0, NULL, 0),
(20, 7, 1528987737, 1528987737, 1, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0x613a313a7b733a363a2268696464656e223b4e3b7d, 19, 9, 'tt_content', 'assets', 7, 'sys_file', NULL, NULL, NULL, '', '', 0, NULL, 0),
(21, 7, 1528987737, 1528987737, 1, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0x613a313a7b733a363a2268696464656e223b4e3b7d, 22, 9, 'tt_content', 'assets', 9, 'sys_file', NULL, NULL, NULL, '', '', 0, NULL, 0),
(22, 7, 1528987737, 1528987737, 1, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0x613a313a7b733a363a2268696464656e223b4e3b7d, 28, 9, 'tt_content', 'assets', 10, 'sys_file', NULL, NULL, NULL, '', '', 0, NULL, 0),
(23, 7, 1528987737, 1528987737, 1, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0x613a313a7b733a363a2268696464656e223b4e3b7d, 26, 9, 'tt_content', 'assets', 11, 'sys_file', NULL, NULL, NULL, '', '', 0, NULL, 0),
(24, 7, 1528987737, 1528987737, 1, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0x613a313a7b733a363a2268696464656e223b4e3b7d, 27, 9, 'tt_content', 'assets', 12, 'sys_file', NULL, NULL, NULL, '', '', 0, NULL, 0),
(25, 7, 1528987737, 1528987737, 1, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0x613a313a7b733a363a2268696464656e223b4e3b7d, 23, 9, 'tt_content', 'assets', 13, 'sys_file', NULL, NULL, NULL, '', '', 0, NULL, 0),
(26, 7, 1528987737, 1528987737, 1, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0x613a313a7b733a363a2268696464656e223b4e3b7d, 11, 9, 'tt_content', 'assets', 6, 'sys_file', NULL, NULL, NULL, '', '', 0, NULL, 0),
(27, 7, 1528987737, 1528987737, 1, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0x613a313a7b733a363a2268696464656e223b4e3b7d, 12, 9, 'tt_content', 'assets', 14, 'sys_file', NULL, NULL, NULL, '', '', 0, NULL, 0),
(28, 7, 1528987737, 1528987737, 1, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0x613a313a7b733a363a2268696464656e223b4e3b7d, 8, 9, 'tt_content', 'assets', 15, 'sys_file', NULL, NULL, NULL, '', '', 0, NULL, 0),
(29, 7, 1528987737, 1528987737, 1, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0x613a313a7b733a363a2268696464656e223b4e3b7d, 25, 9, 'tt_content', 'assets', 1, 'sys_file', NULL, NULL, NULL, '', '', 0, NULL, 0),
(30, 7, 1528987737, 1528987737, 1, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0x613a313a7b733a363a2268696464656e223b4e3b7d, 28, 9, 'tt_content', 'assets', 2, 'sys_file', NULL, NULL, NULL, '', '', 0, NULL, 0),
(31, 7, 1528987737, 1528987737, 1, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0x613a313a7b733a363a2268696464656e223b4e3b7d, 10, 9, 'tt_content', 'assets', 8, 'sys_file', NULL, NULL, NULL, '', '', 0, NULL, 0),
(32, 7, 1528987737, 1528987737, 1, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0x613a313a7b733a363a2268696464656e223b4e3b7d, 29, 9, 'tt_content', 'assets', 4, 'sys_file', NULL, NULL, NULL, '', '', 0, NULL, 0),
(33, 5, 1528987737, 1528987737, 1, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0x613a313a7b733a363a2268696464656e223b4e3b7d, 26, 15, 'tt_content', 'assets', 1, 'sys_file', 'Der junge Reisende', 'Die wenigen zwischen den Felszacken herniederhangenden Schneeflecke und Gletscherzungen leuchteten bald grell auf, bald wichen sie zurück in grünliches Dunkel.', NULL, '', '', 0, NULL, 0),
(34, 5, 1528987737, 1528987737, 1, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0x613a383a7b733a353a227469746c65223b4e3b733a31313a22616c7465726e6174697665223b4e3b733a343a226c696e6b223b4e3b733a31313a226465736372697074696f6e223b4e3b733a343a2263726f70223b4e3b733a393a227569645f6c6f63616c223b4e3b733a363a2268696464656e223b4e3b733a31363a227379735f6c616e67756167655f756964223b4e3b7d, 10, 14, 'tt_content', 'assets', 1, 'sys_file', 'However', 'Before I did this, I had a week\'s work at least to make me a spade, which, when it was done, was but a sorry one indeed, and very heavy, and required double labour to work with it.', NULL, '', '', 0, NULL, 0),
(35, 5, 1528987737, 1528987737, 1, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0x613a313a7b733a363a2268696464656e223b4e3b7d, 25, 12, 'tt_content', 'assets', 1, 'sys_file', NULL, NULL, NULL, '', '', 0, NULL, 0),
(36, 5, 1528987737, 1528987737, 1, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, '', 28, 13, 'tt_content', 'assets', 1, 'sys_file', NULL, NULL, NULL, '', '', 0, NULL, 0),
(37, 4, 1528987737, 1528987737, 1, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, '', 34, 16, 'tt_content', 'assets', 1, 'sys_file', NULL, NULL, NULL, '', '', 0, NULL, 0),
(38, 2, 1528987737, 1528987737, 1, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, '', 4, 10, 'tx_news_domain_model_news', 'fal_media', 1, 'sys_file', NULL, NULL, NULL, '', '', 0, NULL, 1),
(39, 2, 1528987737, 1528987737, 1, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0x613a313a7b733a363a2268696464656e223b4e3b7d, 19, 8, 'tx_news_domain_model_news', 'fal_media', 1, 'sys_file', NULL, NULL, NULL, '', '', 0, NULL, 1),
(40, 2, 1528987737, 1528987737, 1, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0x613a313a7b733a363a2268696464656e223b4e3b7d, 26, 7, 'tx_news_domain_model_news', 'fal_media', 1, 'sys_file', NULL, NULL, NULL, '', '', 0, NULL, 1),
(41, 2, 1528987737, 1528987737, 1, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, '', 18, 5, 'tx_news_domain_model_news', 'fal_media', 1, 'sys_file', NULL, NULL, NULL, '', '', 0, NULL, 1),
(42, 2, 1528987737, 1528987737, 1, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0x613a313a7b733a363a2268696464656e223b4e3b7d, 2, 6, 'tx_news_domain_model_news', 'fal_media', 1, 'sys_file', NULL, NULL, NULL, '', '', 0, NULL, 1),
(43, 2, 1528987737, 1528987737, 1, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, '', 9, 4, 'tx_news_domain_model_news', 'fal_media', 1, 'sys_file', NULL, NULL, NULL, '', '', 0, NULL, 1),
(44, 2, 1528987737, 1528987737, 1, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0x613a313a7b733a363a2268696464656e223b4e3b7d, 12, 3, 'tx_news_domain_model_news', 'fal_media', 1, 'sys_file', NULL, NULL, NULL, '', '', 0, NULL, 1),
(45, 2, 1528987737, 1528987737, 1, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0x613a313a7b733a363a2268696464656e223b4e3b7d, 28, 2, 'tx_news_domain_model_news', 'fal_media', 1, 'sys_file', NULL, NULL, NULL, '', '', 0, NULL, 1),
(46, 2, 1528987737, 1528987737, 1, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0x613a313a7b733a363a2268696464656e223b4e3b7d, 15, 1, 'tx_news_domain_model_news', 'fal_media', 1, 'sys_file', NULL, NULL, NULL, '', '', 0, NULL, 1),
(47, 2, 1528987737, 1528987737, 1, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0x613a313a7b733a363a2268696464656e223b4e3b7d, 29, 9, 'tx_news_domain_model_news', 'fal_media', 1, 'sys_file', NULL, NULL, NULL, '', '', 0, NULL, 1),
(48, 1, 1528987737, 1528987737, 1, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0x613a313a7b733a363a2268696464656e223b4e3b7d, 30, 1, 'pages', 'media', 1, 'sys_file', NULL, NULL, NULL, '', '', 0, NULL, 0),
(49, 1, 1528987737, 1528987737, 1, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0x613a313a7b733a363a2268696464656e223b4e3b7d, 21, 1, 'pages', 'media', 2, 'sys_file', NULL, NULL, NULL, '', '', 0, NULL, 0),
(50, 1, 1528987737, 1528987737, 1, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0x613a313a7b733a363a2268696464656e223b4e3b7d, 10, 1, 'pages', 'media', 3, 'sys_file', NULL, NULL, NULL, '', '', 0, NULL, 0),
(51, 1, 1528987737, 1528987737, 1, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0x613a313a7b733a363a2268696464656e223b4e3b7d, 22, 1, 'pages', 'media', 5, 'sys_file', NULL, NULL, NULL, '', '', 0, NULL, 0),
(52, 1, 1528987737, 1528987737, 1, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0x613a313a7b733a363a2268696464656e223b4e3b7d, 25, 1, 'pages', 'media', 4, 'sys_file', NULL, NULL, NULL, '', '', 0, NULL, 0),
(53, 1, 1528987737, 1528987737, 1, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0x613a313a7b733a363a2268696464656e223b4e3b7d, 23, 1, 'pages', 'media', 6, 'sys_file', NULL, NULL, NULL, '', '', 0, NULL, 0);

UNLOCK TABLES;
-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `sys_file_storage`
--

DROP TABLE IF EXISTS `sys_file_storage`;
CREATE TABLE IF NOT EXISTS `sys_file_storage` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `crdate` int(11) NOT NULL DEFAULT '0',
  `cruser_id` int(11) NOT NULL DEFAULT '0',
  `deleted` smallint(6) NOT NULL DEFAULT '0',
  `name` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8_unicode_ci,
  `driver` tinytext COLLATE utf8_unicode_ci,
  `configuration` text COLLATE utf8_unicode_ci,
  `is_default` smallint(6) NOT NULL DEFAULT '0',
  `is_browsable` smallint(6) NOT NULL DEFAULT '0',
  `is_public` smallint(6) NOT NULL DEFAULT '0',
  `is_writable` smallint(6) NOT NULL DEFAULT '0',
  `is_online` smallint(6) NOT NULL DEFAULT '1',
  `auto_extract_metadata` smallint(6) NOT NULL DEFAULT '1',
  `processingfolder` tinytext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Daten für Tabelle `sys_file_storage`
--
LOCK TABLES `sys_file_storage` WRITE;
INSERT INTO `sys_file_storage` (`uid`, `pid`, `tstamp`, `crdate`, `cruser_id`, `deleted`, `name`, `description`, `driver`, `configuration`, `is_default`, `is_browsable`, `is_public`, `is_writable`, `is_online`, `auto_extract_metadata`, `processingfolder`) VALUES
(1, 0, 1528987737, 1528987737, 0, 0, 'fileadmin/ (auto-created)', 'This is the local fileadmin/ directory. This storage mount has been created automatically by TYPO3.', 'Local', '<?xml version="1.0" encoding="utf-8" standalone="yes" ?>\n<T3FlexForms>\n    <data>\n        <sheet index="sDEF">\n            <language index="lDEF">\n                <field index="basePath">\n                    <value index="vDEF">fileadmin/</value>\n                </field>\n                <field index="pathType">\n                    <value index="vDEF">relative</value>\n                </field>\n                <field index="caseSensitive">\n                    <value index="vDEF">1</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>', 1, 1, 1, 1, 1, 1, NULL);

UNLOCK TABLES;
-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `sys_registry`
--

DROP TABLE IF EXISTS `sys_registry`;
CREATE TABLE IF NOT EXISTS `sys_registry` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entry_namespace` varchar(128) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `entry_key` varchar(128) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `entry_value` mediumblob,
  PRIMARY KEY (`uid`),
  UNIQUE KEY `entry_identifier` (`entry_namespace`,`entry_key`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=54 ;

--
-- Daten für Tabelle `sys_registry`
--
LOCK TABLES `sys_registry` WRITE;
INSERT INTO `sys_registry` (`uid`, `entry_namespace`, `entry_key`, `entry_value`) VALUES
(1, 'installUpdate', 'TYPO3\\CMS\\Install\\Updates\\AccessRightParametersUpdate', 0x693a313b),
(2, 'installUpdate', 'TYPO3\\CMS\\Install\\Updates\\LanguageIsoCodeUpdate', 0x693a313b),
(3, 'installUpdate', 'TYPO3\\CMS\\Install\\Updates\\PageShortcutParentUpdate', 0x693a313b),
(4, 'installUpdate', 'TYPO3\\CMS\\Install\\Updates\\MigrateShortcutUrlsAgainUpdate', 0x693a313b),
(5, 'installUpdate', 'TYPO3\\CMS\\Install\\Updates\\ProcessedFileChecksumUpdate', 0x693a313b),
(6, 'installUpdate', 'TYPO3\\CMS\\Install\\Updates\\FilesReplacePermissionUpdate', 0x693a313b),
(7, 'installUpdate', 'TYPO3\\CMS\\Install\\Updates\\TableFlexFormToTtContentFieldsUpdate', 0x693a313b),
(8, 'installUpdate', 'TYPO3\\CMS\\Install\\Updates\\FileListInAccessModuleListUpdate', 0x693a313b),
(9, 'installUpdate', 'TYPO3\\CMS\\Install\\Updates\\FileListIsStartModuleUpdate', 0x693a313b),
(10, 'installUpdate', 'TYPO3\\CMS\\Install\\Updates\\WorkspacesNotificationSettingsUpdate', 0x693a313b),
(11, 'installUpdate', 'TYPO3\\CMS\\Install\\Updates\\MigrateMediaToAssetsForTextMediaCe', 0x693a313b),
(12, 'installUpdate', 'TYPO3\\CMS\\Install\\Updates\\Compatibility6ExtractionUpdate', 0x693a313b),
(13, 'installUpdate', 'TYPO3\\CMS\\Install\\Updates\\MediaceExtractionUpdate', 0x693a313b),
(14, 'installUpdate', 'TYPO3\\CMS\\Install\\Updates\\OpenidExtractionUpdate', 0x693a313b),
(15, 'installUpdate', 'TYPO3\\CMS\\Install\\Updates\\ExtensionManagerTables', 0x693a313b),
(16, 'installUpdate', 'TYPO3\\CMS\\Install\\Updates\\WizardDoneToRegistry', 0x693a313b),
(17, 'installUpdate', 'TYPO3\\CMS\\Install\\Updates\\BackendUserStartModuleUpdate', 0x693a313b),
(18, 'installUpdate', 'TYPO3\\CMS\\Install\\Updates\\FrontendUserImageUpdateWizard', 0x693a313b),
(19, 'installUpdate', 'TYPO3\\CMS\\Install\\Updates\\DatabaseRowsUpdateWizard', 0x693a313b),
(20, 'installUpdate', 'TYPO3\\CMS\\Install\\Updates\\CommandLineBackendUserRemovalUpdate', 0x693a313b),
(21, 'installUpdate', 'TYPO3\\CMS\\Install\\Updates\\FillTranslationSourceField', 0x693a313b),
(22, 'installUpdate', 'TYPO3\\CMS\\Install\\Updates\\SectionFrameToFrameClassUpdate', 0x693a313b),
(23, 'installUpdate', 'TYPO3\\CMS\\Install\\Updates\\SplitMenusUpdate', 0x693a313b),
(24, 'installUpdate', 'TYPO3\\CMS\\Install\\Updates\\BulletContentElementUpdate', 0x693a313b),
(25, 'installUpdate', 'TYPO3\\CMS\\Install\\Updates\\UploadContentElementUpdate', 0x693a313b),
(26, 'installUpdate', 'TYPO3\\CMS\\Install\\Updates\\MigrateCscStaticTemplateUpdate', 0x693a313b),
(27, 'installUpdate', 'TYPO3\\CMS\\Install\\Updates\\MigrateFscStaticTemplateUpdate', 0x693a313b),
(28, 'installUpdate', 'TYPO3\\CMS\\Install\\Updates\\FileReferenceUpdate', 0x693a313b),
(29, 'installUpdate', 'TYPO3\\CMS\\Install\\Updates\\MigrateFeSessionDataUpdate', 0x693a313b),
(30, 'installUpdate', 'TYPO3\\CMS\\Install\\Updates\\Compatibility7ExtractionUpdate', 0x693a313b),
(31, 'installUpdate', 'TYPO3\\CMS\\Install\\Updates\\FormLegacyExtractionUpdate', 0x693a313b),
(32, 'installUpdate', 'TYPO3\\CMS\\Install\\Updates\\RteHtmlAreaExtractionUpdate', 0x693a313b),
(33, 'installUpdate', 'TYPO3\\CMS\\Install\\Updates\\LanguageSortingUpdate', 0x693a313b),
(35, 'TYPO3.CMS.Install', 'coreVersionMatrix', 0x613a363a7b693a393b613a343a7b733a383a2272656c6561736573223b613a353a7b733a353a22392e332e30223b613a353a7b733a373a2276657273696f6e223b733a353a22392e332e30223b733a343a2264617465223b733a32333a22323031382d30362d31312031373a31393a313720555443223b733a343a2274797065223b733a373a22726567756c6172223b733a393a22636865636b73756d73223b613a323a7b733a333a22746172223b613a333a7b733a343a2273686131223b733a34303a2230353035326434643530383665343931633733376135663834383764363530303739353932613962223b733a333a226d6435223b733a33323a226234623331383731313239373361343262653531313835393731303833383736223b733a363a22736861323536223b733a36343a2264343132343565336538643934333732653966356338336530316436386665363462373233323330616664316663396638323234656262343139613434303732223b7d733a333a227a6970223b613a333a7b733a343a2273686131223b733a34303a2266363261663832346131383032663633306636373766363535323130363866303465623336393961223b733a333a226d6435223b733a33323a223434313934666663376365303463373339623235633965626334656231363037223b733a363a22736861323536223b733a36343a2234373765343263313866333939653861636464663330616630626665343232636463663332353166666637353838623132626462323964326138646336656434223b7d7d733a333a2275726c223b613a323a7b733a333a227a6970223b733a33313a2268747470733a2f2f6765742e7479706f332e6f72672f392e332e302f7a6970223b733a333a22746172223b733a32373a2268747470733a2f2f6765742e7479706f332e6f72672f392e332e30223b7d7d733a353a22392e322e31223b613a353a7b733a373a2276657273696f6e223b733a353a22392e322e31223b733a343a2264617465223b733a32333a22323031382d30352d32322031333a35353a323520555443223b733a343a2274797065223b733a373a22726567756c6172223b733a393a22636865636b73756d73223b613a323a7b733a333a22746172223b613a333a7b733a343a2273686131223b733a34303a2262323034643733316561313466663335353838303863656635643030346464343935356465626463223b733a333a226d6435223b733a33323a223137396533393363656136376162656339383631663835326666366361316661223b733a363a22736861323536223b733a36343a2231316261643632393765396338333664313366313062623465326133333866643838323739356632613236346638323563306636613733363934313738363631223b7d733a333a227a6970223b613a333a7b733a343a2273686131223b733a34303a2231393035393731616361656563613538336139303865626265633936636532363538346339623234223b733a333a226d6435223b733a33323a226262393863633339316665393964343330653665323736643939316137636336223b733a363a22736861323536223b733a36343a2237643837306134613836363533626563346637646337613865373736623430643930313763323366363531393566626539643035336562303738613630663739223b7d7d733a333a2275726c223b613a323a7b733a333a227a6970223b733a33313a2268747470733a2f2f6765742e7479706f332e6f72672f392e322e312f7a6970223b733a333a22746172223b733a32373a2268747470733a2f2f6765742e7479706f332e6f72672f392e322e31223b7d7d733a353a22392e322e30223b613a353a7b733a373a2276657273696f6e223b733a353a22392e322e30223b733a343a2264617465223b733a32333a22323031382d30342d30392032303a35343a323620555443223b733a343a2274797065223b733a373a22726567756c6172223b733a393a22636865636b73756d73223b613a323a7b733a333a22746172223b613a333a7b733a343a2273686131223b733a34303a2264633636353163356131623364383536613663306135326461663032316266303237636434333661223b733a333a226d6435223b733a33323a226433376639376564376538383637653533636632366564316364383639363139223b733a363a22736861323536223b733a36343a2264303739613732363039386461656332643363613930376566633336326461613062346663363338623938396466386431333534393833623434396166623262223b7d733a333a227a6970223b613a333a7b733a343a2273686131223b733a34303a2233386665343532306139663364356639396138346561323963623466386438376465393733326463223b733a333a226d6435223b733a33323a226164623061623866383933383763346464333330653262303233313764393136223b733a363a22736861323536223b733a36343a2234343832663139353836373366316435356636313464616339663262633063353861303032663263373835333937343261646632343434663534333762653439223b7d7d733a333a2275726c223b613a323a7b733a333a227a6970223b733a33313a2268747470733a2f2f6765742e7479706f332e6f72672f392e322e302f7a6970223b733a333a22746172223b733a32373a2268747470733a2f2f6765742e7479706f332e6f72672f392e322e30223b7d7d733a353a22392e312e30223b613a353a7b733a373a2276657273696f6e223b733a353a22392e312e30223b733a343a2264617465223b733a32333a22323031382d30312d33302031353a34343a353220555443223b733a343a2274797065223b733a373a22726567756c6172223b733a393a22636865636b73756d73223b613a323a7b733a333a22746172223b613a323a7b733a343a2273686131223b733a34303a2233613237373832366437313665623465383261333661323230306465656664373664313533373863223b733a363a22736861323536223b733a36343a2231333863386563366237663830653764636535663961633964323465646166376333613837666566306330323235386238366335323733383836646230383431223b7d733a333a227a6970223b613a323a7b733a343a2273686131223b733a34303a2236383062323633653664653131663365373461663435333139336637633433643939636663646665223b733a363a22736861323536223b733a36343a2230313264386338353836393161656665346461303232346266373635343331383765313132613362373639366562363565323336643138613934383136333165223b7d7d733a333a2275726c223b613a323a7b733a333a227a6970223b733a33313a2268747470733a2f2f6765742e7479706f332e6f72672f392e312e302f7a6970223b733a333a22746172223b733a32373a2268747470733a2f2f6765742e7479706f332e6f72672f392e312e30223b7d7d733a353a22392e302e30223b613a353a7b733a373a2276657273696f6e223b733a353a22392e302e30223b733a343a2264617465223b733a32333a22323031372d31322d31322031363a34383a323220555443223b733a343a2274797065223b733a373a22726567756c6172223b733a393a22636865636b73756d73223b613a323a7b733a333a22746172223b613a323a7b733a343a2273686131223b733a34303a2235376134333337663264343639666530643839393861636336663863356232353264636339383231223b733a363a22736861323536223b733a36343a2233376466393732613362636130623661326664636638663333323337363364666539663962333830303435343731313765323864616332326465633932303062223b7d733a333a227a6970223b613a323a7b733a343a2273686131223b733a34303a2264303764346139633762626630346339623364653361373931616363656364313439313834393535223b733a363a22736861323536223b733a36343a2230343030396631623232323334363633653938363264376466366431396366383239363133376239313261616637313038353135336265646161303532386433223b7d7d733a333a2275726c223b613a323a7b733a333a227a6970223b733a33313a2268747470733a2f2f6765742e7479706f332e6f72672f392e302e302f7a6970223b733a333a22746172223b733a32373a2268747470733a2f2f6765742e7479706f332e6f72672f392e302e30223b7d7d7d733a363a226c6174657374223b733a353a22392e332e30223b733a363a22737461626c65223b733a353a22392e332e30223b733a363a22616374697665223b623a313b7d693a383b613a343a7b733a383a2272656c6561736573223b613a33333a7b733a363a22382e372e3136223b613a353a7b733a373a2276657273696f6e223b733a363a22382e372e3136223b733a343a2264617465223b733a32333a22323031382d30362d31312031383a30373a353620555443223b733a343a2274797065223b733a373a22726567756c6172223b733a393a22636865636b73756d73223b613a323a7b733a333a22746172223b613a333a7b733a343a2273686131223b733a34303a2232323839353164323532323463326435313335363261366230313538333932653066336630343365223b733a333a226d6435223b733a33323a223966353161393037393438633366303834646638663137663164373532373937223b733a363a22736861323536223b733a36343a2263623962633365393436343436353235363961366232653261613633323230316264643764373738383764393966333038346236626135666235393234613865223b7d733a333a227a6970223b613a333a7b733a343a2273686131223b733a34303a2237666332333233656534656561316135386234366365373761633735336563326262666238323266223b733a333a226d6435223b733a33323a226164376434656336356261636361643365636636646635396161323739333937223b733a363a22736861323536223b733a36343a2237333962306535393038353463306636613030326332616437343866343464376335386161366561346563386361323931623063303365396165326639373863223b7d7d733a333a2275726c223b613a323a7b733a333a227a6970223b733a33323a2268747470733a2f2f6765742e7479706f332e6f72672f382e372e31362f7a6970223b733a333a22746172223b733a32383a2268747470733a2f2f6765742e7479706f332e6f72672f382e372e3136223b7d7d733a363a22382e372e3135223b613a353a7b733a373a2276657273696f6e223b733a363a22382e372e3135223b733a343a2264617465223b733a32333a22323031382d30352d32332031313a33333a313420555443223b733a343a2274797065223b733a373a22726567756c6172223b733a393a22636865636b73756d73223b613a323a7b733a333a22746172223b613a333a7b733a343a2273686131223b733a34303a2232363937623036386534356334326230386533633665386330356366323862323539616339386339223b733a333a226d6435223b733a33323a223634366562323437386634323932323335646132363534366131396234663435223b733a363a22736861323536223b733a36343a2262316437363162653533373030383764333335386237646134396166623164393164643535393236356435356338336530373765363531643739376434373032223b7d733a333a227a6970223b613a333a7b733a343a2273686131223b733a34303a2231333536326639353531383839323837626365616561623434386439623438336536333662376531223b733a333a226d6435223b733a33323a223932356232333938653764656139663934303237323834663761353337303232223b733a363a22736861323536223b733a36343a2261623362653864356363643533306535343237623535393835356131376632383139666331646331353331623833313534643965383835373265393031666164223b7d7d733a333a2275726c223b613a323a7b733a333a227a6970223b733a33323a2268747470733a2f2f6765742e7479706f332e6f72672f382e372e31352f7a6970223b733a333a22746172223b733a32383a2268747470733a2f2f6765742e7479706f332e6f72672f382e372e3135223b7d7d733a363a22382e372e3134223b613a353a7b733a373a2276657273696f6e223b733a363a22382e372e3134223b733a343a2264617465223b733a32333a22323031382d30352d32322031333a35373a323720555443223b733a343a2274797065223b733a373a22726567756c6172223b733a393a22636865636b73756d73223b613a323a7b733a333a22746172223b613a333a7b733a343a2273686131223b733a34303a2233646434323938656334316263663062373561663230343161306535326131343235633464393261223b733a333a226d6435223b733a33323a223761363666623533633034633036336563613666616661306437653662623161223b733a363a22736861323536223b733a36343a2265313432656465633165396334623938393435383532323139623439326533396162336438663837323339333566363535326265653464623135316266393264223b7d733a333a227a6970223b613a333a7b733a343a2273686131223b733a34303a2261653562653165303439646631663961646365373661373037616638383437643264383761643463223b733a333a226d6435223b733a33323a223930396364346365373434626166363464386438356438636434636434343833223b733a363a22736861323536223b733a36343a2234313938366633666364336438393265356436643466393538633135323739356266326535386234656637313530623130643937613239633432316432326435223b7d7d733a333a2275726c223b613a323a7b733a333a227a6970223b733a33323a2268747470733a2f2f6765742e7479706f332e6f72672f382e372e31342f7a6970223b733a333a22746172223b733a32383a2268747470733a2f2f6765742e7479706f332e6f72672f382e372e3134223b7d7d733a363a22382e372e3133223b613a353a7b733a373a2276657273696f6e223b733a363a22382e372e3133223b733a343a2264617465223b733a32333a22323031382d30342d31372030383a31373a323920555443223b733a343a2274797065223b733a373a22726567756c6172223b733a393a22636865636b73756d73223b613a323a7b733a333a22746172223b613a333a7b733a343a2273686131223b733a34303a2232363933383535666532623265323864333834383361363437653163613265653265613064633466223b733a333a226d6435223b733a33323a223039333265343266393530633066363062306634613130613837653138326461223b733a363a22736861323536223b733a36343a2238633439653566616630366230653538633634346162393832363531633562613064336332353531653335313835373531613065356566323563653431663034223b7d733a333a227a6970223b613a333a7b733a343a2273686131223b733a34303a2236626632653030363138616262646264343230623835626137396139323436626633396366656235223b733a333a226d6435223b733a33323a223236656466316438316532303433643535663733336133633133303336353766223b733a363a22736861323536223b733a36343a2265373964376661323932623961333063343735343735636437343930383737313561363364366635353234623563376439656262343265653866353364353534223b7d7d733a333a2275726c223b613a323a7b733a333a227a6970223b733a33323a2268747470733a2f2f6765742e7479706f332e6f72672f382e372e31332f7a6970223b733a333a22746172223b733a32383a2268747470733a2f2f6765742e7479706f332e6f72672f382e372e3133223b7d7d733a363a22382e372e3132223b613a353a7b733a373a2276657273696f6e223b733a363a22382e372e3132223b733a343a2264617465223b733a32333a22323031382d30332d32322031313a33363a333920555443223b733a343a2274797065223b733a373a22726567756c6172223b733a393a22636865636b73756d73223b613a323a7b733a333a22746172223b613a333a7b733a343a2273686131223b733a34303a2231383566333739363735316139303335353461303333373836333461343338626565656639363665223b733a333a226d6435223b733a33323a226538333566343534323239623130373763393034326631626165346434366337223b733a363a22736861323536223b733a36343a2237376333353839313631626561396432633330653564336439343434343362613634623536383133333134616332353131623833306533376433323937383831223b7d733a333a227a6970223b613a333a7b733a343a2273686131223b733a34303a2265626134396239303333646135326439386634383837366539376564303930613063353539336530223b733a333a226d6435223b733a33323a226535373336636133623337323539363661343532386130633533666338343966223b733a363a22736861323536223b733a36343a2237616164336635383634323536663366393839633033373863656338626237323965373238623330616462323565353561653731336438653638326566373262223b7d7d733a333a2275726c223b613a323a7b733a333a227a6970223b733a33323a2268747470733a2f2f6765742e7479706f332e6f72672f382e372e31322f7a6970223b733a333a22746172223b733a32383a2268747470733a2f2f6765742e7479706f332e6f72672f382e372e3132223b7d7d733a363a22382e372e3131223b613a353a7b733a373a2276657273696f6e223b733a363a22382e372e3131223b733a343a2264617465223b733a32333a22323031382d30332d31332031323a34353a343720555443223b733a343a2274797065223b733a373a22726567756c6172223b733a393a22636865636b73756d73223b613a323a7b733a333a22746172223b613a333a7b733a343a2273686131223b733a34303a2237383138636236306634663264633134646139616536376435623236336131373839303862393039223b733a333a226d6435223b733a33323a223234383264623831643261303462373731386162636435333431323030623132223b733a363a22736861323536223b733a36343a2237386630373762306637653930636433326331383030623937353461666264643461333162623431333034643663326436373431346633343832646431393463223b7d733a333a227a6970223b613a333a7b733a343a2273686131223b733a34303a2263316438656233366232386235633933623339353663626335663764396631316562393863383065223b733a333a226d6435223b733a33323a223463626564633764636662366534373433376131396433396338323661363836223b733a363a22736861323536223b733a36343a2230356663386439303831653963636432383761653838353665663664303635643265666336663064393432636533313730623033383362653032623831363233223b7d7d733a333a2275726c223b613a323a7b733a333a227a6970223b733a33323a2268747470733a2f2f6765742e7479706f332e6f72672f382e372e31312f7a6970223b733a333a22746172223b733a32383a2268747470733a2f2f6765742e7479706f332e6f72672f382e372e3131223b7d7d733a363a22382e372e3130223b613a353a7b733a373a2276657273696f6e223b733a363a22382e372e3130223b733a343a2264617465223b733a32333a22323031382d30322d30362031303a35393a343720555443223b733a343a2274797065223b733a373a22726567756c6172223b733a393a22636865636b73756d73223b613a323a7b733a333a22746172223b613a333a7b733a343a2273686131223b733a34303a2236633238386663383936393866326232346235303735306465306336646566613339393434326230223b733a333a226d6435223b733a33323a226361616338643865626634646237383136626531306335356665353231333164223b733a363a22736861323536223b733a36343a2236313833313938343363333531366136373035616661636566333631343133646238336339353336383037326634613131646565636133646635646130363363223b7d733a333a227a6970223b613a333a7b733a343a2273686131223b733a34303a2265643263336335613231366462343261363530363431326537623433376536653938363130343338223b733a333a226d6435223b733a33323a223038316366343136363262316231663731626231343831336264623962386564223b733a363a22736861323536223b733a36343a2232303464656533656465313665613365386133623834633337656664353030393537633738633333383032313138343064663538643530613562353332633362223b7d7d733a333a2275726c223b613a323a7b733a333a227a6970223b733a33323a2268747470733a2f2f6765742e7479706f332e6f72672f382e372e31302f7a6970223b733a333a22746172223b733a32383a2268747470733a2f2f6765742e7479706f332e6f72672f382e372e3130223b7d7d733a353a22382e372e39223b613a353a7b733a373a2276657273696f6e223b733a353a22382e372e39223b733a343a2264617465223b733a32333a22323031372d31322d31322031363a30393a353020555443223b733a343a2274797065223b733a373a22726567756c6172223b733a393a22636865636b73756d73223b613a323a7b733a333a22746172223b613a333a7b733a343a2273686131223b733a34303a2234623231396463376139636434393839376436366564343763656461653030653932613161356237223b733a333a226d6435223b733a33323a223032333062323865636134643134363762653031626161646235656662663834223b733a363a22736861323536223b733a36343a2262666363633731393462326564393337383639396137363037393766613264313239313139616263623766303061346265386233323333656162623836646130223b7d733a333a227a6970223b613a333a7b733a343a2273686131223b733a34303a2231363737613333643161656535383161353265643730313331626562633535653466346132613766223b733a333a226d6435223b733a33323a223838663535323362396330383265343631373965393332633030343561656434223b733a363a22736861323536223b733a36343a2239616565646239663363353262643938323833396630393562636330643234346338313438346461666133666239373164666466616634323863343932313130223b7d7d733a333a2275726c223b613a323a7b733a333a227a6970223b733a33313a2268747470733a2f2f6765742e7479706f332e6f72672f382e372e392f7a6970223b733a333a22746172223b733a32373a2268747470733a2f2f6765742e7479706f332e6f72672f382e372e39223b7d7d733a353a22382e372e38223b613a353a7b733a373a2276657273696f6e223b733a353a22382e372e38223b733a343a2264617465223b733a32333a22323031372d31302d31302031363a30373a333520555443223b733a343a2274797065223b733a373a22726567756c6172223b733a393a22636865636b73756d73223b613a323a7b733a333a22746172223b613a323a7b733a343a2273686131223b733a34303a2264663835383566333063306665373166633364666232316139363030363136356236653765386164223b733a333a226d6435223b733a33323a226530656239353365393964303134396265616238646531386237643232666137223b7d733a333a227a6970223b613a323a7b733a343a2273686131223b733a34303a2263396239643465356133376630663237336533633233616236366131636566346539336466646462223b733a333a226d6435223b733a33323a226366306236363337316462346261613236666137623531363136303030643964223b7d7d733a333a2275726c223b613a323a7b733a333a227a6970223b733a33313a2268747470733a2f2f6765742e7479706f332e6f72672f382e372e382f7a6970223b733a333a22746172223b733a32373a2268747470733a2f2f6765742e7479706f332e6f72672f382e372e38223b7d7d733a353a22382e372e37223b613a353a7b733a373a2276657273696f6e223b733a353a22382e372e37223b733a343a2264617465223b733a32333a22323031372d30392d31392031343a32343a313520555443223b733a343a2274797065223b733a373a22726567756c6172223b733a393a22636865636b73756d73223b613a323a7b733a333a22746172223b613a323a7b733a343a2273686131223b733a34303a2262396230356231396333326633656538393066323635383066666431623961383865623366346532223b733a333a226d6435223b733a33323a223933656662616335613931616161353936663039396665653462323363623239223b7d733a333a227a6970223b613a323a7b733a343a2273686131223b733a34303a2261643862636135346434396662363434343930626639353433373630396233613236643931393664223b733a333a226d6435223b733a33323a226662313939353230303839396564656237616438383339633232363564643536223b7d7d733a333a2275726c223b613a323a7b733a333a227a6970223b733a33313a2268747470733a2f2f6765742e7479706f332e6f72672f382e372e372f7a6970223b733a333a22746172223b733a32373a2268747470733a2f2f6765742e7479706f332e6f72672f382e372e37223b7d7d733a353a22382e372e36223b613a353a7b733a373a2276657273696f6e223b733a353a22382e372e36223b733a343a2264617465223b733a32333a22323031372d30392d30372030363a30363a313820555443223b733a343a2274797065223b733a373a22726567756c6172223b733a393a22636865636b73756d73223b613a323a7b733a333a22746172223b613a323a7b733a343a2273686131223b733a34303a2233346664663137383362623431306138396334323961306636383964663138363232333762616266223b733a333a226d6435223b733a33323a223266353535376331373332393232663736333666373463653139623835366164223b7d733a333a227a6970223b613a323a7b733a343a2273686131223b733a34303a2230386636373938306661396661653462396233373839343230613965316161343637633938353737223b733a333a226d6435223b733a33323a223562376532326533386635333331303430653933356565383833323530623531223b7d7d733a333a2275726c223b613a323a7b733a333a227a6970223b733a33313a2268747470733a2f2f6765742e7479706f332e6f72672f382e372e362f7a6970223b733a333a22746172223b733a32373a2268747470733a2f2f6765742e7479706f332e6f72672f382e372e36223b7d7d733a353a22382e372e35223b613a353a7b733a373a2276657273696f6e223b733a353a22382e372e35223b733a343a2264617465223b733a32333a22323031372d30392d30352031303a35343a313820555443223b733a343a2274797065223b733a383a227365637572697479223b733a393a22636865636b73756d73223b613a323a7b733a333a22746172223b613a323a7b733a343a2273686131223b733a34303a2239663236316539313637613732393532616336383539653965333334626539653765646262396237223b733a333a226d6435223b733a33323a223738656235313238336430633133396432333237376366306130393564336636223b7d733a333a227a6970223b613a323a7b733a343a2273686131223b733a34303a2263663839663634376435393035376433643131343036613165646562353939333165393831383531223b733a333a226d6435223b733a33323a226562356138363235363566336136316361373836356438326432373438313863223b7d7d733a333a2275726c223b613a323a7b733a333a227a6970223b733a33313a2268747470733a2f2f6765742e7479706f332e6f72672f382e372e352f7a6970223b733a333a22746172223b733a32373a2268747470733a2f2f6765742e7479706f332e6f72672f382e372e35223b7d7d733a353a22382e372e34223b613a353a7b733a373a2276657273696f6e223b733a353a22382e372e34223b733a343a2264617465223b733a32333a22323031372d30372d32352031363a34373a323720555443223b733a343a2274797065223b733a373a22726567756c6172223b733a393a22636865636b73756d73223b613a323a7b733a333a22746172223b613a323a7b733a343a2273686131223b733a34303a2231313239633734303739366161626266326566626335653433663839326465626537653164353833223b733a333a226d6435223b733a33323a223066623862663938346338653433353639313138313062366535336132363136223b7d733a333a227a6970223b613a323a7b733a343a2273686131223b733a34303a2233323863393535323937333161336462376562656162366332653330346533336231633464626663223b733a333a226d6435223b733a33323a226234373232643733393537303938376433363962633764336333376161366139223b7d7d733a333a2275726c223b613a323a7b733a333a227a6970223b733a33313a2268747470733a2f2f6765742e7479706f332e6f72672f382e372e342f7a6970223b733a333a22746172223b733a32373a2268747470733a2f2f6765742e7479706f332e6f72672f382e372e34223b7d7d733a353a22382e372e33223b613a353a7b733a373a2276657273696f6e223b733a353a22382e372e33223b733a343a2264617465223b733a32333a22323031372d30372d30342031303a30393a313520555443223b733a343a2274797065223b733a373a22726567756c6172223b733a393a22636865636b73756d73223b613a323a7b733a333a22746172223b613a323a7b733a343a2273686131223b733a34303a2233393961633430666231396363356137366436336537343334316534363333663363613665393233223b733a333a226d6435223b733a33323a223038613463633836323936306432633333386465653330303263383839633266223b7d733a333a227a6970223b613a323a7b733a343a2273686131223b733a34303a2233333263636335373331323765613835613937386432376539643363376261653035333066316232223b733a333a226d6435223b733a33323a223233373635323461653563656339363132633465353630666331623939313863223b7d7d733a333a2275726c223b613a323a7b733a333a227a6970223b733a33313a2268747470733a2f2f6765742e7479706f332e6f72672f382e372e332f7a6970223b733a333a22746172223b733a32373a2268747470733a2f2f6765742e7479706f332e6f72672f382e372e33223b7d7d733a353a22382e372e32223b613a353a7b733a373a2276657273696f6e223b733a353a22382e372e32223b733a343a2264617465223b733a32333a22323031372d30362d32302031323a33363a333620555443223b733a343a2274797065223b733a373a22726567756c6172223b733a393a22636865636b73756d73223b613a323a7b733a333a22746172223b613a323a7b733a343a2273686131223b733a34303a2230363039633061616165653665326338616238363631303663386261343330346234336534376430223b733a333a226d6435223b733a33323a223038346133333666373635313637313737346437316563643563653239386136223b7d733a333a227a6970223b613a323a7b733a343a2273686131223b733a34303a2234353739663736303266643731633933333761356638326430383063663437313964616636613933223b733a333a226d6435223b733a33323a226430356563663835363030343461393234366334366339323935386231393864223b7d7d733a333a2275726c223b613a323a7b733a333a227a6970223b733a33313a2268747470733a2f2f6765742e7479706f332e6f72672f382e372e322f7a6970223b733a333a22746172223b733a32373a2268747470733a2f2f6765742e7479706f332e6f72672f382e372e32223b7d7d733a353a22382e372e31223b613a353a7b733a373a2276657273696f6e223b733a353a22382e372e31223b733a343a2264617465223b733a32333a22323031372d30342d31382031373a30353a353320555443223b733a343a2274797065223b733a373a22726567756c6172223b733a393a22636865636b73756d73223b613a323a7b733a333a22746172223b613a323a7b733a343a2273686131223b733a34303a2265373934363662666663383166323730663563323632643031613132356538326232653139383961223b733a333a226d6435223b733a33323a223439336563356639333031346631323964343561333062656338623437356438223b7d733a333a227a6970223b613a323a7b733a343a2273686131223b733a34303a2237376639626138336661386439333235383162386361376432343030663234363336316537616132223b733a333a226d6435223b733a33323a223230653836633531663136346130383037373162623263653833626532633564223b7d7d733a333a2275726c223b613a323a7b733a333a227a6970223b733a33313a2268747470733a2f2f6765742e7479706f332e6f72672f382e372e312f7a6970223b733a333a22746172223b733a32373a2268747470733a2f2f6765742e7479706f332e6f72672f382e372e31223b7d7d733a353a22382e372e30223b613a353a7b733a373a2276657273696f6e223b733a353a22382e372e30223b733a343a2264617465223b733a32333a22323031372d30342d30342031303a35363a313220555443223b733a343a2274797065223b733a373a2272656c65617365223b733a393a22636865636b73756d73223b613a323a7b733a333a22746172223b613a323a7b733a343a2273686131223b733a34303a2236326132383531393065393839303563373833316538396563366331366164366332633534306564223b733a333a226d6435223b733a33323a223730666664396561393364383264653832383166626433616133366438346632223b7d733a333a227a6970223b613a323a7b733a343a2273686131223b733a34303a2238396663666435303333393136343866393864366433653830663036346563613032383563396430223b733a333a226d6435223b733a33323a223137386333393232663536303932303761383965383431316335366531393166223b7d7d733a333a2275726c223b613a323a7b733a333a227a6970223b733a33313a2268747470733a2f2f6765742e7479706f332e6f72672f382e372e302f7a6970223b733a333a22746172223b733a32373a2268747470733a2f2f6765742e7479706f332e6f72672f382e372e30223b7d7d733a32313a22382e372d736e617073686f742d3230313730343034223b613a353a7b733a373a2276657273696f6e223b733a32313a22382e372d736e617073686f742d3230313730343034223b733a343a2264617465223b733a32333a22323031372d30342d30342030383a34383a313220555443223b733a343a2274797065223b733a31313a22646576656c6f706d656e74223b733a393a22636865636b73756d73223b613a323a7b733a333a22746172223b613a323a7b733a343a2273686131223b733a34303a2236313561333537613965393561373365323435653763623131373335353432383838313033393031223b733a333a226d6435223b733a33323a223836613537343833336635663137393239636634366236343166343461326134223b7d733a333a227a6970223b613a323a7b733a343a2273686131223b733a34303a2232646562633637366565626536356666303864346438656436666239626266316261666135393835223b733a333a226d6435223b733a33323a226661626363316639393334343862376430656331613931356438656163313332223b7d7d733a333a2275726c223b613a323a7b733a333a227a6970223b733a34373a2268747470733a2f2f6765742e7479706f332e6f72672f382e372d736e617073686f742d32303137303430342f7a6970223b733a333a22746172223b733a34333a2268747470733a2f2f6765742e7479706f332e6f72672f382e372d736e617073686f742d3230313730343034223b7d7d733a353a22382e362e31223b613a353a7b733a373a2276657273696f6e223b733a353a22382e362e31223b733a343a2264617465223b733a32333a22323031372d30322d32382031303a35313a353520555443223b733a343a2274797065223b733a383a227365637572697479223b733a393a22636865636b73756d73223b613a323a7b733a333a22746172223b613a323a7b733a343a2273686131223b733a34303a2237656636656630346265626335336331323132346136663562363837663366353533656231396565223b733a333a226d6435223b733a33323a223737663063336434323735386632663134663361316662353534326239613239223b7d733a333a227a6970223b613a323a7b733a343a2273686131223b733a34303a2236646462333533323064616631336332653932333137383334333965316532363637643939343862223b733a333a226d6435223b733a33323a223734623338373464356134626532393739656133646262613436333832393631223b7d7d733a333a2275726c223b613a323a7b733a333a227a6970223b733a33313a2268747470733a2f2f6765742e7479706f332e6f72672f382e362e312f7a6970223b733a333a22746172223b733a32373a2268747470733a2f2f6765742e7479706f332e6f72672f382e362e31223b7d7d733a353a22382e362e30223b613a353a7b733a373a2276657273696f6e223b733a353a22382e362e30223b733a343a2264617465223b733a32333a22323031372d30322d31342031343a33353a343620555443223b733a343a2274797065223b733a373a2272656c65617365223b733a393a22636865636b73756d73223b613a323a7b733a333a22746172223b613a323a7b733a343a2273686131223b733a34303a2261383165366639333130356562366535646162373530306437636364623266333038626562303438223b733a333a226d6435223b733a33323a226431343663346566303533353737633463663965383236316438623535303165223b7d733a333a227a6970223b613a323a7b733a343a2273686131223b733a34303a2262346433623536303661633966393136373434663866393465636635373930336364386461653634223b733a333a226d6435223b733a33323a226630363036393536303766393264353066333234343038353865316635616132223b7d7d733a333a2275726c223b613a323a7b733a333a227a6970223b733a33313a2268747470733a2f2f6765742e7479706f332e6f72672f382e362e302f7a6970223b733a333a22746172223b733a32373a2268747470733a2f2f6765742e7479706f332e6f72672f382e362e30223b7d7d733a353a22382e352e31223b613a353a7b733a373a2276657273696f6e223b733a353a22382e352e31223b733a343a2264617465223b733a32333a22323031372d30312d30332031313a31393a313820555443223b733a343a2274797065223b733a383a227365637572697479223b733a393a22636865636b73756d73223b613a323a7b733a333a22746172223b613a323a7b733a343a2273686131223b733a34303a2265623539313737383461656335356438303639383333383364383138313232623730353336306363223b733a333a226d6435223b733a33323a223831363838626534333061366431313537613864616332333930383437396663223b7d733a333a227a6970223b613a323a7b733a343a2273686131223b733a34303a2261396262366561313636353666643339363961363336313661393936623864396139326163356135223b733a333a226d6435223b733a33323a223664353735636562663433646661333831636539316663663535363734393830223b7d7d733a333a2275726c223b613a323a7b733a333a227a6970223b733a33313a2268747470733a2f2f6765742e7479706f332e6f72672f382e352e312f7a6970223b733a333a22746172223b733a32373a2268747470733a2f2f6765742e7479706f332e6f72672f382e352e31223b7d7d733a353a22382e352e30223b613a353a7b733a373a2276657273696f6e223b733a353a22382e352e30223b733a343a2264617465223b733a32333a22323031362d31322d32302031343a31333a343520555443223b733a343a2274797065223b733a373a2272656c65617365223b733a393a22636865636b73756d73223b613a323a7b733a333a22746172223b613a323a7b733a343a2273686131223b733a34303a2261346661633432386532353932346235373436366637333565363066633239353861646535323766223b733a333a226d6435223b733a33323a226434313865303064643333326166353862343730346230643331386233663666223b7d733a333a227a6970223b613a323a7b733a343a2273686131223b733a34303a2261666237653465323034653433393731336534353532393633646432396462383761373334383263223b733a333a226d6435223b733a33323a226333646434383261383231313333323034643664373834613934383737313766223b7d7d733a333a2275726c223b613a323a7b733a333a227a6970223b733a33313a2268747470733a2f2f6765742e7479706f332e6f72672f382e352e302f7a6970223b733a333a22746172223b733a32373a2268747470733a2f2f6765742e7479706f332e6f72672f382e352e30223b7d7d733a353a22382e342e31223b613a353a7b733a373a2276657273696f6e223b733a353a22382e342e31223b733a343a2264617465223b733a32333a22323031362d31312d32322031303a34343a343720555443223b733a343a2274797065223b733a383a227365637572697479223b733a393a22636865636b73756d73223b613a323a7b733a333a22746172223b613a323a7b733a343a2273686131223b733a34303a2264373733333663613636363263623032326535346633636439623238323631303937616636633764223b733a333a226d6435223b733a33323a223138623539653961306334613536613462363166623838373437373731386337223b7d733a333a227a6970223b613a323a7b733a343a2273686131223b733a34303a2264346262366666363030356231303738366363303933393737333961666164646435356665376333223b733a333a226d6435223b733a33323a226131616337373638653366393937323732366564396637643663393766633437223b7d7d733a333a2275726c223b613a323a7b733a333a227a6970223b733a33313a2268747470733a2f2f6765742e7479706f332e6f72672f382e342e312f7a6970223b733a333a22746172223b733a32373a2268747470733a2f2f6765742e7479706f332e6f72672f382e342e31223b7d7d733a353a22382e342e30223b613a353a7b733a373a2276657273696f6e223b733a353a22382e342e30223b733a343a2264617465223b733a32333a22323031362d31302d31382031313a35303a323820555443223b733a343a2274797065223b733a373a2272656c65617365223b733a393a22636865636b73756d73223b613a323a7b733a333a22746172223b613a323a7b733a343a2273686131223b733a34303a2230666362396231346432396532613134303136363061646261383933613837653464643463326666223b733a333a226d6435223b733a33323a223338363935666532643266373063396261346339373565636234666331666232223b7d733a333a227a6970223b613a323a7b733a343a2273686131223b733a34303a2230303661303632663839386635393666313566376135636534353631353331356330396334383631223b733a333a226d6435223b733a33323a226363623562366361656636326334326563316436323931626561626466376232223b7d7d733a333a2275726c223b613a323a7b733a333a227a6970223b733a33313a2268747470733a2f2f6765742e7479706f332e6f72672f382e342e302f7a6970223b733a333a22746172223b733a32373a2268747470733a2f2f6765742e7479706f332e6f72672f382e342e30223b7d7d733a353a22382e332e31223b613a353a7b733a373a2276657273696f6e223b733a353a22382e332e31223b733a343a2264617465223b733a32333a22323031362d30392d31332031303a31323a323120555443223b733a343a2274797065223b733a383a227365637572697479223b733a393a22636865636b73756d73223b613a323a7b733a333a22746172223b613a323a7b733a343a2273686131223b733a34303a2236636636333863303230356235653931643230333830346165623266616166316363363066376131223b733a333a226d6435223b733a33323a223261333037643931663666313961373666363232313664613064336230333138223b7d733a333a227a6970223b613a323a7b733a343a2273686131223b733a34303a2233313738633637626462326430386435353439303566383435356330643564633834373936393661223b733a333a226d6435223b733a33323a223232376466323931663363333630393863663935633363613834306165653437223b7d7d733a333a2275726c223b613a323a7b733a333a227a6970223b733a33313a2268747470733a2f2f6765742e7479706f332e6f72672f382e332e312f7a6970223b733a333a22746172223b733a32373a2268747470733a2f2f6765742e7479706f332e6f72672f382e332e31223b7d7d733a353a22382e332e30223b613a353a7b733a373a2276657273696f6e223b733a353a22382e332e30223b733a343a2264617465223b733a32333a22323031362d30382d33302031343a30303a313520555443223b733a343a2274797065223b733a373a2272656c65617365223b733a393a22636865636b73756d73223b613a323a7b733a333a22746172223b613a323a7b733a343a2273686131223b733a34303a2266363433373364623439346430393539613431653038353836363163633236626630316462343938223b733a333a226d6435223b733a33323a223233373331386638623365353738623839373332336261653831636161396531223b7d733a333a227a6970223b613a323a7b733a343a2273686131223b733a34303a2264616261326433333132646336643833343232646330633865643464313332663536346365626436223b733a333a226d6435223b733a33323a223938663466353036656635656365626639663431356338323165393964626138223b7d7d733a333a2275726c223b613a323a7b733a333a227a6970223b733a33313a2268747470733a2f2f6765742e7479706f332e6f72672f382e332e302f7a6970223b733a333a22746172223b733a32373a2268747470733a2f2f6765742e7479706f332e6f72672f382e332e30223b7d7d733a353a22382e322e31223b613a353a7b733a373a2276657273696f6e223b733a353a22382e322e31223b733a343a2264617465223b733a32333a22323031362d30372d31392031303a34363a333520555443223b733a343a2274797065223b733a383a227365637572697479223b733a393a22636865636b73756d73223b613a323a7b733a333a22746172223b613a323a7b733a343a2273686131223b733a34303a2232323239373165306664633866303636353861383437373730323033616237326539366330643436223b733a333a226d6435223b733a33323a226563383735306363343531633066666662663166316133373764646439393762223b7d733a333a227a6970223b613a323a7b733a343a2273686131223b733a34303a2265376362623465616236663936366138303535613834623632616132383838643730646330336634223b733a333a226d6435223b733a33323a226530313635346535616437623436393532643963386562383238393038303263223b7d7d733a333a2275726c223b613a323a7b733a333a227a6970223b733a33313a2268747470733a2f2f6765742e7479706f332e6f72672f382e322e312f7a6970223b733a333a22746172223b733a32373a2268747470733a2f2f6765742e7479706f332e6f72672f382e322e31223b7d7d733a353a22382e322e30223b613a353a7b733a373a2276657273696f6e223b733a353a22382e322e30223b733a343a2264617465223b733a32333a22323031362d30372d30352030393a35353a323320555443223b733a343a2274797065223b733a373a2272656c65617365223b733a393a22636865636b73756d73223b613a323a7b733a333a22746172223b613a323a7b733a343a2273686131223b733a34303a2239333462646432356565303235643563323638663238653034643464353063366330326133613864223b733a333a226d6435223b733a33323a223036333731393863386165333034346261666438376265316539383833663337223b7d733a333a227a6970223b613a323a7b733a343a2273686131223b733a34303a2238396263626436393739613330376163306239663864386337666664643064636365663131626236223b733a333a226d6435223b733a33323a223461616533393139313236663161373936663536363564306233626662333835223b7d7d733a333a2275726c223b613a323a7b733a333a227a6970223b733a33313a2268747470733a2f2f6765742e7479706f332e6f72672f382e322e302f7a6970223b733a333a22746172223b733a32373a2268747470733a2f2f6765742e7479706f332e6f72672f382e322e30223b7d7d733a353a22382e312e32223b613a353a7b733a373a2276657273696f6e223b733a353a22382e312e32223b733a343a2264617465223b733a32333a22323031362d30352d32342031303a31303a333420555443223b733a343a2274797065223b733a383a227365637572697479223b733a393a22636865636b73756d73223b613a323a7b733a333a22746172223b613a323a7b733a343a2273686131223b733a34303a2235336337666465623136343032306362313933303266633031616435396462343835623232623638223b733a333a226d6435223b733a33323a223734613334313565353838633238353731353232356331373636613531353762223b7d733a333a227a6970223b613a323a7b733a343a2273686131223b733a34303a2266643439396265666661363636376139666266326239613138343066666637623362613761353363223b733a333a226d6435223b733a33323a223238386436646336333031376332626133313361633761323334653739656236223b7d7d733a333a2275726c223b613a323a7b733a333a227a6970223b733a33313a2268747470733a2f2f6765742e7479706f332e6f72672f382e312e322f7a6970223b733a333a22746172223b733a32373a2268747470733a2f2f6765742e7479706f332e6f72672f382e312e32223b7d7d733a353a22382e312e31223b613a353a7b733a373a2276657273696f6e223b733a353a22382e312e31223b733a343a2264617465223b733a32333a22323031362d30352d32342030383a30343a303820555443223b733a343a2274797065223b733a383a227365637572697479223b733a393a22636865636b73756d73223b613a323a7b733a333a22746172223b613a323a7b733a343a2273686131223b733a34303a2232363866663636646636343564366333353961343334323766316139376266366136396463366337223b733a333a226d6435223b733a33323a223465666538383065393465306334326637326537346235613133343336323061223b7d733a333a227a6970223b613a323a7b733a343a2273686131223b733a34303a2233633765666333623230333333383031366136393633356633363765373862333238323666666633223b733a333a226d6435223b733a33323a223831643832656335666463623836333964643235393838313165626538646630223b7d7d733a333a2275726c223b613a323a7b733a333a227a6970223b733a33313a2268747470733a2f2f6765742e7479706f332e6f72672f382e312e312f7a6970223b733a333a22746172223b733a32373a2268747470733a2f2f6765742e7479706f332e6f72672f382e312e31223b7d7d733a353a22382e312e30223b613a353a7b733a373a2276657273696f6e223b733a353a22382e312e30223b733a343a2264617465223b733a32333a22323031362d30352d30332031343a31303a353020555443223b733a343a2274797065223b733a373a2272656c65617365223b733a393a22636865636b73756d73223b613a323a7b733a333a22746172223b613a323a7b733a343a2273686131223b733a34303a2266653161383961343232333430396237336132336262643832323363616666303732393030316434223b733a333a226d6435223b733a33323a223234346131303235386130383035333937323865633837353435653265616136223b7d733a333a227a6970223b613a323a7b733a343a2273686131223b733a34303a2265353631356162393437666463626532373732383639363636643765303563633432363338613264223b733a333a226d6435223b733a33323a226331366135316465373932343964383532376165323162373438326635386435223b7d7d733a333a2275726c223b613a323a7b733a333a227a6970223b733a33313a2268747470733a2f2f6765742e7479706f332e6f72672f382e312e302f7a6970223b733a333a22746172223b733a32373a2268747470733a2f2f6765742e7479706f332e6f72672f382e312e30223b7d7d733a353a22382e302e31223b613a353a7b733a373a2276657273696f6e223b733a353a22382e302e31223b733a343a2264617465223b733a32333a22323031362d30342d31322030393a33363a353220555443223b733a343a2274797065223b733a383a227365637572697479223b733a393a22636865636b73756d73223b613a323a7b733a333a22746172223b613a323a7b733a343a2273686131223b733a34303a2265393033363833363766373861346131353837633966383136386230343563343661376232333139223b733a333a226d6435223b733a33323a223038623632663766323262663830646437616436356262363231376338323138223b7d733a333a227a6970223b613a323a7b733a343a2273686131223b733a34303a2236663439353266626131333739363361356231303164653564613365326666633939376565313439223b733a333a226d6435223b733a33323a226636396536653534643036383238313437306361643534643865666634626565223b7d7d733a333a2275726c223b613a323a7b733a333a227a6970223b733a33313a2268747470733a2f2f6765742e7479706f332e6f72672f382e302e312f7a6970223b733a333a22746172223b733a32373a2268747470733a2f2f6765742e7479706f332e6f72672f382e302e31223b7d7d733a353a22382e302e30223b613a353a7b733a373a2276657273696f6e223b733a353a22382e302e30223b733a343a2264617465223b733a32333a22323031362d30332d32322031333a34323a333420555443223b733a343a2274797065223b733a373a2272656c65617365223b733a393a22636865636b73756d73223b613a323a7b733a333a22746172223b613a323a7b733a343a2273686131223b733a34303a2236363235646336653462383665616666396337643131313433363564326335303337393031623238223b733a333a226d6435223b733a33323a223032363931386338313966306239326237346465343332306464333735306231223b7d733a333a227a6970223b613a323a7b733a343a2273686131223b733a34303a2263303536333864363063613062636463373433376336343638373664633436346336613761343061223b733a333a226d6435223b733a33323a223834633162663865613630613437326131316361303637386133343933396135223b7d7d733a333a2275726c223b613a323a7b733a333a227a6970223b733a33313a2268747470733a2f2f6765742e7479706f332e6f72672f382e302e302f7a6970223b733a333a22746172223b733a32373a2268747470733a2f2f6765742e7479706f332e6f72672f382e302e30223b7d7d7d733a363a226c6174657374223b733a363a22382e372e3136223b733a363a22737461626c65223b733a363a22382e372e3136223b733a363a22616374697665223b623a313b7d733a31333a226c61746573745f737461626c65223b733a353a22392e332e30223b733a31373a226c61746573745f6f6c645f737461626c65223b733a353a22392e322e31223b733a31303a226c61746573745f6c7473223b733a363a22382e372e3136223b733a31343a226c61746573745f6f6c645f6c7473223b733a363a22372e362e3239223b7d),
(36, 'extensionDataImport', 'typo3conf/ext/news/ext_tables_static+adt.sql', 0x733a303a22223b),
(37, 'extensionDataImport', 'typo3conf/ext/fluid_styled_responsive_images/ext_tables_static+adt.sql', 0x733a303a22223b),
(38, 'extensionDataImport', 'typo3conf/ext/rx_shariff/ext_tables_static+adt.sql', 0x733a303a22223b),
(39, 'extensionDataImport', 'typo3/sysext/scheduler/ext_tables_static+adt.sql', 0x733a303a22223b),
(40, 'extensionDataImport', 'typo3conf/ext/realurl/ext_tables_static+adt.sql', 0x733a303a22223b),
(41, 'extensionDataImport', 'typo3conf/ext/vhs/ext_tables_static+adt.sql', 0x733a303a22223b),
(42, 'extensionDataImport', 'typo3/sysext/indexed_search/ext_tables_static+adt.sql', 0x733a303a22223b),
(43, 'extensionDataImport', 'typo3conf/ext/generic_lib/Initialisation/Files', 0x693a313b),
(44, 'extensionDataImport', 'typo3conf/ext/generic_lib/ext_tables_static+adt.sql', 0x733a33323a226232656165306630653163306636373062346563373233333731316666303731223b),
(45, 'extensionDataImport', 'typo3conf/ext/generic_lib/Initialisation/dataImported', 0x693a313b),
(46, 'tx_realurl', 'updateLevel', 0x693a343b),
(52, 'core', 'formProtectionSessionToken:1', 0x733a36343a2263643266636436643730393363306239366433363132373661626336333864356130646164343637343361316664363763623766393335663634386133656663223b),
(53, 'core', 'sys_refindex_lastUpdate', 0x693a313532393439383735373b);

UNLOCK TABLES;
-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `sys_template`
--

DROP TABLE IF EXISTS `sys_template`;
CREATE TABLE IF NOT EXISTS `sys_template` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `t3ver_state` smallint(6) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `sorting` int(10) unsigned NOT NULL DEFAULT '0',
  `crdate` int(10) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `sitetitle` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `hidden` smallint(5) unsigned NOT NULL DEFAULT '0',
  `starttime` int(10) unsigned NOT NULL DEFAULT '0',
  `endtime` int(10) unsigned NOT NULL DEFAULT '0',
  `root` smallint(5) unsigned NOT NULL DEFAULT '0',
  `clear` smallint(5) unsigned NOT NULL DEFAULT '0',
  `include_static_file` text COLLATE utf8_unicode_ci,
  `constants` text COLLATE utf8_unicode_ci,
  `config` text COLLATE utf8_unicode_ci,
  `nextLevel` varchar(5) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8_unicode_ci,
  `basedOn` tinytext COLLATE utf8_unicode_ci,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT '0',
  `includeStaticAfterBasedOn` smallint(5) unsigned NOT NULL DEFAULT '0',
  `static_file_mode` smallint(5) unsigned NOT NULL DEFAULT '0',
  `tx_impexp_origuid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`),
  KEY `parent` (`pid`,`deleted`,`hidden`,`sorting`),
  KEY `roottemplate` (`deleted`,`hidden`,`root`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Daten für Tabelle `sys_template`
--
LOCK TABLES `sys_template` WRITE;
INSERT INTO `sys_template` (`uid`, `pid`, `t3ver_oid`, `t3ver_id`, `t3ver_wsid`, `t3ver_label`, `t3ver_state`, `t3ver_stage`, `t3ver_count`, `t3ver_tstamp`, `t3ver_move_id`, `t3_origuid`, `tstamp`, `sorting`, `crdate`, `cruser_id`, `title`, `sitetitle`, `hidden`, `starttime`, `endtime`, `root`, `clear`, `include_static_file`, `constants`, `config`, `nextLevel`, `description`, `basedOn`, `deleted`, `includeStaticAfterBasedOn`, `static_file_mode`, `tx_impexp_origuid`) VALUES
(1, 1, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1528979718, 256, 1526489637, 1, 'whiteroom generic', 'whiteRoom', 0, 0, 0, 1, 3, 'EXT:news/Configuration/TypoScript,EXT:fluid_styled_content/Configuration/TypoScript/,EXT:rx_shariff/Configuration/TypoScript/WithoutJQueryAndFontawesome,EXT:indexed_search/Configuration/TypoScript,EXT:metaseo/Configuration/TypoScript,EXT:form/Configuration/TypoScript/,EXT:generic_lib/Configuration/TypoScript', '\r\n', '\r\n', '', NULL, '', 0, 0, 0, 1);

UNLOCK TABLES;
-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `tt_content`
--

DROP TABLE IF EXISTS `tt_content`;
CREATE TABLE IF NOT EXISTS `tt_content` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `t3ver_state` smallint(6) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `crdate` int(10) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(10) unsigned NOT NULL DEFAULT '0',
  `editlock` smallint(5) unsigned NOT NULL DEFAULT '0',
  `hidden` smallint(5) unsigned NOT NULL DEFAULT '0',
  `sorting` int(10) unsigned NOT NULL DEFAULT '0',
  `CType` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `header` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `header_position` varchar(6) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `rowDescription` text COLLATE utf8_unicode_ci,
  `bodytext` mediumtext COLLATE utf8_unicode_ci,
  `bullets_type` smallint(5) unsigned NOT NULL DEFAULT '0',
  `uploads_description` smallint(5) unsigned NOT NULL DEFAULT '0',
  `uploads_type` smallint(5) unsigned NOT NULL DEFAULT '0',
  `assets` int(10) unsigned NOT NULL DEFAULT '0',
  `image` int(10) unsigned NOT NULL DEFAULT '0',
  `imagewidth` int(10) unsigned NOT NULL DEFAULT '0',
  `imageorient` smallint(5) unsigned NOT NULL DEFAULT '0',
  `imagecols` smallint(5) unsigned NOT NULL DEFAULT '0',
  `imageborder` smallint(5) unsigned NOT NULL DEFAULT '0',
  `media` int(10) unsigned NOT NULL DEFAULT '0',
  `layout` int(10) unsigned NOT NULL DEFAULT '0',
  `frame_class` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'default',
  `deleted` smallint(5) unsigned NOT NULL DEFAULT '0',
  `cols` int(10) unsigned NOT NULL DEFAULT '0',
  `spaceBefore` smallint(5) unsigned NOT NULL DEFAULT '0',
  `spaceAfter` smallint(5) unsigned NOT NULL DEFAULT '0',
  `space_before_class` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `space_after_class` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `records` text COLLATE utf8_unicode_ci,
  `pages` text COLLATE utf8_unicode_ci,
  `starttime` int(10) unsigned NOT NULL DEFAULT '0',
  `endtime` int(10) unsigned NOT NULL DEFAULT '0',
  `colPos` int(10) unsigned NOT NULL DEFAULT '0',
  `subheader` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `fe_group` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `header_link` varchar(1024) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `image_zoom` smallint(5) unsigned NOT NULL DEFAULT '0',
  `header_layout` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `list_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `sectionIndex` smallint(5) unsigned NOT NULL DEFAULT '0',
  `linkToTop` smallint(5) unsigned NOT NULL DEFAULT '0',
  `file_collections` text COLLATE utf8_unicode_ci,
  `filelink_size` smallint(5) unsigned NOT NULL DEFAULT '0',
  `filelink_sorting` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `target` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `date` int(10) unsigned NOT NULL DEFAULT '0',
  `recursive` smallint(5) unsigned NOT NULL DEFAULT '0',
  `imageheight` int(10) unsigned NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `pi_flexform` mediumtext COLLATE utf8_unicode_ci,
  `accessibility_title` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `accessibility_bypass` smallint(5) unsigned NOT NULL DEFAULT '0',
  `accessibility_bypass_text` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `l18n_parent` int(11) NOT NULL DEFAULT '0',
  `l18n_diffsource` mediumblob,
  `l10n_source` int(11) NOT NULL DEFAULT '0',
  `selected_categories` text COLLATE utf8_unicode_ci,
  `category_field` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `table_class` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `table_caption` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `table_delimiter` smallint(5) unsigned NOT NULL DEFAULT '0',
  `table_enclosure` smallint(5) unsigned NOT NULL DEFAULT '0',
  `table_header_position` smallint(5) unsigned NOT NULL DEFAULT '0',
  `table_tfoot` smallint(5) unsigned NOT NULL DEFAULT '0',
  `tx_impexp_origuid` int(11) NOT NULL DEFAULT '0',
  `l10n_state` text COLLATE utf8_unicode_ci,
  `categories` int(11) NOT NULL DEFAULT '0',
  `tx_news_related_news` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`),
  KEY `parent` (`pid`,`sorting`),
  KEY `language` (`l18n_parent`,`sys_language_uid`),
  KEY `index_newscontent` (`tx_news_related_news`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=18 ;

DROP TABLE IF EXISTS `tt_content`;
CREATE TABLE IF NOT EXISTS `tt_content` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `t3ver_state` smallint(6) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `crdate` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cruser_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `editlock` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `hidden` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `sorting` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `CType` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `header` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `header_position` varchar(6) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `rowDescription` text COLLATE utf8_unicode_ci,
  `bodytext` mediumtext COLLATE utf8_unicode_ci,
  `bullets_type` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `uploads_description` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `uploads_type` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `assets` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `image` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `imagewidth` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `imageorient` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `imagecols` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `imageborder` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `media` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `layout` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `frame_class` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'default',
  `deleted` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `cols` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `spaceBefore` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `spaceAfter` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `space_before_class` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `space_after_class` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `records` text COLLATE utf8_unicode_ci,
  `pages` text COLLATE utf8_unicode_ci,
  `starttime` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `endtime` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `colPos` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `subheader` text COLLATE utf8_unicode_ci,
  `fe_group` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `header_link` varchar(1024) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `image_zoom` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `header_layout` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `list_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `sectionIndex` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `linkToTop` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `file_collections` text COLLATE utf8_unicode_ci,
  `filelink_size` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `filelink_sorting` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `target` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `date` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `recursive` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `imageheight` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `pi_flexform` mediumtext COLLATE utf8_unicode_ci,
  `accessibility_title` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `accessibility_bypass` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `accessibility_bypass_text` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `l18n_parent` int(11) NOT NULL DEFAULT '0',
  `l18n_diffsource` mediumblob,
  `l10n_source` int(11) NOT NULL DEFAULT '0',
  `selected_categories` text COLLATE utf8_unicode_ci,
  `category_field` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `table_class` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `table_caption` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `table_delimiter` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `table_enclosure` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `table_header_position` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `table_tfoot` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `tx_impexp_origuid` int(11) NOT NULL DEFAULT '0',
  `l10n_state` text COLLATE utf8_unicode_ci,
  `categories` int(11) NOT NULL DEFAULT '0',
  `tx_news_related_news` int(11) NOT NULL DEFAULT '0',
  `filelink_sorting_direction` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`),
  KEY `parent` (`pid`,`sorting`),
  KEY `language` (`l18n_parent`,`sys_language_uid`),
  KEY `index_newscontent` (`tx_news_related_news`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Daten für Tabelle `tt_content`
--
LOCK TABLES `tt_content` WRITE;
INSERT INTO `tt_content` (`uid`, `pid`, `t3ver_oid`, `t3ver_id`, `t3ver_wsid`, `t3ver_label`, `t3ver_state`, `t3ver_stage`, `t3ver_count`, `t3ver_tstamp`, `t3ver_move_id`, `t3_origuid`, `tstamp`, `crdate`, `cruser_id`, `editlock`, `hidden`, `sorting`, `CType`, `header`, `header_position`, `rowDescription`, `bodytext`, `bullets_type`, `uploads_description`, `uploads_type`, `assets`, `image`, `imagewidth`, `imageorient`, `imagecols`, `imageborder`, `media`, `layout`, `frame_class`, `deleted`, `cols`, `spaceBefore`, `spaceAfter`, `space_before_class`, `space_after_class`, `records`, `pages`, `starttime`, `endtime`, `colPos`, `subheader`, `fe_group`, `header_link`, `image_zoom`, `header_layout`, `list_type`, `sectionIndex`, `linkToTop`, `file_collections`, `filelink_size`, `filelink_sorting`, `target`, `date`, `recursive`, `imageheight`, `sys_language_uid`, `pi_flexform`, `accessibility_title`, `accessibility_bypass`, `accessibility_bypass_text`, `l18n_parent`, `l18n_diffsource`, `l10n_source`, `selected_categories`, `category_field`, `table_class`, `table_caption`, `table_delimiter`, `table_enclosure`, `table_header_position`, `table_tfoot`, `tx_impexp_origuid`, `l10n_state`, `categories`, `tx_news_related_news`) VALUES
(1, 11, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1528987737, 1528987737, 1, 0, 0, 256, 'textmedia', 'Tour du Monde sous marin (Premier partie)', '', '', '<h3>I un écueil fuyant</h3>\r\nL\'année 1866 fut marquée par un événement bizarre, un phénomène inexpliqué et inexplicable que personne n\'a sans doute&nbsp;oublié. Sans parler des rumeurs qui agitaient les populations des ports et surexcitaient l\'esprit public à l\'intérieur des&nbsp;continents les gens de mer furent particulièrement émus. Les négociants, armateurs, capitaines de navires, skippers et&nbsp;masters de l\'Europe et de l\'Amérique, officiers des marines militaires de tous pays, et, après eux, les gouvernements des&nbsp;divers États des deux continents, se préoccupèrent de ce fait au plus haut point.\r\n<hr />\r\n<LINK file:32 - download \"Opens internal link in current window\">Rencontrés sur mer</link>&nbsp;Rev. 3. Version 2017-12-01\r\n<hr />\r\n<LINK file:33 - download \"Opens internal link in current window\">Phosphorescent</link>&nbsp;Rev. 3. Version 2017-10-01\r\n<hr />\r\n<LINK file:31 - download \"Opens internal link in current window\">Cuvier, Lacépède,&nbsp;Quatrefages</link>&nbsp;Rev. 3. Version 2017-12-01\r\n<hr />\r\n<LINK file:31 - download \"Opens internal link in current window\">Dimensions admises</link>&nbsp;Rev. 3. Version 2016-07-01\r\n<hr />\r\n<LINK file:31 - download \"Opens internal link in current window\">Objets divers</link>&nbsp;Rev. 3. Version 2016-11-11\r\n<hr />\r\nEn effet, depuis quelque temps, plusieurs navires s\'étaient rencontrés sur mer avec « une chose énorme » un objet long,&nbsp;fusiforme, parfois phosphorescent, infiniment plus vaste et plus rapide qu\'une baleine.', 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 110, 'default', 0, 0, 0, 0, '', '', '', '', 0, 0, 0, '', '', '', 0, '3', '', 1, 0, '', 0, '', '', 0, 0, 0, 0, NULL, '', 0, '', 0, 0x613a313a7b733a383a22626f647974657874223b4e3b7d, 0, '', '', '', NULL, 124, 0, 0, 0, 1, NULL, 0, 0),
(2, 10, 0, 0, 0, '', 0, 0, 0, 0, 0, 3, 1528987737, 1528987737, 1, 0, 0, 256, 'textmedia', 'Das milderte schon etwas ihren Groll', '', '', 'Als einst das zehnjährige Söhnlein eines Nachbars in unheilbarem Siechtum darniederlag und weder das Zureden des Pfarrers, noch dasjenige der Eltern das Kind in seinen Schmerzen und seiner Furcht vor dem Tode zu trösten vermochte, da es so gerne gelebt hätte, so setzte sich Landolt, ruhig seine Pfeife rauchend, an das Bett und sprach zu ihm in so einfachen und treffenden Worten von der Hoffnungslosigkeit seiner Lage, von der Notwendigkeit, sich zu fassen und eine kleine Zeit zu leiden, aber auch von der sanften Erlösung durch den Tod und der seligen, wechsellosen Ruhe, die ihm als einem geduldigen und frommen Knäblein beschieden sei, von der Liebe und Teilnahme, die er, als ein fremder Mann, zu ihm hege, daß das Kind sich von Stund an änderte, mit heiterer Geduld seine Leiden ertrug, bis es vom Tode wirklich erlöst wurde. ', 0, 0, 0, 10, 0, 0, 25, 2, 0, 0, 0, 'default', 0, 0, 0, 0, '', '', '', '', 0, 0, 0, '', '', '', 1, '0', '', 1, 0, '', 0, '', '', 0, 0, 0, 0, NULL, '', 0, '', 0, 0x613a313a7b733a363a22617373657473223b4e3b7d, 0, '', '', '', NULL, 124, 0, 0, 0, 2, NULL, 0, 0),
(3, 9, 0, 0, 0, '', 0, 0, 0, 0, 0, 1, 1528987737, 1528987737, 1, 0, 0, 256, 'textmedia', 'Vingt mille lieues sous les mers', '', '', 'L\'année 1866 fut marquée par un événement bizarre<sup>2</sup>, un phénomène inexpliqué et inexplicable que personne n\'a sans doute&nbsp;oublié. Sans parler des rumeurs qui agitaient les <strong>populations des ports</strong> et surexcitaient l\'esprit public à l\'intérieur des&nbsp;continents les gens de mer furent particulièrement émus. Les négociants, armateurs, capitaines de navires, skippers et&nbsp;masters de l\'Europe et de l\'Amérique, officiers des marines militaires de tous pays, et, après eux, les gouvernements des&nbsp;divers États des deux continents, se préoccupèrent de ce fait au plus haut point.\r\n<hr />\r\nEn effet, depuis quelque temps, plusieurs navires s\'étaient rencontrés sur mer avec « une chose énorme » un objet long,&nbsp;fusiforme, parfois phosphorescent, infiniment plus vaste et plus rapide qu\'une baleine.\r\n<p class=\"align-justify\">Les faits relatifs&nbsp;à cette apparition, consignés aux divers livres de bord, s\'accordaient assez exactement sur la structure de&nbsp;l\'objet ou de l\'être en question, la vitesse inouïe de ses mouvements, la puissance surprenante de sa locomotion, la vie&nbsp;particulière dont il semblait doué. Si c\'était un cétacé, il surpassait en volume tous ceux que la science avait classés&nbsp;jusqu\'alors. Ni Cuvier, ni Lacépède, ni M. Dumeril, ni M. de Quatrefages n\'eussent admis l\'existence d\'un tel monstre — à&nbsp;moins de l\'avoir vu, ce qui s\'appelle vu de leurs propres yeux de savants.</p>\r\nA prendre la moyenne des observations faites à diverses reprises — en rejetant les évaluations timides qui assignaient à cet&nbsp;objet une longueur de deux cents pieds et en repoussant les opinions exagérées qui le disaient large d\'un mille et long de&nbsp;trois — on pouvait affirmer, cependant, que cet être phénoménal dépassait de beaucoup toutes les dimensions admises&nbsp;jusqu\'à ce jour par les ichtyologistes — s\'il existait toutefois.\r\n<hr />\r\nOr, il existait, le fait en lui-même n\'était plus niable, et, avec ce penchant qui pousse au merveilleux la cervelle humaine, on&nbsp;comprendra l\'émotion produite dans le monde entier par cette surnaturelle apparition. Quant à la rejeter au rang des fables,&nbsp;il fallait y renoncer.\r\nEn effet, le 20 juillet 1866, le steamer Governor-Higginson, de Calcutta and Burnach steam navigation Company, avait&nbsp;rencontré cette masse mouvante à cinq milles dans l\'est des côtes de l\'Australie. Le capitaine Baker se crut, tout d\'abord, en&nbsp;présence d\'un écueil inconnu ; il se disposait même à en déterminer la situation exacte, quand deux colonnes d\'eau,&nbsp;projetées par l\'inexplicable objet, s\'élancèrent en sifflant à cent cinquante pieds dans l\'air. Donc, à moins que cet écueil ne&nbsp;fût soumis aux expansions intermittentes d\'un geyser, le Governor-Higginson avait affaire bel et bien à quelque mammifère&nbsp;aquatique, inconnu jusque-là, qui rejetait par ses évents des colonnes d\'eau, mélangées d\'air et de vapeur.\r\n<ul><li><LINK file:32 - download \"Opens internal link in current window\">42°15\'&nbsp;de latitude nord, 60°35\' de longitude à l\'ouest</link></li><li><LINK file:32 - download \"Opens internal link in current window\">Vingt mille lieues sous les mers: 3</link></li><li><LINK file:32 - download \"Opens internal link in current window\">l\'Angleterre, l\'Amérique, l\'Allemagne</link></li><li><LINK file:32 - download \"Opens internal link in current window\">Download File 2: Calcutta and Burnach steam navigation Company</link></li></ul>\r\nPareil fait fut également observé le 23 juillet de la même année, dans les mers du Pacifique, par le Cristobal-Colon, de West&nbsp;India and Pacific steam navigation Company. Donc, ce cétacé extraordinaire pouvait se transporter d\'un endroit à un autre&nbsp;avec une vélocité surprenante, puisque à trois jours d\'intervalle, le Governor-Higginson et le Cristobal-Colon l\'avaient&nbsp;observé en deux points de la carte séparés par une distance de plus de sept cents lieues marines. Quinze jours plus tard, à&nbsp;deux mille lieues de là l\'Helvetia, de la Compagnie Nationale, et le Shannon, du Royal-Mail, marchant à contrebord dans&nbsp;cette portion de l\'Atlantique comprise entre les États-Unis et l\'Europe, se signalèrent respectivement le monstre par 42°15\'&nbsp;de latitude nord, et 60°35\' de longitude à l\'ouest du méridien de Greenwich. Dans cette observation simultanée, on crut&nbsp;pouvoir évaluer la longueur minimum du mammifère à plus de trois cent cinquante pieds anglais, puisque le Shannon et&nbsp;l\'Helvetia étaient de dimension inférieure à lui, bien qu\'ils mesurassent cent mètres de l\'étrave à l\'étambot. Or, les plus&nbsp;vastes baleines, celles qui fréquentent les parages des îles Aléoutiennes, le Kulammak et l\'Umgullick, n\'ont jamais dépassé la&nbsp;longueur de cinquante-six mètres, — si même elles l\'atteignent.\r\n<hr />\r\nCes rapports arrivés coup sur coup, de nouvelles observations faites à bord du transatlantique le Pereire, un abordage entre&nbsp;l\'Etna, de la ligne Inman, et le monstre, un procès-verbal dressé par les officiers de la frégate française la Normandie, un&nbsp;très sérieux relèvement obtenu par l\'état-major du commodore Fitz-James à bord du Lord-Clyde, émurent profondément&nbsp;l\'opinion publique. Dans les pays d\'humeur légère, on plaisanta le phénomène, mais les pays graves et pratiques,&nbsp;l\'Angleterre, l\'Amérique, l\'Allemagne, s\'en préoccupèrent vivement.\r\n\r\n<table summary=\"Tour du Monde sous marin (Premier partie)\"><caption>Les faits relatifs à cette apparition</caption><thead><tr><th scope=\"col\">No.</th><th scope=\"col\">Apparition</th><th scope=\"col\">Date</th><th scope=\"col\">livre de bord</th></tr></thead><tbody><tr><td>666312</td><td>puissance </td><td>2.11.2012</td><td>diverses reprises</td></tr><tr><td>234566</td><td>vitesse </td><td>31.7.2010</td><td>écueil inconnu</td></tr><tr><td>300693</td><td>locomotion</td><td>22.12.2009</td><td>distance de plus de sept cents lieues marines</td></tr><tr><td>245364</td><td>structure </td><td>12.11.2006</td><td>l\'opinion publique</td></tr></tbody></table>\r\nPartout dans les grands centres, le monstre devint à la mode ; on le chanta dans les cafés, on le bafoua dans les journaux,&nbsp;on le joua sur les théâtres. Les canards eurent là une belle occasion de pondre des oeufs de toute couleur. On vit&nbsp;réapparaître dans les journaux — à court de copie — tous les êtres imaginaires et gigantesques, depuis la baleine blanche, le&nbsp;terrible « Moby Dick » des régions hyperboréennes, jusqu\'au Kraken démesuré, dont les tentacules peuvent enlacer un&nbsp;bâtiment de cinq cents tonneaux et l\'entraîner dans les abîmes de l\'Océan. On reproduisit même les procès-verbaux des&nbsp;temps anciens les opinions d\'Aristote et de Pline, qui admettaient l\'existence de ces monstres, puis les récits norvégiens de&nbsp;l\'évêque Pontoppidan, les relations de Paul Heggede, et enfin les rapports de M. Harrington, dont la bonne foi ne peut être&nbsp;soupçonnée, quand il affirme avoir vu, étant à bord du Castillan, en 1857, cet énorme serpent qui n\'avait jamais fréquenté&nbsp;jusqu\'alors que les mers de l\'ancien Constitutionnel.\r\nAlors éclata l\'interminable polémique des crédules et des incrédules dans les sociétés savantes et les journaux scientifiques.&nbsp;La « question du monstre » enflamma les esprits. Les journalistes, qui font profession de science en lutte avec ceux qui font&nbsp;profession d\'esprit, versèrent des flots d\'encre pendant cette mémorable campagne ; quelques-uns même, deux ou trois&nbsp;gouttes de sang, car du serpent de mer, ils en vinrent aux personnalités les plus offensantes.\r\n<hr />\r\nSix mois durant, la guerre se poursuivit avec des chances diverses. Aux articles de fond de l\'Institut géographique du Brésil,&nbsp;de l\'Académie royale des sciences de Berlin, de l\'Association Britannique, de l\'Institution Smithsonnienne de Washington, aux&nbsp;discussions du The Indian Archipelago, du Cosmos de l\'abbé Moigno, des Mittheilungen de Petermann, aux chroniques&nbsp;scientifiques des grands journaux de la France et de l\'étranger, la petite presse ripostait avec une verve intarissable. \r\n<ol><li>L\'année 1866 fut marquée par un événement bizarre</li><li>Ni Cuvier, ni Lacépède, ni M. Dumeril, ni M. de Quatrefages n\'eussent admis l\'existence d\'un tel monstre</li><li>Pareil fait fut également observé le 23 juillet de la même année, dans les mers du Pacifique, par le Cristobal-Colon, de West India and Pacific steam navigation Company</li><li>Ces rapports arrivés coup sur coup</li></ol>\r\nSes&nbsp;spirituels écrivains parodiant un mot de Linné, cité par les adversaires du monstre, soutinrent en effet que « la nature ne&nbsp;faisait pas de sots », et ils adjurèrent leurs contemporains de ne point donner un démenti à la nature, en admettant&nbsp;l\'existence des Krakens, des serpents de mer, des « Moby Dick », et autres élucubrations de marins en délire. Enfin, dans un&nbsp;article d\'un journal satirique très redouté, le plus aimé de ses rédacteurs, brochant sur le tout, poussa au monstre, comme&nbsp;Hippolyte, lui porta un dernier coup et l\'acheva au milieu d\'un éclat de rire universel. L\'esprit avait vaincu la science.Pendant les premiers mois de l\'année 1867, la question parut être enterrée, et elle ne semblait pas devoir renaître, quand de&nbsp;nouveaux faits furent portés à la connaissance du public. Il ne s\'agit plus alors d\'un problème scientifique à résoudre, mais&nbsp;bien d\'un danger réel sérieux à éviter. La question prit une tout autre face. Le monstre redevint îlot, rocher, écueil, mais&nbsp;écueil fuyant, indéterminable, insaisissable.', 0, 0, 0, 2, 0, 0, 25, 1, 0, 0, 0, 'default', 0, 0, 0, 0, '', '', '', '', 0, 0, 0, '', '', '', 1, '3', '', 1, 0, '', 0, '', '', 0, 0, 0, 0, NULL, '', 0, '', 0, 0x613a313a7b733a383a22626f647974657874223b4e3b7d, 0, '', '', '', NULL, 124, 0, 0, 0, 3, NULL, 0, 0),
(4, 8, 0, 0, 0, '', 0, 0, 0, 0, 0, 7, 1528987737, 1528987737, 1, 0, 0, 256, 'textmedia', 'Vingt mille lieues sous les mers', '', '', 'En effet, le 20 juillet 1866, le steamer Governor-Higginson, de Calcutta and Burnach steam navigation Company, avait&nbsp;rencontré cette masse mouvante à cinq milles dans l\'est des côtes de l\'Australie. Le capitaine Baker se crut, tout d\'abord, en&nbsp;présence d\'un écueil inconnu ; il se disposait même à en déterminer la situation exacte, quand deux colonnes d\'eau,&nbsp;projetées par l\'inexplicable objet, s\'élancèrent en sifflant à cent cinquante pieds dans l\'air. Donc, à moins que cet écueil ne&nbsp;fût soumis aux expansions intermittentes d\'un geyser, le Governor-Higginson avait affaire bel et bien à quelque mammifère&nbsp;aquatique, inconnu jusque-là, qui rejetait par ses évents des colonnes d\'eau, mélangées d\'air et de vapeur.\r\n<ul><li><LINK file:32 - download \"Opens internal link in current window\">42°15\'&nbsp;de latitude nord, 60°35\' de longitude à l\'ouest</link></li><li><LINK file:32 - download \"Opens internal link in current window\">Vingt mille lieues sous les mers: 3</link></li><li><LINK file:32 - download \"Opens internal link in current window\">l\'Angleterre, l\'Amérique, l\'Allemagne</link></li><li><LINK file:32 - download \"Opens internal link in current window\">Download File 2: Calcutta and Burnach steam navigation Company</link></li></ul>\r\nPareil fait fut également observé le 23 juillet de la même année, dans les mers du Pacifique, par le Cristobal-Colon, de West&nbsp;India and Pacific steam navigation Company. Donc, ce cétacé extraordinaire pouvait se transporter d\'un endroit à un autre&nbsp;avec une vélocité surprenante, puisque à trois jours d\'intervalle, le Governor-Higginson et le Cristobal-Colon l\'avaient&nbsp;observé en deux points de la carte séparés par une distance de plus de sept cents lieues marines. Quinze jours plus tard, à&nbsp;deux mille lieues de là l\'Helvetia, de la Compagnie Nationale, et le Shannon, du Royal-Mail, marchant à contrebord dans&nbsp;cette portion de l\'Atlantique comprise entre les États-Unis et l\'Europe, se signalèrent respectivement le monstre par 42°15\'&nbsp;de latitude nord, et 60°35\' de longitude à l\'ouest du méridien de Greenwich.', 0, 0, 0, 1, 0, 0, 25, 1, 0, 0, 0, 'default', 0, 0, 0, 0, '', '', '', '', 0, 0, 0, '', '', '', 1, '3', '', 1, 0, '', 0, '', '', 0, 0, 0, 0, NULL, '', 0, '', 0, 0x613a313a7b733a383a22626f647974657874223b4e3b7d, 0, '', '', '', NULL, 124, 0, 0, 0, 4, NULL, 0, 0),
(5, 8, 0, 0, 0, '', 0, 0, 0, 0, 0, 7, 1528987737, 1528987737, 1, 0, 0, 128, 'textmedia', 'Chapter IX: A Boat', '', '', '<p class=\"align-justify\">But for an oven I was indeed in great pain. At length I found out an experiment for that also, which was this: I made some earthen-vessels very broad but not deep, that is to say, about two feet diameter, and not above nine inches deep. These I burned in the fire, as I had done the other, and laid them by; and when I wanted to bake, I made a great fire upon my hearth, which I had paved with some square tiles of my own baking and burning also; but I should not call them square.When the firewood was burned pretty much into embers or live coals, I drew them forward upon this hearth, so as to cover it all over, and there I let them lie till the hearth was very hot. Then sweeping away all the embers, I set down my loaf or loaves, and whelming down the earthen pot upon them, drew the embers all round the outside of the pot, to keep in and add to the heat; and thus as well as in the best oven in the world, I baked my barley-loaves, and became in little time a good pastrycook into the bargain; for I made myself several cakes and puddings of the rice; but I made no pies, neither had I anything to put into them supposing I had, except the flesh either of fowls or goats.It need not be wondered at if all these things took me up most part of the third year of my abode here; for it is to be observed that in the intervals of these things I had my new harvest and husbandry to manage; for I reaped my corn in its season, and carried it home as well as I could, and laid it up in the ear, in my large baskets, till I had time to rub it out, for I had no floor to thrash it on, or instrument to thrash it with.</p>\r\n\r\n', 0, 0, 0, 1, 0, 0, 26, 1, 0, 0, 0, 'default', 0, 0, 0, 0, '', '', '', '', 0, 0, 0, '', '', '', 1, '3', '', 1, 0, '', 0, '', '', 0, 0, 0, 0, NULL, '', 0, '', 0, 0x613a313a7b733a363a22617373657473223b4e3b7d, 0, '', '', '', NULL, 124, 0, 0, 0, 5, NULL, 0, 0),
(6, 8, 0, 0, 0, '', 0, 0, 0, 0, 0, 7, 1528987737, 1528987737, 1, 0, 0, 64, 'textmedia', 'Robinson Crusoe by Daniel Defoe', '', '', 'This work did not take me up less than three months, because a great part of that time was the wet season, when I could not go abroad. Within-doors, that is when it rained and I could not go out, I found employment in the following occupations - always observing, that all the while I was at work I diverted myself with talking to my parrot, and teaching him to speak; and I quickly taught him to know his own name, and at last to speak it out pretty loud, &quot;Poll,&quot; which was the first word I ever heard spoken in the island by any mouth but my own.  This, therefore, was not my work, but an assistance to my work; for now, as I said, I had a great employment upon my hands, as follows: I had long studied to make, by some means or other, some earthen vessels, which, indeed, I wanted sorely, but knew not where to come at them. However, considering the heat of the climate, I did not doubt but if I could find out any clay, I might make some pots that might, being dried in the sun, be hard enough and strong enough to bear handling, and to hold anything that was dry, and required to be kept so; and as this was necessary in the preparing corn, meal, &amp;c., which was the thing I was doing, I resolved to make some as large as I could, and fit only to stand like jars, to hold what should be put into them.It would make the reader pity me, or rather laugh at me, to tell how many awkward ways I took to raise this paste; what odd, misshapen, ugly things I made; how many of them fell in and how many fell out, the clay not being stiff enough to bear its own weight; how many cracked by the over-violent heat of the sun, being set out too hastily; and how many fell in pieces with only removing, as well before as after they were dried; and, in a word, how, after having laboured hard to find the clay - to dig it, to temper it, to bring it home, and work it - I could not make above two large earthen ugly things (I cannot call them jars) in about two months\' labour.\r\n<table summary=\"Tour du Monde sous marin (Premier partie)\"><caption>Les faits relatifs à cette apparition</caption><thead><tr><th scope=\"col\">No.</th><th scope=\"col\">Apparition</th><th scope=\"col\">Date</th><th scope=\"col\">livre de bord</th></tr></thead><tbody><tr><td>666312</td><td>puissance </td><td>2.11.2012</td><td>diverses reprises</td></tr><tr><td>234566</td><td>vitesse </td><td>31.7.2010</td><td>écueil inconnu</td></tr><tr><td>300693</td><td>locomotion</td><td>22.12.2009</td><td>distance de plus de sept cents lieues marines</td></tr><tr><td>245364</td><td>structure </td><td>12.11.2006</td><td>l\'opinion publique</td></tr></tbody></table>\r\n\r\n', 0, 0, 0, 1, 0, 0, 25, 1, 0, 0, 0, 'default', 0, 0, 0, 0, '', '', '', '', 0, 0, 0, '', '', '', 1, '3', '', 1, 0, '', 0, '', '', 0, 0, 0, 0, NULL, '', 0, '', 0, 0x613a313a7b733a363a22617373657473223b4e3b7d, 0, '', '', '', NULL, 124, 0, 0, 0, 6, NULL, 0, 0),
(7, 8, 0, 0, 0, '', 0, 0, 0, 0, 0, 1, 1528987737, 1528987737, 1, 0, 0, 32, 'textmedia', 'Conrad Ferdinand Meyer', '', '', 'Die Reise des Herrn Waser, erstes Kapitel <br />Die Mittagssonne stand über der kahlen, von Felshäuptern umragten Höhe des Julierpasses im Lande Bünden. Die Steinwände brannten und schimmerten unter den stechenden senkrechten Strahlen. Zuweilen, wenn eine geballte Wetterwolke emporquoll und vorüberzog, schienen die Bergmauern näher heranzutreten und, die <LINK https://de.wikipedia.org/wiki/Conrad_Ferdinand_Meyer - external-link-new-window \"Opens internal link in current window\">Landschaft verengend, schroff und unheimlich zusammenzurücken</link>. Die wenigen zwischen den Felszacken herniederhangenden Schneeflecke und Gletscherzungen leuchteten bald grell auf, bald wichen sie zurück in grünliches Dunkel. Es drückte eine schwüle Stille, nur <strong>das niedrige Geflatter der Steinlerche</strong> regte sich zwischen den nackten Blöcken und von Zeit zu Zeit durchdrang der scharfe Pfiff eines Murmeltiers die Einöde.\r\nIn der Mitte der sich dehnenden Paßhöhe standen rechts und links vom Saumpfade zwei abgebrochene Säulen, die der Zeit schon länger als ein Jahrtausend trotzen mochten. In dem durch die Verwitterung beckenförmig ausgehöhlten Bruche des einen Säulenstumpfes hatte sich Regenwasser gesammelt. Ein Vogel hüpfte auf dem Rande hin und her und nippte von dem klaren Himmelswasser. Jetzt erscholl aus der Ferne, vom Echo wiederholt und verhöhnt, das Gebell eines Hundes. Hoch oben an dem stellenweise grasbewachsenen Hange hatte ein Bergamaskerhirt im Mittagsschlafe gelegen. Nun sprang er auf, zog seinen Mantel fest um die Schultern und warf sich in kühnen Schwüngen von einem vorragenden Felsturme hinunter zur Einholung seiner Schafherde, die sich in weißen beweglichen Punkten nach der Tiefe hin verlor. Einer seiner zottigen Hunde setzte ihm nach, der andere, vielleicht ein altes Tier, konnte seinem Herrn nicht folgen. Er stand auf einem Vorsprunge und winselte hilflos.', 0, 0, 0, 1, 0, 0, 26, 1, 0, 0, 0, 'default', 0, 0, 0, 0, '', '', '', '', 0, 0, 0, '', '', '', 1, '3', '', 1, 0, '', 0, '', '', 0, 0, 0, 0, NULL, '', 0, '', 0, 0x613a313a7b733a383a22626f647974657874223b4e3b7d, 0, '', '', '', NULL, 124, 0, 0, 0, 7, NULL, 0, 0),
(8, 8, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1528987737, 1528987737, 1, 0, 0, 16, 'textmedia', 'Vingt mille lieues sous les mers', '', '', '<p class=\"align-justify\">Les faits relatifs&nbsp;à cette apparition, consignés aux divers livres de bord, s\'accordaient assez exactement sur la structure de&nbsp;l\'objet ou de l\'être en question, la vitesse inouïe de ses mouvements, la puissance surprenante de sa locomotion, la vie&nbsp;particulière dont il semblait doué. Si c\'était un cétacé, il surpassait en volume tous ceux que la science avait classés&nbsp;jusqu\'alors. Ni Cuvier, ni Lacépède, ni M. Dumeril, ni M. de Quatrefages n\'eussent admis l\'existence d\'un tel monstre — à&nbsp;moins de l\'avoir vu, ce qui s\'appelle vu de leurs propres yeux de savants.</p>\r\nA prendre la moyenne des observations faites à diverses reprises — en rejetant les évaluations timides qui assignaient à cet&nbsp;objet une longueur de deux cents pieds et en repoussant les opinions exagérées qui le disaient large d\'un mille et long de&nbsp;trois — on pouvait affirmer, cependant, que cet être phénoménal dépassait de beaucoup toutes les dimensions admises&nbsp;jusqu\'à ce jour par les ichtyologistes — s\'il existait toutefois.\r\n<hr />\r\nOr, il existait, le fait en lui-même n\'était plus niable, et, avec ce penchant qui pousse au merveilleux la cervelle humaine, on&nbsp;comprendra l\'émotion produite dans le monde entier par cette surnaturelle apparition. Quant à la rejeter au rang des fables,&nbsp;il fallait y renoncer.\r\nEn effet, le 20 juillet 1866, le steamer Governor-Higginson, de Calcutta and Burnach steam navigation Company, avait&nbsp;rencontré cette masse mouvante à cinq milles dans l\'est des côtes de l\'Australie. Le capitaine Baker se crut, tout d\'abord, en&nbsp;présence d\'un écueil inconnu ; il se disposait même à en déterminer la situation exacte, quand deux colonnes d\'eau,&nbsp;projetées par l\'inexplicable objet, s\'élancèrent en sifflant à cent cinquante pieds dans l\'air. Donc, à moins que cet écueil ne&nbsp;fût soumis aux expansions intermittentes d\'un geyser, le Governor-Higginson avait affaire bel et bien à quelque mammifère&nbsp;aquatique, inconnu jusque-là, qui rejetait par ses évents des colonnes d\'eau, mélangées d\'air et de vapeur.', 0, 0, 0, 1, 0, 0, 25, 1, 0, 0, 0, 'default', 0, 0, 0, 0, '', '', '', '', 0, 0, 0, '', '', '', 1, '3', '', 1, 0, '', 0, '', '', 0, 0, 0, 0, NULL, '', 0, '', 0, 0x613a313a7b733a363a22617373657473223b4e3b7d, 0, '', '', '', NULL, 124, 0, 0, 0, 8, NULL, 0, 0),
(9, 7, 0, 0, 0, '', 0, 0, 0, 0, 0, 2, 1528987737, 1528987737, 1, 0, 0, 256, 'textmedia', 'Ces rapports arrivés coup sur coup', '', '', '', 0, 0, 0, 15, 0, 0, 25, 1, 0, 0, 100, 'default', 0, 0, 0, 0, '', '', '', '', 0, 0, 0, '', '', '', 1, '0', '', 1, 0, '', 0, '', '', 0, 0, 0, 0, NULL, '', 0, '', 0, 0x613a313a7b733a363a22617373657473223b4e3b7d, 0, '', '', '', NULL, 124, 0, 0, 0, 9, NULL, 0, 0),
(10, 6, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1528992375, 1528987737, 1, 0, 0, 256, 'list', 'A great part of that time was the wet season', '', '', NULL, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 100, 'default', 0, 0, 0, 0, '', '', '', '', 0, 0, 0, '', '', '', 0, '3', 'news_pi1', 1, 0, '', 0, '', '', 0, 0, 0, 0, '<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"settings.orderBy\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.orderDirection\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.categoryConjunction\">\n                    <value index=\"vDEF\">or</value>\n                </field>\n                <field index=\"settings.categories\">\n                    <value index=\"vDEF\">3,2,1</value>\n                </field>\n                <field index=\"settings.includeSubCategories\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"settings.archiveRestriction\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.timeRestriction\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.timeRestrictionHigh\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.topNewsRestriction\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.startingpoint\">\n                    <value index=\"vDEF\">2</value>\n                </field>\n                <field index=\"settings.recursive\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"switchableControllerActions\">\n                    <value index=\"vDEF\">News-&gt;list;News-&gt;detail</value>\n                </field>\n            </language>\n        </sheet>\n        <sheet index=\"additional\">\n            <language index=\"lDEF\">\n                <field index=\"settings.detailPid\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.listPid\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.backPid\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.limit\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.offset\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.tags\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.hidePagination\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"settings.list.paginate.itemsPerPage\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.topNewsFirst\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"settings.excludeAlreadyDisplayedNews\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"settings.disableOverrideDemand\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n            </language>\n        </sheet>\n        <sheet index=\"template\">\n            <language index=\"lDEF\">\n                <field index=\"settings.media.maxWidth\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.media.maxHeight\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.cropMaxCharacters\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.templateLayout\">\n                    <value index=\"vDEF\"></value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>', '', 0, '', 0, 0x613a31383a7b733a353a224354797065223b4e3b733a363a22636f6c506f73223b4e3b733a363a22686561646572223b4e3b733a31333a226865616465725f6c61796f7574223b4e3b733a31353a226865616465725f706f736974696f6e223b4e3b733a31313a226865616465725f6c696e6b223b4e3b733a393a22737562686561646572223b4e3b733a393a226c6973745f74797065223b4e3b733a31313a2270695f666c6578666f726d223b4e3b733a363a226c61796f7574223b4e3b733a31313a226672616d655f636c617373223b4e3b733a31383a2273706163655f6265666f72655f636c617373223b4e3b733a31373a2273706163655f61667465725f636c617373223b4e3b733a31363a227379735f6c616e67756167655f756964223b4e3b733a363a2268696464656e223b4e3b733a393a22737461727474696d65223b4e3b733a373a22656e6474696d65223b4e3b733a31303a2263617465676f72696573223b4e3b7d, 0, '', '', '', NULL, 124, 0, 0, 0, 10, NULL, 0, 0),
(11, 5, 0, 0, 0, '', 0, 0, 0, 0, 0, 1, 1528987737, 1528987737, 1, 0, 0, 256, 'textmedia', 'Tour du Monde sous marin (Premier partie)', '', '', '<h3>I un écueil fuyant</h3>\r\nL\'année 1866 fut marquée par un événement bizarre, un phénomène inexpliqué et inexplicable que personne n\'a sans doute&nbsp;oublié. Sans parler des rumeurs qui agitaient les populations des ports et surexcitaient l\'esprit public à l\'intérieur des&nbsp;continents les gens de mer furent particulièrement émus. Les négociants, armateurs, capitaines de navires, skippers et&nbsp;masters de l\'Europe et de l\'Amérique, officiers des marines militaires de tous pays, et, après eux, les gouvernements des&nbsp;divers États des deux continents, se préoccupèrent de ce fait au plus haut point.\r\nEn effet, depuis quelque temps, plusieurs navires s\'étaient rencontrés sur mer avec « une chose énorme » un objet long,&nbsp;fusiforme, parfois phosphorescent, infiniment plus vaste et plus rapide qu\'une baleine.\r\nLes faits relatifs à cette apparition, consignés aux divers livres de bord, s\'accordaient assez exactement sur la structure de&nbsp;l\'objet ou de l\'être en question, la vitesse inouïe de ses mouvements, la puissance surprenante de sa locomotion, la vie&nbsp;particulière dont il semblait doué. Si c\'était un cétacé, il surpassait en volume tous ceux que la science avait classés&nbsp;jusqu\'alors. Ni Cuvier, ni Lacépède, ni M. Dumeril, ni M. de Quatrefages n\'eussent admis l\'existence d\'un tel monstre — à&nbsp;moins de l\'avoir vu, ce qui s\'appelle vu de leurs propres yeux de savants.\r\nA prendre la moyenne des observations faites à diverses reprises — en rejetant les évaluations timides qui assignaient à cet&nbsp;objet une longueur de deux cents pieds et en repoussant les opinions exagérées qui le disaient large d\'un mille et long de&nbsp;trois — on pouvait affirmer, cependant, que cet être phénoménal dépassait de beaucoup toutes les dimensions admises&nbsp;jusqu\'à ce jour par les ichtyologistes — s\'il existait toutefois.\r\nOr, il existait, le fait en lui-même n\'était plus niable, et, avec ce penchant qui pousse au merveilleux la cervelle humaine, on&nbsp;comprendra l\'émotion produite dans le monde entier par cette surnaturelle apparition. Quant à la rejeter au rang des fables,&nbsp;il fallait y renoncer.<br />En effet, le 20 juillet 1866, le steamer Governor-Higginson, de Calcutta and Burnach steam navigation Company, avait&nbsp;rencontré cette masse mouvante à cinq milles dans l\'est des côtes de l\'Australie. Le capitaine Baker se crut, tout d\'abord, en&nbsp;présence d\'un écueil inconnu ; il se disposait même à en déterminer la situation exacte, quand deux colonnes d\'eau,&nbsp;projetées par l\'inexplicable objet, s\'élancèrent en sifflant à cent cinquante pieds dans l\'air. Donc, à moins que cet écueil ne&nbsp;fût soumis aux expansions intermittentes d\'un geyser, le Governor-Higginson avait affaire bel et bien à quelque mammifère&nbsp;aquatique, inconnu jusque-là, qui rejetait par ses évents des colonnes d\'eau, mélangées d\'air et de vapeur.\r\nPareil fait fut également observé le 23 juillet de la même année, dans les mers du Pacifique, par le Cristobal-Colon, de West&nbsp;India and Pacific steam navigation Company. Donc, ce cétacé extraordinaire pouvait se transporter d\'un endroit à un autre&nbsp;avec une vélocité surprenante, puisque à trois jours d\'intervalle, le Governor-Higginson et le Cristobal-Colon l\'avaient&nbsp;observé en deux points de la carte séparés par une distance de plus de sept cents lieues marines. Quinze jours plus tard, à&nbsp;deux mille lieues de là l\'Helvetia, de la Compagnie Nationale, et le Shannon, du Royal-Mail, marchant à contrebord dans&nbsp;cette portion de l\'Atlantique comprise entre les États-Unis et l\'Europe, se signalèrent respectivement le monstre par 42°15\'&nbsp;de latitude nord, et 60°35\' de longitude à l\'ouest du méridien de Greenwich. Dans cette observation simultanée, on crut&nbsp;pouvoir évaluer la longueur minimum du mammifère à plus de trois cent cinquante pieds anglais, puisque le Shannon et&nbsp;l\'Helvetia étaient de dimension inférieure à lui, bien qu\'ils mesurassent cent mètres de l\'étrave à l\'étambot. Or, les plus&nbsp;vastes baleines, celles qui fréquentent les parages des îles Aléoutiennes, le Kulammak et l\'Umgullick, n\'ont jamais dépassé la&nbsp;longueur de cinquante-six mètres, — si même elles l\'atteignent.\r\nCes rapports arrivés coup sur coup, de nouvelles observations faites à bord du transatlantique le Pereire, un abordage entre&nbsp;l\'Etna, de la ligne Inman, et le monstre, un procès-verbal dressé par les officiers de la frégate française la Normandie, un&nbsp;très sérieux relèvement obtenu par l\'état-major du commodore Fitz-James à bord du Lord-Clyde, émurent profondément&nbsp;l\'opinion publique. Dans les pays d\'humeur légère, on plaisanta le phénomène, mais les pays graves et pratiques,&nbsp;l\'Angleterre, l\'Amérique, l\'Allemagne, s\'en préoccupèrent vivement.\r\nPartout dans les grands centres, le monstre devint à la mode ; on le chanta dans les cafés, on le bafoua dans les journaux,&nbsp;on le joua sur les théâtres. Les canards eurent là une belle occasion de pondre des oeufs de toute couleur. On vit&nbsp;réapparaître dans les journaux — à court de copie — tous les êtres imaginaires et gigantesques, depuis la baleine blanche, le&nbsp;terrible « Moby Dick » des régions hyperboréennes, jusqu\'au Kraken démesuré, dont les tentacules peuvent enlacer un&nbsp;bâtiment de cinq cents tonneaux et l\'entraîner dans les abîmes de l\'Océan. On reproduisit même les procès-verbaux des&nbsp;temps anciens les opinions d\'Aristote et de Pline, qui admettaient l\'existence de ces monstres, puis les récits norvégiens de&nbsp;l\'évêque Pontoppidan, les relations de Paul Heggede, et enfin les rapports de M. Harrington, dont la bonne foi ne peut être&nbsp;soupçonnée, quand il affirme avoir vu, étant à bord du Castillan, en 1857, cet énorme serpent qui n\'avait jamais fréquenté&nbsp;jusqu\'alors que les mers de l\'ancien Constitutionnel.\r\nAlors éclata l\'interminable polémique des crédules et des incrédules dans les sociétés savantes et les journaux scientifiques.&nbsp;La « question du monstre » enflamma les esprits. Les journalistes, qui font profession de science en lutte avec ceux qui font&nbsp;profession d\'esprit, versèrent des flots d\'encre pendant cette mémorable campagne ; quelques-uns même, deux ou trois&nbsp;gouttes de sang, car du serpent de mer, ils en vinrent aux personnalités les plus offensantes.<br />Six mois durant, la guerre se poursuivit avec des chances diverses. Aux articles de fond de l\'Institut géographique du Brésil,&nbsp;de l\'Académie royale des sciences de Berlin, de l\'Association Britannique, de l\'Institution Smithsonnienne de Washington, aux&nbsp;discussions du The Indian Archipelago, du Cosmos de l\'abbé Moigno, des Mittheilungen de Petermann, aux chroniques&nbsp;scientifiques des grands journaux de la France et de l\'étranger, la petite presse ripostait avec une verve intarissable. Ses&nbsp;spirituels écrivains parodiant un mot de Linné, cité par les adversaires du monstre, soutinrent en effet que « la nature ne&nbsp;faisait pas de sots », et ils adjurèrent leurs contemporains de ne point donner un démenti à la nature, en admettant&nbsp;l\'existence des Krakens, des serpents de mer, des « Moby Dick », et autres élucubrations de marins en délire. Enfin, dans un&nbsp;article d\'un journal satirique très redouté, le plus aimé de ses rédacteurs, brochant sur le tout, poussa au monstre, comme&nbsp;Hippolyte, lui porta un dernier coup et l\'acheva au milieu d\'un éclat de rire universel. L\'esprit avait vaincu la science.<br />Pendant les premiers mois de l\'année 1867, la question parut être enterrée, et elle ne semblait pas devoir renaître, quand de&nbsp;nouveaux faits furent portés à la connaissance du public. Il ne s\'agit plus alors d\'un problème scientifique à résoudre, mais&nbsp;bien d\'un danger réel sérieux à éviter. La question prit une tout autre face. Le monstre redevint îlot, rocher, écueil, mais&nbsp;écueil fuyant, indéterminable, insaisissable.', 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 110, 'default', 0, 0, 0, 0, '', '', '', '', 0, 0, 0, '', '', '', 0, '3', '', 1, 0, '', 0, '', '', 0, 0, 0, 0, NULL, '', 0, '', 0, 0x613a313a7b733a363a2268696464656e223b4e3b7d, 0, '', '', '', NULL, 124, 0, 0, 0, 11, NULL, 0, 0),
(12, 5, 0, 0, 0, '', 0, 0, 0, 0, 0, 6, 1528987737, 1528987737, 1, 0, 0, 128, 'textmedia', 'Aufregungen und Motionen der Landesmehrheit', '', '', 'Und so, wie ich meine Halbdunkelkaffeemorgen mit Henning irgendwie mochte, so mochte ich auch die Tierfütterung, denn eins ist mal klar: Wer Tiere gefüttert hat, der hat schon mal etwas Gutes getan, und wenn man das jeden Tag als Erstes macht, dann ist kein Tag mehr umsonst, und so hatte ich das auch Werner erklärt, als der sich darüber beschweren wollte, dass man mir die Extraarbeit aufgedrückt hatte, er war kaum zu beruhigen gewesen, manchmal übertrieb er die Fürsorglichkeit, wir nannten das das Lady-Di-Syndrom, jedenfalls Klaus-Dieter und ich, daran war Astrid schuld, die machte sich schon lange immer Sorgen um Lady Di, weil die sich immer um alles kümmerte und nachts noch die Leute in den Krankenhäusern aufweckte, damit die auch wussten, dass Lady Di sich um sie kümmerte, das beeindruckte und bedrückte Astrid schwer, mehr jedenfalls als das gleiche Verhalten bei Werner, und deshalb sagten Klaus-Dieter und ich immer Lady-Di-Syndrom, wenn Werner die Sache übertrieb, nämlich um Astrid zu ärgern, die es hasste, wenn wir Werner und Lady Di auf eine Stufe stellten, für sie stand Lady Di weit über Werner, bei Klaus-Dieter war es genau umgekehrt, ich war da neutral, mir waren Werner und Lady Di genau gleich lieb. ', 0, 0, 0, 1, 0, 0, 26, 1, 0, 0, 0, 'default', 0, 0, 0, 0, '', '', '', '', 0, 0, 0, '', '', '', 1, '0', '', 1, 0, '', 0, '', '', 0, 0, 0, 0, NULL, '', 0, '', 0, 0x613a313a7b733a363a22617373657473223b4e3b7d, 0, '', '', '', NULL, 124, 0, 0, 0, 12, NULL, 0, 0),
(13, 5, 0, 0, 0, '', 0, 0, 0, 0, 0, 6, 1528987737, 1528987737, 1, 0, 0, 64, 'textmedia', 'Über den alten Rheinstrom hinaus.', '', '', 'Während aber einige der Städte hartnäckig fortfahren, sich ihres Homers schon bei dessen Lebzeiten versichern zu wollen, hat sich mit dem wirklichen Seldwyla eine solche Veränderung zugetragen, daß sich sein sonst durch Jahrhunderte gleich gebliebener Charakter in weniger als zehn Jahren geändert hat und sich ganz in sein Gegenteil zu verwandeln droht. Oder, wahrer gesagt, hat sich das allgemeine Leben so gestaltet, daß die besonderen Fähigkeiten und Nücken der wackeren Seldwyler sich herrlicher darin entwickeln können, ein günstiges Fahrwasser, ein dankbares Ackerfeld daran haben, auf welchem gerade sie Meister sind, und dadurch zu gelungenen, beruhigten Leuten werden, die sich nicht mehr von der braven übrigen Welt unterscheiden. Es ist insonderlich die überall verbreitete Spekulationsbetätigung in bekannten und unbekannten Werten, welche den Seldwylern ein Feld eröffnet hat, das für sie wie seit Urbeginn geschaffen schien und sie mit einem Schlage Tausenden von ernsthaften Geschäftsleuten gleichstellte. Das gesellschaftliche Besprechen dieser Werte, das Herumspazieren zum Auftrieb eines Geschäftes, mit welchem keine weitere Arbeit verbunden ist als das Erdulden mannigfacher Aufregung, das Eröffnen oder Absenden von Depeschen und hundert ähnliche Dinge, die den Tag ausfüllen, sind so recht ihre Sache. Jeder Seldwyler ist nun ein geborener Agent oder dergleichen, und sie wandern als solche förmlich aus, wie die Engadiner Zuckerbäcker, die Tessiner Gipsarbeiter und die savoyischen Kaminfeger.', 0, 0, 0, 1, 0, 0, 26, 1, 0, 0, 0, 'default', 0, 0, 0, 0, '', '', '', '', 0, 0, 0, '', '', '', 1, '0', '', 1, 0, '', 0, '', '', 0, 0, 0, 0, NULL, '', 0, '', 0, 0x613a313a7b733a363a22617373657473223b4e3b7d, 0, '', '', '', NULL, 124, 0, 0, 0, 13, NULL, 0, 0),
(14, 5, 0, 0, 0, '', 0, 0, 0, 0, 0, 6, 1528987737, 1528987737, 1, 0, 0, 32, 'textmedia', 'Das milderte schon etwas ihren Groll', '', '', 'In einer so lustigen und seltsamen Stadt kann es an allerhand seltsamen Geschichten und Lebensläufen nicht fehlen, da Müßiggang aller Laster Anfang ist. Doch nicht solche Geschichten, wie sie in dem beschriebenen Charakter von Seldwyla liegen, will ich eigentlich in diesem Büchlein erzählen, sondern einige sonderbare Abfällsel, die so zwischendurch passierten, gewissermaßen ausnahmsweise, und doch auch gerade nur zu Seldwyla vor sich gehen konnten. Pankraz, der Schmoller Romeo und Julia auf dem Dorfe Frau Regel Amrain und ihr Jüngster Die drei gerechten Kammacher Spiegel, das Kätzchen.', 0, 0, 0, 1, 0, 0, 26, 1, 0, 0, 0, 'default', 0, 0, 0, 0, '', '', '', '', 0, 0, 0, '', '', '', 1, '0', '', 1, 0, '', 0, '', '', 0, 0, 0, 0, NULL, '', 0, '', 0, 0x613a313a7b733a363a22617373657473223b4e3b7d, 0, '', '', '', NULL, 124, 0, 0, 0, 14, NULL, 0, 0),
(15, 5, 0, 0, 0, '', 0, 0, 0, 0, 0, 6, 1528987737, 1528987737, 1, 0, 0, 16, 'textmedia', 'After this, I spent a great deal of time and pains to make an umbrella', '', '', 'I had seen them made in the Brazils, where they are very useful in the great heats there, and I felt the heats every jot as great here, and greater too, being nearer the equinox; besides, as I was obliged to be much abroad, it was a most useful thing to me, as well for the rains as the heats. I took a world of pains with it, and was a great while before I could make anything likely to hold: nay, after I had thought I had hit the way, I spoiled two or three before I made one to my mind: but at last I made one that answered indifferently well: the main difficulty I found was to make it let down. I could make it spread, but if it did not let down too, and draw in, it was not portable for me any way but just over my head, which would not do. However, at last, as I said, I made one to answer, and covered it with skins, the hair upwards, so that it cast off the rain like a pent-house, and kept off the sun so effectually, that I could walk out in the hottest of the weather with greater advantage than I could before in the coolest, and when I had no need of it could close it, and carry it under my arm.', 0, 0, 0, 1, 0, 0, 25, 1, 0, 0, 0, 'default', 0, 0, 0, 0, '', '', '', '', 0, 0, 0, '', '', '', 1, '0', '', 1, 0, '', 0, '', '', 0, 0, 0, 0, NULL, '', 0, '', 0, 0x613a313a7b733a363a22617373657473223b4e3b7d, 0, '', '', '', NULL, 124, 0, 0, 0, 15, NULL, 0, 0),
(16, 4, 0, 0, 0, '', 0, 0, 0, 0, 0, 2, 1528987737, 1528987737, 1, 0, 0, 256, 'textmedia', 'Tour du Monde sous marin (Premier partie)', '', '', '<h3>Information</h3>\r\nEn effet, le 20 juillet 1866, le steamer Governor-Higginson, de Calcutta and Burnach steam navigation Company, avait&nbsp;rencontré cette masse mouvante à cinq milles dans l\'est des côtes de l\'Australie.\r\n<table summary=\"Tour du Monde sous marin (Premier partie)\"><tbody><tr><td>Governor-Higginson</td><td rowspan=\"1\" colspan=\"2\">&nbsp;</td><td>Telephone</td></tr><tr><td>24&nbsp;Burnach steam navigation</td><td rowspan=\"1\" colspan=\"2\">&nbsp;</td><td>0041 41 321 4455</td></tr><tr><td rowspan=\"1\">Angleterre, Amérique, Allemagne</td><td rowspan=\"1\" colspan=\"2\">&nbsp;</td><td rowspan=\"1\"></td></tr></tbody></table>\r\n\r\nLe capitaine Baker se crut, tout d\'abord, en&nbsp;présence d\'un écueil inconnu ; il se disposait même à en déterminer la situation exacte, quand deux colonnes d\'eau,&nbsp;projetées par l\'inexplicable objet, s\'élancèrent en sifflant à cent cinquante pieds dans l\'air. Donc, à moins que cet écueil ne&nbsp;fût soumis aux expansions intermittentes d\'un geyser, le Governor-Higginson avait affaire bel et bien à quelque mammifère&nbsp;aquatique, inconnu jusque-là, qui rejetait par ses évents des colonnes d\'eau, mélangées d\'air et de vapeur.', 0, 0, 0, 1, 0, 0, 26, 1, 0, 0, 110, 'default', 0, 0, 0, 0, '', '', '', '', 0, 0, 0, '', '', '', 0, '100', '', 1, 0, '', 0, '', '', 0, 0, 0, 0, NULL, '', 0, '', 0, 0x613a313a7b733a363a22617373657473223b4e3b7d, 0, '', '', '', NULL, 124, 0, 0, 0, 16, NULL, 0, 0);
INSERT INTO `tt_content` (`uid`, `pid`, `t3ver_oid`, `t3ver_id`, `t3ver_wsid`, `t3ver_label`, `t3ver_state`, `t3ver_stage`, `t3ver_count`, `t3ver_tstamp`, `t3ver_move_id`, `t3_origuid`, `tstamp`, `crdate`, `cruser_id`, `editlock`, `hidden`, `sorting`, `CType`, `header`, `header_position`, `rowDescription`, `bodytext`, `bullets_type`, `uploads_description`, `uploads_type`, `assets`, `image`, `imagewidth`, `imageorient`, `imagecols`, `imageborder`, `media`, `layout`, `frame_class`, `deleted`, `cols`, `spaceBefore`, `spaceAfter`, `space_before_class`, `space_after_class`, `records`, `pages`, `starttime`, `endtime`, `colPos`, `subheader`, `fe_group`, `header_link`, `image_zoom`, `header_layout`, `list_type`, `sectionIndex`, `linkToTop`, `file_collections`, `filelink_size`, `filelink_sorting`, `target`, `date`, `recursive`, `imageheight`, `sys_language_uid`, `pi_flexform`, `accessibility_title`, `accessibility_bypass`, `accessibility_bypass_text`, `l18n_parent`, `l18n_diffsource`, `l10n_source`, `selected_categories`, `category_field`, `table_class`, `table_caption`, `table_delimiter`, `table_enclosure`, `table_header_position`, `table_tfoot`, `tx_impexp_origuid`, `l10n_state`, `categories`, `tx_news_related_news`) VALUES
(17, 1, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1528987737, 1528987737, 1, 0, 1, 256, 'textmedia', 'Welcome quote/callout on the landing page', '', '', '<blockquote><p>Single source<br />solutions for<br />your projects</p></blockquote>', 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 'default', 0, 0, 0, 0, '', '', '', '', 0, 0, 0, '', '', '', 0, '100', '', 1, 0, '', 0, '', '', 0, 0, 0, 0, NULL, '', 0, '', 0, 0x613a31373a7b733a353a224354797065223b4e3b733a363a22636f6c506f73223b4e3b733a31363a227379735f6c616e67756167655f756964223b4e3b733a363a22686561646572223b4e3b733a31333a226865616465725f6c61796f7574223b4e3b733a343a2264617465223b4e3b733a31313a226865616465725f6c696e6b223b4e3b733a31343a22726f774465736372697074696f6e223b4e3b733a383a22626f647974657874223b4e3b733a363a22617373657473223b4e3b733a31303a22696d6167655f7a6f6f6d223b4e3b733a363a226c61796f7574223b4e3b733a31313a22696d6167656f7269656e74223b4e3b733a393a22696d616765636f6c73223b4e3b733a363a2268696464656e223b4e3b733a393a22737461727474696d65223b4e3b733a373a22656e6474696d65223b4e3b7d, 0, '', '', '', NULL, 124, 0, 0, 0, 17, NULL, 0, 0),
(18, 4, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1564234261, 1564234244, 1, 0, 0, 512, 'form_formframework', 'Hello!', '', NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 'default', 0, 0, 0, 0, '', '', NULL, NULL, 0, 0, 0, NULL, '0', '', 0, '3', '', 1, 0, NULL, 0, '', '', 0, 0, 0, 0, '<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"settings.persistenceIdentifier\">\n                    <value index=\"vDEF\">1:/generic_lib/Resources/Public/Forms/contactformgeneric_lib.form.yaml</value>\n                </field>\n                <field index=\"settings.overrideFinishers\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>', '', 0, '', 0, 0x613a31333a7b733a353a224354797065223b4e3b733a363a22636f6c506f73223b4e3b733a363a22686561646572223b4e3b733a31333a226865616465725f6c61796f7574223b4e3b733a31353a226865616465725f706f736974696f6e223b4e3b733a31313a226865616465725f6c696e6b223b4e3b733a31313a2270695f666c6578666f726d223b4e3b733a363a226c61796f7574223b4e3b733a31363a227379735f6c616e67756167655f756964223b4e3b733a363a2268696464656e223b4e3b733a393a22737461727474696d65223b4e3b733a373a22656e6474696d65223b4e3b733a31303a2263617465676f72696573223b4e3b7d, 0, NULL, '', '', NULL, 124, 0, 0, 0, 0, NULL, 0, 0);
UNLOCK TABLES;
-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `tx_news_domain_model_news`
--

DROP TABLE IF EXISTS `tx_news_domain_model_news`;
CREATE TABLE IF NOT EXISTS `tx_news_domain_model_news` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `crdate` int(11) NOT NULL DEFAULT '0',
  `cruser_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `t3ver_state` smallint(6) NOT NULL DEFAULT '0',
  `t3ver_stage` smallint(6) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `editlock` smallint(6) NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `l10n_parent` int(11) NOT NULL DEFAULT '0',
  `l10n_diffsource` mediumtext COLLATE utf8_unicode_ci,
  `deleted` smallint(6) NOT NULL DEFAULT '0',
  `hidden` smallint(6) NOT NULL DEFAULT '0',
  `starttime` int(11) NOT NULL DEFAULT '0',
  `endtime` int(11) NOT NULL DEFAULT '0',
  `sorting` int(11) NOT NULL DEFAULT '0',
  `fe_group` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `title` tinytext COLLATE utf8_unicode_ci,
  `teaser` text COLLATE utf8_unicode_ci,
  `bodytext` mediumtext COLLATE utf8_unicode_ci,
  `datetime` int(11) NOT NULL DEFAULT '0',
  `archive` int(11) NOT NULL DEFAULT '0',
  `author` tinytext COLLATE utf8_unicode_ci,
  `author_email` tinytext COLLATE utf8_unicode_ci,
  `categories` int(11) NOT NULL DEFAULT '0',
  `related` int(11) NOT NULL DEFAULT '0',
  `related_from` int(11) NOT NULL DEFAULT '0',
  `related_files` tinytext COLLATE utf8_unicode_ci,
  `fal_related_files` int(10) unsigned DEFAULT '0',
  `related_links` tinytext COLLATE utf8_unicode_ci,
  `type` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `keywords` text COLLATE utf8_unicode_ci,
  `description` text COLLATE utf8_unicode_ci,
  `tags` int(11) NOT NULL DEFAULT '0',
  `media` text COLLATE utf8_unicode_ci,
  `fal_media` int(10) unsigned DEFAULT '0',
  `internalurl` text COLLATE utf8_unicode_ci,
  `externalurl` text COLLATE utf8_unicode_ci,
  `istopnews` int(11) NOT NULL DEFAULT '0',
  `content_elements` int(11) NOT NULL DEFAULT '0',
  `path_segment` tinytext COLLATE utf8_unicode_ci,
  `alternative_title` tinytext COLLATE utf8_unicode_ci,
  `notes` text COLLATE utf8_unicode_ci,
  `import_id` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `import_source` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `l10n_state` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `sys_language_uid_l10n_parent` (`sys_language_uid`,`l10n_parent`),
  KEY `import` (`import_id`,`import_source`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=11 ;

--
-- Daten für Tabelle `tx_news_domain_model_news`
--
LOCK TABLES `tx_news_domain_model_news` WRITE;
INSERT INTO `tx_news_domain_model_news` (`uid`, `pid`, `tstamp`, `crdate`, `cruser_id`, `t3ver_oid`, `t3ver_id`, `t3ver_wsid`, `t3ver_label`, `t3ver_state`, `t3ver_stage`, `t3ver_count`, `t3ver_tstamp`, `t3ver_move_id`, `t3_origuid`, `editlock`, `sys_language_uid`, `l10n_parent`, `l10n_diffsource`, `deleted`, `hidden`, `starttime`, `endtime`, `sorting`, `fe_group`, `title`, `teaser`, `bodytext`, `datetime`, `archive`, `author`, `author_email`, `categories`, `related`, `related_from`, `related_files`, `fal_related_files`, `related_links`, `type`, `keywords`, `description`, `tags`, `media`, `fal_media`, `internalurl`, `externalurl`, `istopnews`, `content_elements`, `path_segment`, `alternative_title`, `notes`, `import_id`, `import_source`, `l10n_state`) VALUES
(1, 2, 1528987737, 1528987737, 1, 0, 0, 0, '', 0, 0, 0, 0, 0, 9, 0, 0, 0, 'a:2:{s:4:"tags";N;s:9:"fal_media";N;}', 0, 0, 0, 0, 2560, '', 'Sprache ist Praxis. Sprache an sich existiert nicht', 'Im Begriff des Sprachspiels will Wittgenstein die seiner Meinung nach falsche Trennung von Sprache und Handeln u?berwinden.', 'Sprache ist fu?r ihn ein situativer Funktionszusammenhang, er existiert genau darin und dadurch, dass Menschen handeln. Sprache ist Praxis. Sprache an sich existiert nicht. Verständlich werden Wörter nach Wittgenstein nicht allein aus der gesprochenen oder geschriebenen Sprachstruktur, sondern erst aus dem Ensemble von Situation, Handlungs- und Sprechabsicht, den aussersprachlichen Äusserungen wie Gestik und Mimik sowie dem situativen Handeln. ', 1489341060, 0, '', '', 1, 0, 0, NULL, 0, NULL, '0', '', '', 1, NULL, 1, NULL, NULL, 0, 0, 'sprache-ist-praxis-sprache-an-sich-existiert-nicht', '', NULL, '', '', NULL),
(2, 2, 1528987737, 1528987737, 1, 0, 0, 0, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 'a:2:{s:4:"tags";N;s:9:"fal_media";N;}', 0, 0, 0, 0, 2304, '', 'Robinson Crusoe by Daniel Defoe', 'This work did not take me up less than three months, because a great part of that time was the wet season, when I could not go abroad', 'This at length put me upon thinking whether it was not possible to make myself a canoe, or periagua, such as the natives of those climates make, even without tools, or, as I might say, without hands, of the trunk of a great tree. ', 1486146360, 0, '', '', 1, 0, 0, NULL, 0, NULL, '0', '', '', 1, NULL, 1, NULL, NULL, 0, 0, 'robinson-crusoe-by-daniel-defoe', '', NULL, '', '', NULL),
(3, 2, 1528987737, 1528987737, 1, 0, 0, 0, '', 0, 0, 0, 0, 0, 4, 0, 0, 0, 'a:2:{s:4:"tags";N;s:9:"fal_media";N;}', 0, 0, 0, 0, 2048, '', 'Schulgenossen ', 'Sie war mindestens fünfundvierzig Jahre alt und glich eher einem alten Husaren, als einer Wirtschaftsdame. Sie fluchte wie ein preußischer Wachtmeister, und wenn ihr Missfallen erregt wurde, so gab es ein so gewaltiges Gewitter, dass alles auseinanderfloh und nur der lachende Landvogt standhielt und sich an dem Spektakel ergötzte.', 'Durch alle Rauheit leuchtete dann wieder ihr tiefes Gemüt hervor, wenn sie dem Landvogt, der ihr aufmerksam zuhörte, mit ungebrochener Altstimme eine alte Ballade, ein noch älteres Liebes- oder Jägerlied vorsang, und sie war nicht wenig stolz, wenn der waldhornkundige Herr die schwermütige Melodie bald erlernte und aus dem Schloßfenster über den mondhellen See hinblies. ', 1518803460, 0, '', '', 1, 0, 0, NULL, 0, NULL, '0', '', '', 1, NULL, 1, NULL, NULL, 0, 0, 'schulgenossen', '', NULL, '', '', NULL),
(4, 2, 1528987737, 1528987737, 1, 0, 0, 0, '', 0, 0, 0, 0, 0, 2, 0, 0, 0, 'a:2:{s:4:"tags";N;s:9:"fal_media";N;}', 0, 0, 0, 0, 1792, '', 'In der Mitte der sich dehnenden Passhöhe', 'Die Reise des Herrn Waser.\r\nIn der Mitte der sich dehnenden Passhöhe standen rechts und links vom Saumpfade zwei abgebrochene Säulen, die der Zeit schon länger als ein Jahrtausend trotzen mochten. In dem durch die Verwitterung beckenförmig ausgehöhlten Bruche des einen Säulenstumpfes hatte sich Regenwasser gesammelt. Ein Vogel hüpfte auf dem Rande hin und her und nippte von dem klaren Himmelswasser.', 'Jetzt erscholl aus der Ferne, vom Echo wiederholt und verhöhnt, das Gebell eines Hundes. Hoch oben an dem stellenweise grasbewachsenen Hange hatte ein Bergamaskerhirt im Mittagsschlafe gelegen. Nun sprang er auf, zog seinen Mantel fest um die Schultern und warf sich in kühnen Schwüngen von einem vorragenden Felsturme hinunter zur Einholung seiner Schafherde, die sich in weißen beweglichen Punkten nach der Tiefe hin verlor. Einer seiner zottigen Hunde setzte ihm nach, der andere, vielleicht ein altes Tier, konnte seinem Herrn nicht folgen. Er stand auf einem Vorsprunge und winselte hilflos. ', 1465147560, 0, 'whiteroom', 'on@kawara.net', 1, 0, 0, NULL, 0, NULL, '0', '', '', 2, NULL, 1, NULL, NULL, 0, 0, 'in-der-mitte-der-sich-dehnenden-passhoehe', '', NULL, '', '', NULL),
(5, 2, 1528987737, 1528987737, 1, 0, 0, 0, '', 0, 0, 0, 0, 0, 2, 0, 0, 0, 'a:2:{s:4:"tags";N;s:9:"fal_media";N;}', 0, 0, 0, 0, 1536, '', 'Die Reise des Herrn Waser', 'In der Mitte der sich dehnenden Paßhöhe standen rechts und links vom Saumpfade zwei abgebrochene Säulen, die der Zeit schon länger als ein Jahrtausend trotzen mochten. In dem durch die Verwitterung beckenförmig ausgehöhlten Bruche des einen Säulenstumpfes hatte sich Regenwasser gesammelt. Ein Vogel hüpfte auf dem Rande hin und her und nippte von dem klaren Himmelswasser.', 'Jetzt erscholl aus der Ferne, vom Echo wiederholt und verhöhnt, das Gebell eines Hundes. Hoch oben an dem stellenweise grasbewachsenen Hange hatte ein Bergamaskerhirt im Mittagsschlafe gelegen. Nun sprang er auf, zog seinen Mantel fest um die Schultern und warf sich in kühnen Schwüngen von einem vorragenden Felsturme hinunter zur Einholung seiner Schafherde, die sich in weißen beweglichen Punkten nach der Tiefe hin verlor. Einer seiner zottigen Hunde setzte ihm nach, der andere, vielleicht ein altes Tier, konnte seinem Herrn nicht folgen. Er stand auf einem Vorsprunge und winselte hilflos. ', 1491153960, 0, 'whiteroom', 'on@kawara.net', 1, 0, 0, NULL, 0, NULL, '0', '', '', 2, NULL, 1, NULL, NULL, 0, 0, 'die-reise-des-herrn-waser', '', NULL, '', '', NULL),
(6, 2, 1528987737, 1528987737, 1, 0, 0, 0, '', 0, 0, 0, 0, 0, 1, 0, 0, 0, 'a:2:{s:4:"tags";N;s:9:"fal_media";N;}', 0, 0, 0, 0, 1280, '', 'Robinson Crusoe by Daniel Defoe', 'This at length put me upon thinking whether it was not possible to make myself a canoe.', 'However, considering the heat of the climate, I did not doubt but if I could find out any clay, I might make some pots that might, being dried in the sun, be hard enough and strong enough to bear handling, and to hold anything that was dry, and required to be kept so; and as this was necessary in the preparing corn, meal, which was the thing I was doing, I resolved to make some as large as I could, and fit only to stand like jars, to hold what should be put into them.', 1500655860, 0, '', '', 1, 0, 0, NULL, 0, NULL, '0', '', '', 1, NULL, 1, NULL, NULL, 0, 0, 'robinson-crusoe-by-daniel-defoe', '', NULL, '', '', NULL),
(7, 2, 1528987737, 1528987737, 1, 0, 0, 0, '', 0, 0, 0, 0, 0, 1, 0, 0, 0, 'a:2:{s:4:"tags";N;s:9:"fal_media";N;}', 0, 0, 0, 0, 1024, '', 'On Kawara Dreiunddreissig', 'This work did not take me up less than three months, because a great part of that time was the wet season, when I could not go abroad', 'This at length put me upon thinking whether it was not possible to make myself a canoe, or periagua, such as the natives of those climates make, even without tools, or, as I might say, without hands, of the trunk of a great tree. ', 1475859060, 0, '', '', 1, 0, 0, NULL, 0, NULL, '0', '', '', 1, NULL, 1, NULL, NULL, 0, 0, 'on-kawara-dreiunddreissig', '', NULL, '', '', NULL),
(8, 2, 1528987737, 1528987737, 1, 0, 0, 0, '', 0, 0, 0, 0, 0, 1, 0, 0, 0, 'a:2:{s:4:"tags";N;s:9:"fal_media";N;}', 0, 0, 0, 0, 768, '', 'This work did not take me up less than three months', 'This work did not take me up less than three months, because a great part of that time was the wet season, when I could not go abroad', 'This at length put me upon thinking whether it was not possible to make myself a canoe, or periagua, such as the natives of those climates make, even without tools, or, as I might say, without hands, of the trunk of a great tree. ', 1483379460, 0, '', '', 1, 0, 0, NULL, 0, NULL, '0', '', '', 1, NULL, 1, NULL, NULL, 0, 0, 'this-work-did-not-take-me-up-less-than-three-months', '', NULL, '', '', NULL),
(9, 2, 1528987737, 1528987737, 1, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 'a:2:{s:4:"tags";N;s:9:"fal_media";N;}', 0, 0, 0, 0, 512, '', 'Les canards eurent là une belle occasion de pondre des oeufs de toute couleur.', 'Nous avons été informé par Mr. Verne que vous n''aviez pas encore payé l''article que vous lui avez acheté. Cela fait déjà 21 jours que l''offre est terminée. Nous vous rappelons que, comme stipulé dans nos Conditions Générales, le fait de miser ou d''acheter un article sur le marché de la ville de paris est contractuel.', 'Les faits relatifs à cette apparition, consignés aux divers livres de bord, s''accordaient assez exactement sur la structure de l''objet ou de l''être en question, la vitesse inouïe de ses mouvements, la puissance surprenante de sa locomotion, la vie particulière dont il semblait doué. Si c''était un cétacé, il surpassait en volume tous ceux que la science avait classés jusqu''alors. Ni Cuvier, ni Lacépède, ni M. Dumeril, ni M. de Quatrefages n''eussent admis l''existence d''un tel monstre — à moins de l''avoir vu, ce qui s''appelle vu de leurs propres yeux de savants. ', 1483379460, 0, 'whiteroom', 'on@kawara.net', 1, 0, 0, NULL, 0, NULL, '0', '', '', 2, NULL, 1, NULL, NULL, 0, 0, 'les-canards-eurent-la-une-belle-occasion-de-pondre-des-oeufs-de-toute-couleur', '', NULL, '', '', NULL),
(10, 2, 1528987737, 1528987737, 1, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 'a:2:{s:4:"tags";N;s:9:"fal_media";N;}', 0, 0, 0, 0, 0, '', 'Erstes Buch, erstes Kapitel: Die Reise des Herrn Waser ', 'Die Mittagssonne stand über der kahlen, von Felshäuptern umragten Höhe des Julierpasses im Lande Bünden.', 'Hoch oben an dem stellenweise grasbewachsenen Hange hatte ein Bergamaskerhirt im Mittagsschlafe gelegen. Nun sprang er auf, zog seinen Mantel fest um die Schultern und warf sich in kühnen Schwüngen von einem vorragenden Felsturme hinunter zur Einholung seiner Schafherde, die sich in weißen beweglichen Punkten nach der Tiefe hin verlor. Einer seiner zottigen Hunde setzte ihm nach, der andere, vielleicht ein altes Tier, konnte seinem Herrn nicht folgen. Er stand auf einem Vorsprunge und winselte hilflos. ', 1483379485, 0, '', '', 1, 0, 0, NULL, 0, NULL, '0', '', '', 1, NULL, 1, NULL, NULL, 0, 0, 'erstes-buch-erstes-kapitel-die-reise-des-herrn-waser', '', NULL, '', '', NULL);

UNLOCK TABLES;
-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `tx_news_domain_model_news_tag_mm`
--

DROP TABLE IF EXISTS `tx_news_domain_model_news_tag_mm`;
CREATE TABLE IF NOT EXISTS `tx_news_domain_model_news_tag_mm` (
  `uid_local` int(11) NOT NULL DEFAULT '0',
  `uid_foreign` int(11) NOT NULL DEFAULT '0',
  `sorting` int(11) NOT NULL DEFAULT '0',
  KEY `uid_local` (`uid_local`),
  KEY `uid_foreign` (`uid_foreign`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Daten für Tabelle `tx_news_domain_model_news_tag_mm`
--
LOCK TABLES `tx_news_domain_model_news_tag_mm` WRITE;
INSERT INTO `tx_news_domain_model_news_tag_mm` (`uid_local`, `uid_foreign`, `sorting`) VALUES
(10, 2, 1),
(9, 2, 1),
(9, 3, 2),
(8, 2, 1),
(7, 2, 1),
(6, 2, 1),
(5, 2, 1),
(5, 3, 2),
(4, 2, 1),
(4, 3, 2),
(3, 2, 1),
(2, 2, 1),
(1, 2, 1);

UNLOCK TABLES;
-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `tx_news_domain_model_tag`
--

DROP TABLE IF EXISTS `tx_news_domain_model_tag`;
CREATE TABLE IF NOT EXISTS `tx_news_domain_model_tag` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `crdate` int(11) NOT NULL DEFAULT '0',
  `cruser_id` int(11) NOT NULL DEFAULT '0',
  `sorting` int(11) NOT NULL DEFAULT '0',
  `deleted` smallint(6) NOT NULL DEFAULT '0',
  `hidden` smallint(6) NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `l10n_parent` int(11) NOT NULL DEFAULT '0',
  `l10n_diffsource` mediumtext COLLATE utf8_unicode_ci,
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `t3ver_state` smallint(6) NOT NULL DEFAULT '0',
  `t3ver_stage` smallint(6) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `title` tinytext COLLATE utf8_unicode_ci,
  `seo_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `seo_description` text COLLATE utf8_unicode_ci,
  `seo_headline` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `seo_text` text COLLATE utf8_unicode_ci,
  `notes` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Daten für Tabelle `tx_news_domain_model_tag`
--
LOCK TABLES `tx_news_domain_model_tag` WRITE;
INSERT INTO `tx_news_domain_model_tag` (`uid`, `pid`, `tstamp`, `crdate`, `cruser_id`, `sorting`, `deleted`, `hidden`, `sys_language_uid`, `l10n_parent`, `l10n_diffsource`, `t3ver_oid`, `t3ver_id`, `t3_origuid`, `t3ver_wsid`, `t3ver_label`, `t3ver_state`, `t3ver_stage`, `t3ver_count`, `t3ver_tstamp`, `t3ver_move_id`, `title`, `seo_title`, `seo_description`, `seo_headline`, `seo_text`, `notes`) VALUES
(1, 1, 1528987737, 1528987737, 1, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 'Video', '', '', '', '', NULL),
(2, 1, 1528987737, 1528987737, 1, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 'Publikation', '', '', '', '', NULL),
(3, 1, 1528987737, 1528987737, 1, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 'Audio', '', '', '', '', NULL);

UNLOCK TABLES;

