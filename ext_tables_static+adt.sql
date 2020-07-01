-- --------------------------------------------------------
-- generic_lib
--
-- Tabellenstruktur für Tabelle `be_groups`
--

DROP TABLE IF EXISTS `be_groups`;
CREATE TABLE `be_groups` (
  `uid` int(10) UNSIGNED NOT NULL,
  `pid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `tstamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `non_exclude_fields` text COLLATE utf8_unicode_ci,
  `explicit_allowdeny` text COLLATE utf8_unicode_ci,
  `allowed_languages` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `custom_options` text COLLATE utf8_unicode_ci,
  `db_mountpoints` text COLLATE utf8_unicode_ci,
  `pagetypes_select` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tables_select` text COLLATE utf8_unicode_ci,
  `tables_modify` text COLLATE utf8_unicode_ci,
  `crdate` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cruser_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `groupMods` text COLLATE utf8_unicode_ci,
  `file_mountpoints` text COLLATE utf8_unicode_ci,
  `file_permissions` text COLLATE utf8_unicode_ci,
  `hidden` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `description` text COLLATE utf8_unicode_ci,
  `lockToDomain` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `deleted` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `TSconfig` text COLLATE utf8_unicode_ci,
  `subgroup` text COLLATE utf8_unicode_ci,
  `workspace_perms` smallint(6) NOT NULL DEFAULT '1',
  `category_perms` text COLLATE utf8_unicode_ci,
  `availableWidgets` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Daten für Tabelle `be_groups`
--

INSERT INTO `be_groups` (`uid`, `pid`, `tstamp`, `title`, `non_exclude_fields`, `explicit_allowdeny`, `allowed_languages`, `custom_options`, `db_mountpoints`, `pagetypes_select`, `tables_select`, `tables_modify`, `crdate`, `cruser_id`, `groupMods`, `file_mountpoints`, `file_permissions`, `hidden`, `description`, `lockToDomain`, `deleted`, `TSconfig`, `subgroup`, `workspace_perms`, `category_perms`, `availableWidgets`) VALUES
(1, 0, 1528987737, '_globalSettingsForAll', '', '', '', '', '', '', '', '', 1528987737, 1, '', '', 'readFolder,writeFolder,addFolder,renameFolder,moveFolder,deleteFolder,readFile,writeFile,addFile,renameFile,replaceFile,moveFile,copyFile,deleteFile', 0, '', '', 0, '', '', 0, '', NULL),
(2, 0, 1528987737, 'Redaktoren', 'pages_language_overlay:author,pages_language_overlay:description,pages_language_overlay:media,pages_language_overlay:author_email,pages_language_overlay:abstract,pages_language_overlay:nav_title,pages_language_overlay:tx_realurl_pathsegment,pages_language_overlay:hidden,pages_language_overlay:starttime,pages_language_overlay:keywords,pages_language_overlay:endtime,pages_language_overlay:doktype,pages_language_overlay:urltype,pages_language_overlay:subtitle,pages_language_overlay:url,pages_language_overlay:shortcut_mode,tx_news_domain_model_news:endtime,tx_news_domain_model_news:alternative_title,tx_news_domain_model_news:archive,tx_news_domain_model_news:editlock,tx_news_domain_model_news:description,tx_news_domain_model_news:author_email,tx_news_domain_model_news:content_elements,tx_news_domain_model_news:categories,tx_news_domain_model_news:fal_media,tx_news_domain_model_news:author,tx_news_domain_model_news:sys_language_uid,tx_news_domain_model_news:path_segment,tx_news_domain_model_news:keywords,tx_news_domain_model_news:tags,tx_news_domain_model_news:teaser,tx_news_domain_model_news:istopnews,tx_news_domain_model_news:l10n_parent,tx_news_domain_model_news:hidden,tx_news_domain_model_news:related_from,tx_news_domain_model_news:starttime,tx_news_domain_model_news:fe_group,tx_news_domain_model_news:fal_related_files,tx_news_domain_model_news:related_links,tx_news_domain_model_news:related,backend_layout:hidden,backend_layout:icon,sys_file_metadata:width,sys_file_metadata:height,sys_file_metadata:categories,sys_file_metadata:title,sys_file_reference:alternative,sys_file_reference:autoplay,sys_file_reference:description,sys_file_reference:crop,sys_file_reference:showinpreview,sys_file_reference:link,sys_file_reference:title,sys_file_collection:sys_language_uid,sys_file_collection:starttime,sys_file_collection:endtime,sys_file_collection:l10n_parent,sys_file_collection:hidden,sys_category:seo_title,sys_category:images,sys_category:single_pid,sys_category:seo_headline,sys_category:seo_description,sys_category:shortcut,sys_category:seo_text,sys_category:sys_language_uid,sys_category:starttime,sys_category:endtime,sys_category:l10n_parent,sys_category:hidden,tx_news_domain_model_link:description,tx_news_domain_model_link:sys_language_uid,tx_news_domain_model_link:l10n_parent,tx_news_domain_model_link:hidden,tx_news_domain_model_tag:seo_text,tx_news_domain_model_tag:seo_title,tx_news_domain_model_tag:seo_headline,tx_news_domain_model_tag:seo_description,tx_news_domain_model_tag:hidden,pages:newUntil,pages:alias,pages:fe_login_mode,pages:author,pages:backend_layout_next_level,pages:backend_layout,pages:editlock,pages:description,pages:cache_timeout,pages:cache_tags,pages:media,pages:tx_realurl_pathoverride,pages:author_email,pages:mount_pid_ol,pages:module,pages:nav_hide,pages:content_from_pid,pages:abstract,pages:extendToSubpages,pages:is_siteroot,pages:categories,pages:layout,pages:lastUpdated,pages:l18n_cfg,pages:nav_title,pages:no_cache,pages:tx_realurl_exclude,pages:no_search,pages:tx_realurl_pathsegment,pages:hidden,pages:tsconfig_includes,pages:php_tree_stop,pages:starttime,pages:keywords,pages:endtime,pages:TSconfig,pages:doktype,pages:subtitle,pages:shortcut_mode,pages:target,pages:fe_group,tt_content:space_after_class,tt_content:space_before_class,tt_content:pages,tt_content:header_position,tt_content:editlock,tt_content:uploads_description,tt_content:rowDescription,tt_content:imagewidth,tt_content:uploads_type,tt_content:date,tt_content:table_delimiter,tt_content:imageheight,tt_content:sectionIndex,tt_content:categories,tt_content:image_zoom,tt_content:layout,tt_content:header_link,tt_content:linkToTop,tt_content:imageorient,tt_content:table_header_position,tt_content:imageborder,tt_content:frame_class,tt_content:recursive,tt_content:imagecols,tt_content:colPos,tt_content:sys_language_uid,tt_content:starttime,tt_content:endtime,tt_content:table_tfoot,tt_content:table_class,tt_content:table_caption,tt_content:table_enclosure,tt_content:bullets_type,tt_content:header_layout,tt_content:subheader,tt_content:l18n_parent,tt_content:hidden,tt_content:fe_group,fe_users:address,fe_users:lockToDomain,fe_users:felogin_redirectPid,fe_users:image,fe_users:tx_extbase_type,fe_users:email,fe_users:fax,fe_users:company,fe_users:disable,fe_users:country,fe_users:lastlogin,fe_users:middle_name,fe_users:last_name,fe_users:name,fe_users:felogin_forgotHash,fe_users:zip,fe_users:city,fe_users:starttime,fe_users:endtime,fe_users:telephone,fe_users:title,fe_users:TSconfig,fe_users:first_name,fe_users:www', 'tt_content:CType:header:ALLOW,tt_content:CType:text:ALLOW,tt_content:CType:textpic:ALLOW,tt_content:CType:image:ALLOW,tt_content:CType:textmedia:ALLOW,tt_content:CType:bullets:ALLOW,tt_content:CType:table:ALLOW,tt_content:CType:uploads:ALLOW,tt_content:CType:menu_abstract:ALLOW,tt_content:CType:menu_categorized_content:ALLOW,tt_content:CType:menu_categorized_pages:ALLOW,tt_content:CType:menu_pages:ALLOW,tt_content:CType:menu_subpages:ALLOW,tt_content:CType:menu_recently_updated:ALLOW,tt_content:CType:menu_related_pages:ALLOW,tt_content:CType:menu_section:ALLOW,tt_content:CType:menu_section_pages:ALLOW,tt_content:CType:menu_sitemap:ALLOW,tt_content:CType:menu_sitemap_pages:ALLOW,tt_content:CType:shortcut:ALLOW,tt_content:CType:list:ALLOW,tt_content:CType:div:ALLOW,tt_content:CType:html:ALLOW,tt_content:CType:login:ALLOW,tt_content:CType:form_formframework:ALLOW', '', '', '1', '1,4,3', 'pages,sys_category,sys_collection,sys_file,sys_file_collection,sys_file_metadata,sys_file_reference,sys_file_storage,pages_language_overlay,tt_content,tx_news_domain_model_link,tx_news_domain_model_news,tx_news_domain_model_tag', 'pages,sys_category,sys_collection,sys_file,sys_file_collection,sys_file_metadata,sys_file_reference,sys_file_storage,pages_language_overlay,tt_content,tx_news_domain_model_link,tx_news_domain_model_news,tx_news_domain_model_tag', 1528987737, 1, 'web_layout,web_ViewpageView,web_list,web_info,web_func,web_RealurlRealurl,web_NewsTxNewsM2,file_FilelistList,user_setup,help_DocumentationDocumentation,help_CshmanualCshmanual,help_AboutAbout', '1,2', 'readFolder,writeFolder,addFolder,renameFolder,moveFolder,deleteFolder,readFile,writeFile,addFile,renameFile,replaceFile,moveFile,copyFile,deleteFile', 0, '', '', 0, '', '1', 0, '', NULL);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `be_users`
--

DROP TABLE IF EXISTS `be_users`;
CREATE TABLE `be_users` (
  `uid` int(10) UNSIGNED NOT NULL,
  `pid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `tstamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `username` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8_unicode_ci,
  `avatar` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `password` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `admin` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `usergroup` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `disable` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `starttime` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `endtime` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `lang` varchar(6) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `db_mountpoints` text COLLATE utf8_unicode_ci,
  `options` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `crdate` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cruser_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `realName` varchar(80) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `userMods` text COLLATE utf8_unicode_ci,
  `allowed_languages` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `uc` mediumblob,
  `file_mountpoints` text COLLATE utf8_unicode_ci,
  `file_permissions` text COLLATE utf8_unicode_ci,
  `workspace_perms` smallint(6) NOT NULL DEFAULT '1',
  `lockToDomain` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `disableIPlock` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `deleted` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `TSconfig` text COLLATE utf8_unicode_ci,
  `lastlogin` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `createdByAction` int(11) NOT NULL DEFAULT '0',
  `usergroup_cached_list` text COLLATE utf8_unicode_ci,
  `workspace_id` int(11) NOT NULL DEFAULT '0',
  `category_perms` text COLLATE utf8_unicode_ci,
  `tx_news_categorymounts` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `password_reset_token` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Daten für Tabelle `be_users`
--

INSERT INTO `be_users` (`uid`, `pid`, `tstamp`, `username`, `description`, `avatar`, `password`, `admin`, `usergroup`, `disable`, `starttime`, `endtime`, `lang`, `email`, `db_mountpoints`, `options`, `crdate`, `cruser_id`, `realName`, `userMods`, `allowed_languages`, `uc`, `file_mountpoints`, `file_permissions`, `workspace_perms`, `lockToDomain`, `disableIPlock`, `deleted`, `TSconfig`, `lastlogin`, `createdByAction`, `usergroup_cached_list`, `workspace_id`, `category_perms`, `tx_news_categorymounts`, `password_reset_token`) VALUES
(1, 0, 1578307985, 'dummy-admin', '', 0, '$argon2i$v=19$m=65536,t=16,p=2$Ym94TE9VQk5HdUl2cFNXTQ$Woxi9Y6kyymLuvoRgwgvJWjov4Y4urA13AEOify6+MM', 1, '', 0, 0, 0, '', '', '', 0, 1528987737, 1, '', '', '', 0x613a32303a7b733a31343a22696e746572666163655365747570223b733a373a226261636b656e64223b733a31303a226d6f64756c6544617461223b613a31313a7b733a31303a227765625f6c61796f7574223b613a323a7b733a383a2266756e6374696f6e223b733a313a2231223b733a383a226c616e6775616765223b733a313a2230223b7d733a383a227765625f6c697374223b613a303a7b7d733a31303a22466f726d456e67696e65223b613a323a7b693a303b613a303a7b7d693a313b733a33323a226638373333376561303766643565343662373438376134643633613033613033223b7d733a35373a225459504f335c434d535c4261636b656e645c5574696c6974795c4261636b656e645574696c6974793a3a6765745570646174655369676e616c223b613a303a7b7d733a31363a226f70656e646f63733a3a726563656e74223b613a383a7b733a33323a226638373333376561303766643565343662373438376134643633613033613033223b613a343a7b693a303b733a33323a2256696e6774206d696c6c65206c696575657320736f7573206c6573206d657273223b693a313b613a363a7b733a343a2265646974223b613a313a7b733a31303a2274745f636f6e74656e74223b613a313a7b693a383b733a343a2265646974223b7d7d733a373a2264656656616c73223b4e3b733a31323a226f7665727269646556616c73223b4e3b733a31313a22636f6c756d6e734f6e6c79223b4e3b733a363a226e6f56696577223b4e3b733a393a22776f726b7370616365223b4e3b7d693a323b733a33333a22266564697425354274745f636f6e74656e74253544253542382535443d65646974223b693a333b613a353a7b733a353a227461626c65223b733a31303a2274745f636f6e74656e74223b733a333a22756964223b693a383b733a333a22706964223b693a383b733a333a22636d64223b733a343a2265646974223b733a31323a2264656c657465416363657373223b623a313b7d7d733a33323a223634656434616566646563623735343039616334633865366631303762333333223b613a343a7b693a303b733a393a227479706f61646d696e223b693a313b613a363a7b733a343a2265646974223b613a313a7b733a383a2262655f7573657273223b613a313a7b693a323b733a343a2265646974223b7d7d733a373a2264656656616c73223b4e3b733a31323a226f7665727269646556616c73223b4e3b733a31313a22636f6c756d6e734f6e6c79223b4e3b733a363a226e6f56696577223b4e3b733a393a22776f726b7370616365223b4e3b7d693a323b733a33313a22266564697425354262655f7573657273253544253542322535443d65646974223b693a333b613a353a7b733a353a227461626c65223b733a383a2262655f7573657273223b733a333a22756964223b693a323b733a333a22706964223b693a303b733a333a22636d64223b733a343a2265646974223b733a31323a2264656c657465416363657373223b623a313b7d7d733a33323a223961303163663966333363396530376638653333396364396230393038326664223b613a343a7b693a303b733a31303a22526564616b746f72656e223b693a313b613a363a7b733a343a2265646974223b613a313a7b733a393a2262655f67726f757073223b613a313a7b693a323b733a343a2265646974223b7d7d733a373a2264656656616c73223b4e3b733a31323a226f7665727269646556616c73223b4e3b733a31313a22636f6c756d6e734f6e6c79223b4e3b733a363a226e6f56696577223b4e3b733a393a22776f726b7370616365223b4e3b7d693a323b733a33323a22266564697425354262655f67726f757073253544253542322535443d65646974223b693a333b613a353a7b733a353a227461626c65223b733a393a2262655f67726f757073223b733a333a22756964223b693a323b733a333a22706964223b693a303b733a333a22636d64223b733a343a2265646974223b733a31323a2264656c657465416363657373223b623a313b7d7d733a33323a226234303232636664386463363832613766323539326236643131323439343333223b613a343a7b693a303b733a32313a225f676c6f62616c53657474696e6773466f72416c6c223b693a313b613a363a7b733a343a2265646974223b613a313a7b733a393a2262655f67726f757073223b613a313a7b693a313b733a343a2265646974223b7d7d733a373a2264656656616c73223b4e3b733a31323a226f7665727269646556616c73223b4e3b733a31313a22636f6c756d6e734f6e6c79223b4e3b733a363a226e6f56696577223b4e3b733a393a22776f726b7370616365223b4e3b7d693a323b733a33323a22266564697425354262655f67726f757073253544253542312535443d65646974223b693a333b613a353a7b733a353a227461626c65223b733a393a2262655f67726f757073223b733a333a22756964223b693a313b733a333a22706964223b693a303b733a333a22636d64223b733a343a2265646974223b733a31323a2264656c657465416363657373223b623a313b7d7d733a33323a223839343934636130336330643731363134633230373937633337323936633561223b613a343a7b693a303b733a393a227768697465726f6f6d223b693a313b613a363a7b733a343a2265646974223b613a313a7b733a383a2262655f7573657273223b613a313a7b693a313b733a343a2265646974223b7d7d733a373a2264656656616c73223b4e3b733a31323a226f7665727269646556616c73223b4e3b733a31313a22636f6c756d6e734f6e6c79223b4e3b733a363a226e6f56696577223b4e3b733a393a22776f726b7370616365223b4e3b7d693a323b733a33313a22266564697425354262655f7573657273253544253542312535443d65646974223b693a333b613a353a7b733a353a227461626c65223b733a383a2262655f7573657273223b733a333a22756964223b693a313b733a333a22706964223b693a303b733a333a22636d64223b733a343a2265646974223b733a31323a2264656c657465416363657373223b623a313b7d7d733a33323a226163376532363433643531333430396134663832326463333835646437656432223b613a343a7b693a303b733a31343a225f636c695f7363686564756c6572223b693a313b613a363a7b733a343a2265646974223b613a313a7b733a383a2262655f7573657273223b613a313a7b693a333b733a343a2265646974223b7d7d733a373a2264656656616c73223b4e3b733a31323a226f7665727269646556616c73223b4e3b733a31313a22636f6c756d6e734f6e6c79223b4e3b733a363a226e6f56696577223b4e3b733a393a22776f726b7370616365223b4e3b7d693a323b733a33313a22266564697425354262655f7573657273253544253542332535443d65646974223b693a333b613a353a7b733a353a227461626c65223b733a383a2262655f7573657273223b733a333a22756964223b693a333b733a333a22706964223b693a303b733a333a22636d64223b733a343a2265646974223b733a31323a2264656c657465416363657373223b623a313b7d7d733a33323a226632636461303334623866646633316533306464333835636437666330383837223b613a343a7b693a303b733a363a2253747564696f223b693a313b613a363a7b733a343a2265646974223b613a313a7b733a353a227061676573223b613a313a7b693a383b733a343a2265646974223b7d7d733a373a2264656656616c73223b4e3b733a31323a226f7665727269646556616c73223b4e3b733a31313a22636f6c756d6e734f6e6c79223b4e3b733a363a226e6f56696577223b4e3b733a393a22776f726b7370616365223b4e3b7d693a323b733a32383a2226656469742535427061676573253544253542382535443d65646974223b693a333b613a353a7b733a353a227461626c65223b733a353a227061676573223b733a333a22756964223b693a383b733a333a22706964223b693a313b733a333a22636d64223b733a343a2265646974223b733a31323a2264656c657465416363657373223b623a313b7d7d733a33323a226661323062613363373763343663393635343134623566393639663138316131223b613a343a7b693a303b733a31343a22656672676874683033372e6a7067223b693a313b613a363a7b733a343a2265646974223b613a313a7b733a31373a227379735f66696c655f6d65746164617461223b613a313a7b693a37353b733a343a2265646974223b7d7d733a373a2264656656616c73223b4e3b733a31323a226f7665727269646556616c73223b4e3b733a31313a22636f6c756d6e734f6e6c79223b4e3b733a363a226e6f56696577223b4e3b733a393a22776f726b7370616365223b4e3b7d693a323b733a38383a2226656469745b7379735f66696c655f6d657461646174615d5b37355d3d656469742664656656616c733d266f7665727269646556616c733d26636f6c756d6e734f6e6c793d266e6f566965773d26776f726b73706163653d223b693a333b613a353a7b733a353a227461626c65223b733a31373a227379735f66696c655f6d65746164617461223b733a333a22756964223b693a37353b733a333a22706964223b693a303b733a333a22636d64223b733a343a2265646974223b733a31323a2264656c657465416363657373223b623a313b7d7d7d733a393a2266696c655f6c697374223b613a313a7b733a31353a22626967436f6e74726f6c50616e656c223b733a313a2231223b7d733a393a2274785f626575736572223b733a3533303a224f3a34303a225459504f335c434d535c4265757365725c446f6d61696e5c4d6f64656c5c4d6f64756c6544617461223a323a7b733a393a22002a0064656d616e64223b4f3a33363a225459504f335c434d535c4265757365725c446f6d61696e5c4d6f64656c5c44656d616e64223a31323a7b733a31313a22002a00757365724e616d65223b733a303a22223b733a31313a22002a007573657254797065223b693a303b733a393a22002a00737461747573223b693a303b733a393a22002a006c6f67696e73223b693a303b733a31393a22002a006261636b656e645573657247726f7570223b4e3b733a363a22002a00756964223b4e3b733a31363a22002a005f6c6f63616c697a6564556964223b4e3b733a31353a22002a005f6c616e6775616765556964223b4e3b733a31363a22002a005f76657273696f6e6564556964223b4e3b733a363a22002a00706964223b4e3b733a36313a22005459504f335c434d535c457874626173655c446f6d61696e4f626a6563745c4162737472616374446f6d61696e4f626a656374005f6973436c6f6e65223b623a303b733a36393a22005459504f335c434d535c457874626173655c446f6d61696e4f626a6563745c4162737472616374446f6d61696e4f626a656374005f636c65616e50726f70657274696573223b613a303a7b7d7d733a31383a22002a00636f6d70617265557365724c697374223b613a303a7b7d7d223b733a31333a22784d4f445f7478696d70657870223b613a313a7b733a383a2266756e6374696f6e223b733a303a22223b7d733a31323a2273797374656d5f6462696e74223b613a333a7b733a383a2266756e6374696f6e223b733a373a227265636f726473223b733a363a22736561726368223b733a333a22726177223b733a32323a227365617263685f71756572795f6d616b655175657279223b733a333a22616c6c223b7d733a34373a225459504f335c434d535c42656c6f675c436f6e74726f6c6c65725c4261636b656e644c6f67436f6e74726f6c6c6572223b733a3335333a224f3a33393a225459504f335c434d535c42656c6f675c446f6d61696e5c4d6f64656c5c436f6e73747261696e74223a31323a7b733a31343a22002a00757365724f7247726f7570223b733a313a2230223b733a393a22002a006e756d626572223b693a32303b733a31353a22002a00776f726b7370616365556964223b693a2d39393b733a31323a22002a0074696d654672616d65223b693a303b733a393a22002a00616374696f6e223b693a2d313b733a31343a22002a0067726f7570427950616765223b623a303b733a31373a22002a00737461727454696d657374616d70223b693a303b733a31353a22002a00656e6454696d657374616d70223b693a303b733a31383a22002a006d616e75616c446174655374617274223b4e3b733a31373a22002a006d616e75616c4461746553746f70223b4e3b733a393a22002a00706167654964223b693a303b733a383a22002a006465707468223b693a303b7d223b733a383a227765625f696e666f223b613a313a7b733a383a2266756e6374696f6e223b733a34383a225459504f335c434d535c42656c6f675c4d6f64756c655c4261636b656e644c6f674d6f64756c65426f6f747374726170223b7d7d733a31393a227468756d626e61696c73427944656661756c74223b693a313b733a31343a22656d61696c4d6541744c6f67696e223b693a303b733a31313a2273746172744d6f64756c65223b733a31353a2268656c705f41626f757441626f7574223b733a383a227469746c654c656e223b693a35303b733a383a22656469745f525445223b733a313a2231223b733a32303a22656469745f646f634d6f64756c6555706c6f6164223b733a313a2231223b733a31353a22726573697a65546578746172656173223b693a313b733a32353a22726573697a655465787461726561735f4d6178486569676874223b693a3530303b733a32343a22726573697a655465787461726561735f466c657869626c65223b693a303b733a343a226c616e67223b733a303a22223b733a31393a2266697273744c6f67696e54696d655374616d70223b693a313532393030323832343b733a31353a226d6f64756c6553657373696f6e4944223b613a31313a7b733a31303a227765625f6c61796f7574223b733a33323a223564666566646635346434316366646130353235343330633061373233383463223b733a383a227765625f6c697374223b733a33323a223865346161623131333731623865626566633033363430373461386433343432223b733a31303a22466f726d456e67696e65223b733a33323a226232666230303337663030613961333934623035313530333437356335393432223b733a35373a225459504f335c434d535c4261636b656e645c5574696c6974795c4261636b656e645574696c6974793a3a6765745570646174655369676e616c223b733a33323a226232666230303337663030613961333934623035313530333437356335393432223b733a31363a226f70656e646f63733a3a726563656e74223b733a33323a226232666230303337663030613961333934623035313530333437356335393432223b733a393a2266696c655f6c697374223b733a33323a223137363639373961633266643231353435353965623936316138633336653636223b733a393a2274785f626575736572223b733a33323a226562663233363431303135366361633461316236653763363166643430646231223b733a31333a22784d4f445f7478696d70657870223b733a33323a226165313133656631353036636335646664383335346364623230306631326637223b733a31323a2273797374656d5f6462696e74223b733a33323a223863326634626666373831666337313436633231653131366665356161643132223b733a34373a225459504f335c434d535c42656c6f675c436f6e74726f6c6c65725c4261636b656e644c6f67436f6e74726f6c6c6572223b733a33323a226232666230303337663030613961333934623035313530333437356335393432223b733a383a227765625f696e666f223b733a33323a226537653635636139313833313037323731306636613661653432303732343166223b7d733a31373a224261636b656e64436f6d706f6e656e7473223b613a313a7b733a363a22537461746573223b613a313a7b733a383a225061676574726565223b613a313a7b733a393a22737461746548617368223b613a31313a7b693a303b733a313a2231223b693a313b733a313a2231223b693a323b733a313a2231223b693a333b733a313a2231223b693a343b733a313a2231223b693a353b733a313a2231223b693a363b733a313a2231223b693a373b733a313a2231223b733a343a22726f6f74223b733a313a2231223b733a31363a226c61737453656c65637465644e6f6465223b733a323a227038223b733a333a22305f31223b733a313a2231223b7d7d7d7d733a31313a2262726f7773655472656573223b613a313a7b733a363a22666f6c646572223b733a38303a227b223235323138223a7b223632383232373234223a312c22313832303837353535223a312c22323039383630383439223a312c22313136303637363934223a312c22323536303037313339223a317d7d223b7d733a31343a22696e64657865645f736561726368223b613a323a7b733a363a22616374696f6e223b733a353a22696e646578223b733a393a22617267756d656e7473223b613a323a7b733a363a22616374696f6e223b733a353a22696e646578223b733a31303a22636f6e74726f6c6c6572223b733a31343a2241646d696e697374726174696f6e223b7d7d733a31303a22696e6c696e6556696577223b733a35303a227b2274745f636f6e74656e74223a7b2238223a7b227379735f66696c655f7265666572656e6365223a5b223133225d7d7d7d223b733a31373a2273797374656d696e666f726d6174696f6e223b733a34353a227b2273797374656d5f42656c6f674c6f67223a7b226c617374416363657373223a313539333631353937377d7d223b733a373a227265706f727473223b613a313a7b733a393a2273656c656374696f6e223b613a323a7b733a393a22657874656e73696f6e223b733a31303a2274785f7265706f727473223b733a363a227265706f7274223b733a363a22737461747573223b7d7d7d, '', 'readFolder,writeFolder,addFolder,renameFolder,moveFolder,deleteFolder,readFile,writeFile,addFile,renameFile,replaceFile,moveFile,copyFile,deleteFile', 1, '', 0, 0, NULL, 1578308090, 0, NULL, 0, '', '', ''),
(2, 0, 1578307372, 'clientuser', '', 0, '$argon2i$v=19$m=65536,t=16,p=2$TGtreUZnY2lHSlJmMkdYRg$0bv3W234NX1GKkVZhYi6rCbyDbHzT9b5Ikbs8e9h86A', 0, '2', 0, 0, 0, 'de', '', '', 3, 1528987737, 1, '', '', '', 0x613a31383a7b733a31343a22696e746572666163655365747570223b733a303a22223b733a31303a226d6f64756c6544617461223b613a323a7b733a31303a227765625f6c61796f7574223b613a323a7b733a383a2266756e6374696f6e223b733a313a2231223b733a383a226c616e6775616765223b733a313a2230223b7d733a393a2266696c655f6c697374223b613a303a7b7d7d733a31393a227468756d626e61696c73427944656661756c74223b693a313b733a31343a22656d61696c4d6541744c6f67696e223b693a303b733a31313a2273746172744d6f64756c65223b733a31353a2268656c705f41626f757441626f7574223b733a383a227469746c654c656e223b693a35303b733a383a22656469745f525445223b733a313a2231223b733a32303a22656469745f646f634d6f64756c6555706c6f6164223b733a313a2231223b733a31353a22726573697a65546578746172656173223b693a313b733a32353a22726573697a655465787461726561735f4d6178486569676874223b693a3530303b733a32343a22726573697a655465787461726561735f466c657869626c65223b693a303b733a31333a22636f6e64656e7365644d6f6465223b733a313a2230223b733a31323a22657874656e64656456696577223b733a313a2231223b733a32323a22727465436c65616e50617374654265686176696f7572223b733a393a22706c61696e54657874223b733a343a226c616e67223b733a323a226465223b733a31393a2266697273744c6f67696e54696d655374616d70223b693a313532393439343830353b733a31353a226d6f64756c6553657373696f6e4944223b613a323a7b733a31303a227765625f6c61796f7574223b733a33323a223865346161623131333731623865626566633033363430373461386433343432223b733a393a2266696c655f6c697374223b733a33323a223865346161623131333731623865626566633033363430373461386433343432223b7d733a31373a224261636b656e64436f6d706f6e656e7473223b613a313a7b733a363a22537461746573223b613a313a7b733a383a225061676574726565223b613a313a7b733a393a22737461746548617368223b613a323a7b693a303b733a313a2231223b733a343a22726f6f74223b733a313a2231223b7d7d7d7d7d, '', 'readFolder,writeFolder,addFolder,renameFolder,moveFolder,deleteFolder,readFile,writeFile,addFile,renameFile,replaceFile,moveFile,copyFile,deleteFile', 1, '', 0, 0, '', 0, 0, '1,2', 0, '', '', ''),
(3, 0, 1578307462, '_cli_scheduler', '', 0, '$argon2i$v=19$m=65536,t=16,p=2$bTBJbWljU3FVb2FPZXkyUw$zsMK+nsQ5cMCFfjhV/6h6NtIOZJfagg+S7dEVtIOaNk', 0, '', 0, 0, 0, 'de', '', '', 3, 1528987737, 1, '', '', '', NULL, '', 'readFolder,writeFolder,addFolder,renameFolder,moveFolder,deleteFolder,readFile,writeFile,addFile,renameFile,replaceFile,moveFile,copyFile,deleteFile', 1, '', 0, 0, NULL, 0, 0, NULL, 0, '', '', '');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `pages`
--

DROP TABLE IF EXISTS `pages`;
CREATE TABLE `pages` (
  `uid` int(10) UNSIGNED NOT NULL,
  `pid` int(11) NOT NULL DEFAULT '0',
  `t3ver_oid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `t3ver_wsid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `t3ver_state` smallint(6) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `t3ver_move_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `t3_origuid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `tstamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `sorting` int(11) NOT NULL DEFAULT '0',
  `deleted` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `perms_userid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `perms_groupid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `perms_user` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `perms_group` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `perms_everybody` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `editlock` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `crdate` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cruser_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `hidden` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `doktype` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `TSconfig` text COLLATE utf8_unicode_ci,
  `is_siteroot` smallint(6) NOT NULL DEFAULT '0',
  `php_tree_stop` smallint(6) NOT NULL DEFAULT '0',
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `starttime` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `endtime` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `shortcut` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `shortcut_mode` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `fe_group` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `subtitle` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `layout` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `target` varchar(80) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `media` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `lastUpdated` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `keywords` text COLLATE utf8_unicode_ci,
  `cache_timeout` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cache_tags` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `newUntil` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `description` text COLLATE utf8_unicode_ci,
  `no_search` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `SYS_LASTCHANGED` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `abstract` text COLLATE utf8_unicode_ci,
  `module` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `extendToSubpages` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `author` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `author_email` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `nav_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `nav_hide` smallint(6) NOT NULL DEFAULT '0',
  `content_from_pid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `mount_pid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `mount_pid_ol` smallint(6) NOT NULL DEFAULT '0',
  `l18n_cfg` smallint(6) NOT NULL DEFAULT '0',
  `fe_login_mode` smallint(6) NOT NULL DEFAULT '0',
  `backend_layout` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `backend_layout_next_level` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tsconfig_includes` text COLLATE utf8_unicode_ci,
  `tx_impexp_origuid` int(11) NOT NULL DEFAULT '0',
  `categories` int(11) NOT NULL DEFAULT '0',
  `rowDescription` text COLLATE utf8_unicode_ci,
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `l10n_source` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `l10n_state` text COLLATE utf8_unicode_ci,
  `l10n_diffsource` mediumblob,
  `slug` varchar(2048) COLLATE utf8_unicode_ci DEFAULT NULL,
  `legacy_overlay_uid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `no_index` smallint(6) NOT NULL DEFAULT '0',
  `no_follow` smallint(6) NOT NULL DEFAULT '0',
  `og_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `og_description` text COLLATE utf8_unicode_ci,
  `og_image` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `twitter_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `twitter_description` text COLLATE utf8_unicode_ci,
  `twitter_image` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `canonical_link` varchar(2048) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `l10n_parent` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `seo_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `sitemap_priority` decimal(1,1) NOT NULL DEFAULT '0.5',
  `sitemap_changefreq` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `twitter_card` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Daten für Tabelle `pages`
--

INSERT INTO `pages` (`uid`, `pid`, `t3ver_oid`, `t3ver_wsid`, `t3ver_state`, `t3ver_stage`, `t3ver_count`, `t3ver_tstamp`, `t3ver_move_id`, `t3_origuid`, `tstamp`, `sorting`, `deleted`, `perms_userid`, `perms_groupid`, `perms_user`, `perms_group`, `perms_everybody`, `editlock`, `crdate`, `cruser_id`, `hidden`, `title`, `doktype`, `TSconfig`, `is_siteroot`, `php_tree_stop`, `url`, `starttime`, `endtime`, `shortcut`, `shortcut_mode`, `fe_group`, `subtitle`, `layout`, `target`, `media`, `lastUpdated`, `keywords`, `cache_timeout`, `cache_tags`, `newUntil`, `description`, `no_search`, `SYS_LASTCHANGED`, `abstract`, `module`, `extendToSubpages`, `author`, `author_email`, `nav_title`, `nav_hide`, `content_from_pid`, `mount_pid`, `mount_pid_ol`, `l18n_cfg`, `fe_login_mode`, `backend_layout`, `backend_layout_next_level`, `tsconfig_includes`, `tx_impexp_origuid`, `categories`, `rowDescription`, `sys_language_uid`, `l10n_source`, `l10n_state`, `l10n_diffsource`, `slug`, `legacy_overlay_uid`, `no_index`, `no_follow`, `og_title`, `og_description`, `og_image`, `twitter_title`, `twitter_description`, `twitter_image`, `canonical_link`, `l10n_parent`, `seo_title`, `sitemap_priority`, `sitemap_changefreq`, `twitter_card`) VALUES
(1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1528987737, 256, 0, 1, 1, 31, 31, 0, 0, 1528987737, 1, 0, 'Home', 1, '', 1, 0, '', 0, 0, 0, 0, '', 'Persönliche Beratung, individuelle Lösungen, sorgfältige Ausführung', 0, '', 6, 0, NULL, 0, '', 0, NULL, 0, 1528987737, NULL, '', 0, '', '', '', 0, 0, 0, 0, 0, 0, 'pagets__1', 'pagets__2', '', 1, 0, NULL, 0, 0, NULL, NULL, '/', 0, 0, 0, '', NULL, 0, '', NULL, 0, '', 0, '', 0.5, '', ''),
(2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1528987737, 256, 0, 1, 1, 31, 27, 0, 0, 1528987737, 1, 0, 'News', 254, '', 0, 0, '', 0, 0, 0, 0, '', '', 0, '', 0, 0, NULL, 0, '', 0, NULL, 0, 0, NULL, 'news', 0, '', '', '', 0, 0, 0, 0, 0, 0, '', '', '', 2, 0, NULL, 0, 0, NULL, NULL, '/news', 0, 0, 0, '', NULL, 0, '', NULL, 0, '', 0, '', 0.5, '', ''),
(3, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1528987737, 128, 0, 1, 1, 31, 27, 0, 0, 1528987737, 1, 0, 'Meta Navigation (Utilities)', 254, NULL, 0, 0, '', 0, 0, 0, 0, '', '', 0, '', 0, 0, NULL, 0, '', 0, NULL, 0, 0, NULL, '', 0, '', '', '', 0, 0, 0, 0, 0, 0, '', '', '', 3, 0, NULL, 0, 0, NULL, NULL, '/meta-navigation-utilities', 0, 0, 0, '', NULL, 0, '', NULL, 0, '', 0, '', 0.5, '', ''),
(4, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1528987737, 64, 0, 1, 1, 31, 27, 0, 0, 1528987737, 1, 0, 'Kontakt', 1, '', 0, 0, '', 0, 0, 0, 0, '', '', 0, '', 0, 0, '', 0, '', 0, '', 0, 1564234261, '', '', 0, '', '', '', 0, 0, 0, 0, 0, 0, '', '', '', 4, 0, NULL, 0, 0, NULL, NULL, '/kontakt', 0, 0, 0, '', NULL, 0, '', NULL, 0, '', 0, '', 0.5, '', ''),
(5, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1528987737, 32, 0, 1, 1, 31, 31, 0, 0, 1528987737, 1, 0, 'Wettbewerbe', 1, NULL, 0, 0, '', 0, 0, 0, 0, '', 'Proche a l\'académie royale des sciences de Berlin et l\'Institution Smithsonnienne de Washington', 0, '', 0, 0, NULL, 0, '', 0, NULL, 0, 1528987737, NULL, '', 0, '', '', '', 0, 0, 0, 0, 0, 0, '', '', '', 5, 0, NULL, 0, 0, NULL, NULL, '/wettbewerbe', 0, 0, 0, '', NULL, 0, '', NULL, 0, '', 0, '', 0.5, '', ''),
(6, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1528987737, 16, 0, 1, 1, 31, 31, 0, 0, 1528987737, 1, 0, 'Portfolio', 1, '', 0, 0, '', 0, 0, 0, 0, '', 'Sort of earthenware for my use', 0, '', 0, 0, NULL, 0, '', 0, NULL, 0, 1528992375, NULL, '', 0, '', '', '', 0, 0, 0, 0, 0, 0, '', '', '', 6, 0, NULL, 0, 0, NULL, NULL, '/portfolio', 0, 0, 0, '', NULL, 0, '', NULL, 0, '', 0, '', 0.5, '', ''),
(7, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1528987737, 8, 0, 1, 1, 31, 31, 0, 0, 1528987737, 1, 0, 'Fotografien', 1, NULL, 0, 0, '', 0, 0, 0, 0, '', 'Les canards eurent là une belle occasion de pondre des oeufs de toute couleur', 0, '', 0, 0, NULL, 0, '', 0, NULL, 0, 1528987737, NULL, '', 0, '', '', '', 0, 0, 0, 0, 0, 0, '', '', '', 7, 0, NULL, 0, 0, NULL, NULL, '/fotografien', 0, 0, 0, '', NULL, 0, '', NULL, 0, '', 0, '', 0.5, '', ''),
(8, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1528987737, 4, 0, 1, 1, 31, 31, 0, 0, 1528987737, 1, 0, 'Studio', 1, NULL, 0, 0, '', 0, 0, 0, 0, '', 'Untertitel der aktuellen Seite, mit maximal 255 Zeichen, da hat es durchaus Platz zum Schreiben, auch auf drei Zeilen.', 0, '', 0, 0, NULL, 0, '', 0, NULL, 0, 1528987737, NULL, '', 0, '', '', '', 0, 0, 0, 0, 0, 0, '', '', '', 8, 0, NULL, 0, 0, NULL, NULL, '/studio', 0, 0, 0, '', NULL, 0, '', NULL, 0, '', 0, '', 0.5, '', ''),
(9, 8, 0, 0, 0, 0, 0, 0, 0, 0, 1528987737, 256, 0, 1, 1, 31, 31, 0, 0, 1528987737, 1, 0, 'Specification', 1, NULL, 0, 0, '', 0, 0, 0, 0, '', 'Sprache ist Praxis. Sprache an sich existiert nicht', 0, '', 0, 0, NULL, 0, '', 0, NULL, 0, 1528987737, NULL, '', 0, '', '', '', 0, 0, 0, 0, 0, 0, '', '', '', 9, 0, NULL, 0, 0, NULL, NULL, '/studio/specification', 0, 0, 0, '', NULL, 0, '', NULL, 0, '', 0, '', 0.5, '', ''),
(10, 8, 0, 0, 0, 0, 0, 0, 0, 0, 1528987737, 128, 0, 1, 1, 31, 31, 0, 0, 1528987737, 1, 0, 'Catalogue', 1, NULL, 0, 0, '', 0, 0, 0, 0, '', 'Zum Beispiel der Reiseführer für Inseln und ein Exemplar von «Die unglaublichen Abenteuer von Kavalier & Clay»', 0, '', 0, 0, NULL, 0, '', 0, NULL, 0, 1528987737, NULL, '', 0, '', '', '', 0, 0, 0, 0, 0, 0, '', '', '', 10, 0, NULL, 0, 0, NULL, NULL, '/studio/catalogue', 0, 0, 0, '', NULL, 0, '', NULL, 0, '', 0, '', 0.5, '', ''),
(11, 8, 0, 0, 0, 0, 0, 0, 0, 0, 1528987737, 64, 0, 1, 1, 31, 31, 0, 0, 1528987737, 1, 0, 'Download', 1, NULL, 0, 0, '', 0, 0, 0, 0, '', '', 0, '', 0, 0, NULL, 0, '', 0, NULL, 0, 1528987737, NULL, '', 0, '', '', '', 0, 0, 0, 0, 0, 0, '', '', '', 11, 0, NULL, 0, 0, NULL, NULL, '/studio/download', 0, 0, 0, '', NULL, 0, '', NULL, 0, '', 0, '', 0.5, '', '');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `sys_category`
--

DROP TABLE IF EXISTS `sys_category`;
CREATE TABLE `sys_category` (
  `uid` int(10) UNSIGNED NOT NULL,
  `pid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `crdate` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cruser_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `deleted` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `hidden` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `starttime` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `endtime` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `t3ver_oid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `t3ver_wsid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `t3ver_state` smallint(6) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `t3ver_move_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `t3_origuid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `sorting` int(11) NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `l10n_parent` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `l10n_diffsource` mediumblob,
  `title` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `parent` int(11) NOT NULL DEFAULT '0',
  `items` int(11) NOT NULL DEFAULT '0',
  `l10n_state` text COLLATE utf8_unicode_ci,
  `fe_group` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `images` int(10) UNSIGNED DEFAULT '0',
  `single_pid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `shortcut` int(11) NOT NULL DEFAULT '0',
  `import_id` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `import_source` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `seo_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `seo_description` text COLLATE utf8_unicode_ci,
  `seo_headline` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `seo_text` text COLLATE utf8_unicode_ci,
  `slug` varchar(2048) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Daten für Tabelle `sys_category`
--

INSERT INTO `sys_category` (`uid`, `pid`, `tstamp`, `crdate`, `cruser_id`, `deleted`, `hidden`, `starttime`, `endtime`, `t3ver_oid`, `t3ver_wsid`, `t3ver_state`, `t3ver_stage`, `t3ver_count`, `t3ver_tstamp`, `t3ver_move_id`, `t3_origuid`, `sorting`, `sys_language_uid`, `l10n_parent`, `l10n_diffsource`, `title`, `description`, `parent`, `items`, `l10n_state`, `fe_group`, `images`, `single_pid`, `shortcut`, `import_id`, `import_source`, `seo_title`, `seo_description`, `seo_headline`, `seo_text`, `slug`) VALUES
(1, 1, 1528987737, 1528987737, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 256, 0, 0, 0x613a313a7b733a353a226974656d73223b4e3b7d, 'Portfolio', '', 0, 3, NULL, '0', 0, 0, 0, '', '', '', '', '', '', 'portfolio'),
(2, 1, 1528987737, 1528987737, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 128, 0, 0, 0x613a313a7b733a353a226974656d73223b4e3b7d, 'Projekte', '', 0, 6, NULL, '0', 0, 0, 0, '', '', '', '', '', '', 'projekte'),
(3, 1, 1528987737, 1528987737, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 64, 0, 0, 0x613a313a7b733a353a226974656d73223b4e3b7d, 'Exhibitions', '', 0, 2, NULL, '0', 0, 0, 0, '', '', '', '', '', '', 'exhibitions');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `sys_category_record_mm`
--

DROP TABLE IF EXISTS `sys_category_record_mm`;
CREATE TABLE `sys_category_record_mm` (
  `uid_local` int(11) NOT NULL DEFAULT '0',
  `uid_foreign` int(11) NOT NULL DEFAULT '0',
  `tablenames` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `fieldname` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `sorting` int(11) NOT NULL DEFAULT '0',
  `sorting_foreign` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Daten für Tabelle `sys_category_record_mm`
--

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

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `sys_file`
--

DROP TABLE IF EXISTS `sys_file`;
CREATE TABLE `sys_file` (
  `uid` int(10) UNSIGNED NOT NULL,
  `pid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `tstamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
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
  `size` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `creation_date` int(11) NOT NULL DEFAULT '0',
  `modification_date` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Daten für Tabelle `sys_file`
--

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
(34, 0, 1528987773, 1528987773, 0, 1, '2', 0, '/generic_lib/Resources/Public/Images/Portfolio/z666475843826.png', '72efc7ff72843daf9a9a64421bc83dcfe414aacf', '896d7f05a864a46ab40b8ed89448cadd999c7c57', 'png', 'image/png', 'z666475843826.png', '2134470574e32df65e3a48c57f325e9caa69f197', 720896, 1528987773, 1528987773),
(35, 0, 1566817646, 1566817646, 0, 1, '1', 0, '/generic_lib/Resources/Public/Forms/contactformgeneric_lib.form.yaml', 'a326a6123448b10730288b38bf035940aa45694b', '9ba45832af23e5dfbc5243119b139f518de5a440', 'yaml', 'text/plain', 'contactformgeneric_lib.form.yaml', 'def332796caca8f4e043465b599a607df49101c5', 2664, 1566817545, 1566817545),
(36, 0, 1566818176, 1566818176, 0, 1, '5', 0, '/generic_lib/Resources/Public/Downloads/void.pdf', 'ac5d9f6e2a20636ce3769294091e0f608c4b7f50', '4d34e49403542f9f96b723b21e1fea071b7946be', 'pdf', 'application/pdf', 'void.pdf', '06a07dce37ac4a385d7d428ed7f2535b6a8efefa', 10597, 1566817545, 1566817545),
(37, 0, 1566818177, 1566818177, 0, 1, '2', 0, '/generic_lib/Resources/Public/Images/icon.png', 'ad6d51fd53203fb0658314cfd21b85b351368cf2', 'ae26a0ff1342d540c55e85f45ff267f02251d20a', 'png', 'image/png', 'icon.png', '26aadb6abcc651d7e8267966ba545273a20eaebf', 11168, 1566817545, 1566817545),
(38, 0, 1593615831, 0, 0, 1, '2', 0, '/generic_lib/Resources/Public/Images/dummy-preview-image.jpg', 'a71a0326a0541757840e2995812d0df6496d5609', 'ae26a0ff1342d540c55e85f45ff267f02251d20a', 'jpg', 'image/jpeg', 'dummy-preview-image.jpg', '7fd9b88de14a7197b055f727edb39c153113e5b7', 751792, 1593614130, 1593614130),
(39, 0, 1593615831, 0, 0, 1, '2', 0, '/generic_lib/Resources/Public/Images/favicon.ico', 'bd8366f6aca7c855d14181a9f67e3588304773ab', 'ae26a0ff1342d540c55e85f45ff267f02251d20a', 'ico', 'image/vnd.microsoft.icon', 'favicon.ico', '6cdb773fe9afc6d7eaa9ab4e98f64320ac44e27a', 4286, 1593614130, 1593614130),
(40, 0, 1593615831, 0, 0, 1, '2', 0, '/generic_lib/Resources/Public/Images/img_102515664287.jpg', 'c14ae7c74461ee3477b05640e43eca680aedd5f3', 'ae26a0ff1342d540c55e85f45ff267f02251d20a', 'jpg', 'image/jpeg', 'img_102515664287.jpg', 'c067be6a1771db3357aa64f632d93023a15b141a', 955657, 1593614130, 1593614130),
(41, 0, 1593615831, 0, 0, 1, '2', 0, '/generic_lib/Resources/Public/Images/login-logo.svg', '7749ac676f305efdf7bf5423304a555be0cbfba3', 'ae26a0ff1342d540c55e85f45ff267f02251d20a', 'svg', 'image/svg+xml', 'login-logo.svg', '30dec16d9fd9ad05487bc679f293ee9c659e3224', 10374, 1593614130, 1593614130),
(42, 0, 1593615831, 0, 0, 1, '2', 0, '/generic_lib/Resources/Public/Images/logo.svg', '56c8cb1ea3e6b1c9dfccf6d92d54093ff54f0976', 'ae26a0ff1342d540c55e85f45ff267f02251d20a', 'svg', 'image/svg+xml', 'logo.svg', '698c6e60b83ac55201323c70a8371ccc678ba912', 10734, 1593614130, 1593614130),
(43, 0, 1593615831, 0, 0, 1, '2', 0, '/generic_lib/Resources/Public/Images/zzz_img_102515664287.jpg', '322c80dba52e67edb4b01a1907787b70a44c2778', 'ae26a0ff1342d540c55e85f45ff267f02251d20a', 'jpg', 'image/jpeg', 'zzz_img_102515664287.jpg', 'b61cdf5110e9e65f5003a3a10e1ccbd2e99e06a9', 777735, 1593614130, 1593614130),
(44, 0, 1593615833, 0, 0, 1, '2', 0, '/generic_lib/Resources/Public/Images/Portfolio/28dfgdhjmg5670.jpg', '4e33c9b6e8f8bcbea31af9c0baea5cae7f0ce8ea', 'df19824d28c380141c8cb806d02fe2d34276dc6c', 'jpg', 'image/jpeg', '28dfgdhjmg5670.jpg', 'ed3f3c8cea659d88f9cfada480d863f28df1a1f9', 187566, 1593614130, 1593614130),
(45, 0, 1593615833, 0, 0, 1, '2', 0, '/generic_lib/Resources/Public/Images/Portfolio/41VuA43DZPL.jpg', 'c5fee5232db5c8d040adf9af76d0577fd6c3e37c', 'df19824d28c380141c8cb806d02fe2d34276dc6c', 'jpg', 'image/jpeg', '41VuA43DZPL.jpg', '0d4a955efab50991a3cd7e9fd77d15d492655b5d', 24641, 1593614130, 1593614130),
(46, 0, 1593615833, 0, 0, 1, '2', 0, '/generic_lib/Resources/Public/Images/Portfolio/2314546jd.jpg', '6f4b2e7faa016a6bd8aed5d566dd288a85bd9ccc', 'df19824d28c380141c8cb806d02fe2d34276dc6c', 'jpg', 'image/jpeg', '2314546jd.jpg', '109dde2c64b9591996d7ee5700c090b71b3ec55a', 950045, 1593614130, 1593614130),
(47, 0, 1593615833, 0, 0, 1, '2', 0, '/generic_lib/Resources/Public/Images/Portfolio/a35462760572_l.jpg', '9735a537ee13b5b5c389d2acd6fe5a26e121c501', 'df19824d28c380141c8cb806d02fe2d34276dc6c', 'jpg', 'image/jpeg', 'a35462760572_l.jpg', 'c0946781409bee1f69e76256e36030237f017b02', 1020263, 1593614130, 1593614130),
(48, 0, 1593615833, 0, 0, 1, '2', 0, '/generic_lib/Resources/Public/Images/Portfolio/a823745685934z7.jpg', 'e277c8c2cdeb9fa9439564ec312085d91ade22b7', 'df19824d28c380141c8cb806d02fe2d34276dc6c', 'jpg', 'image/jpeg', 'a823745685934z7.jpg', 'ff172121e42a97d044f542d193adeba62a4e796e', 106621, 1593614130, 1593614130),
(49, 0, 1593615833, 0, 0, 1, '2', 0, '/generic_lib/Resources/Public/Images/Portfolio/b455b5cd8a875ce1e3408c3f0.jpg', 'ed420b06fc55fd721efe6d596eeb37d182b448d8', 'df19824d28c380141c8cb806d02fe2d34276dc6c', 'jpg', 'image/jpeg', 'b455b5cd8a875ce1e3408c3f0.jpg', '0446e6bff7244362cc9e9a6e5786107f42cbc799', 324537, 1593614130, 1593614130),
(50, 0, 1593615834, 0, 0, 1, '2', 0, '/generic_lib/Resources/Public/Images/Portfolio/d44657879809p.jpg', '70e3a7eb8005b5a5b4e3a652d3cc80a8cc4cc812', 'df19824d28c380141c8cb806d02fe2d34276dc6c', 'jpg', 'image/jpeg', 'd44657879809p.jpg', 'd5438dd0dbf9faf445b6add264c3bd7a808f75dc', 315739, 1593614130, 1593614130),
(51, 0, 1593615834, 0, 0, 1, '2', 0, '/generic_lib/Resources/Public/Images/Portfolio/dc6a01817d4031337661b9c50b1.jpg', 'e79137d1c7b4c5fddce2e441bfc6fc87af024edd', 'df19824d28c380141c8cb806d02fe2d34276dc6c', 'jpg', 'image/jpeg', 'dc6a01817d4031337661b9c50b1.jpg', 'f796ab9d90163b3c99c7ecb0ee7cba267f32da59', 856415, 1593614130, 1593614130),
(52, 0, 1593615834, 0, 0, 1, '2', 0, '/generic_lib/Resources/Public/Images/Portfolio/efrghth037.jpg', 'c14024329abce2381e0305379e181acd83d0caac', 'df19824d28c380141c8cb806d02fe2d34276dc6c', 'jpg', 'image/jpeg', 'efrghth037.jpg', 'ea7aaa8c118acc405916e9420bf38217fb899c5c', 2020865, 1593614130, 1593614130),
(53, 0, 1593615834, 0, 0, 1, '2', 0, '/generic_lib/Resources/Public/Images/Portfolio/h263475896a.jpg', 'ad8a7153b14444d945b3448248f310e8bddf6679', 'df19824d28c380141c8cb806d02fe2d34276dc6c', 'jpg', 'image/jpeg', 'h263475896a.jpg', '16ffd4b8a5e24196cd12028d56c943e1cca84585', 454853, 1593614130, 1593614130),
(54, 0, 1593615834, 0, 0, 1, '2', 0, '/generic_lib/Resources/Public/Images/Portfolio/h123457538298474z7.jpg', '89bddee2654b46f9636acea8cc352cc4b3c8dbe8', 'df19824d28c380141c8cb806d02fe2d34276dc6c', 'jpg', 'image/jpeg', 'h123457538298474z7.jpg', 'e5d8ec334d66951c739e97c8671f0ec3f418b7f5', 396319, 1593614130, 1593614130),
(55, 0, 1593615834, 0, 0, 1, '2', 0, '/generic_lib/Resources/Public/Images/Portfolio/h92345894834929346535u9.jpg', 'b11b9c16badb7831ad2adbc917c9eec90d20fc3b', 'df19824d28c380141c8cb806d02fe2d34276dc6c', 'jpg', 'image/jpeg', 'h92345894834929346535u9.jpg', 'd3ceefa197229fce5cca38590627e4888e800dd0', 793090, 1593614130, 1593614130),
(56, 0, 1593615834, 0, 0, 1, '2', 0, '/generic_lib/Resources/Public/Images/Portfolio/j362737348439z3.jpg', '44429b6becff38772e5e8424d9c8609de2cf0f0b', 'df19824d28c380141c8cb806d02fe2d34276dc6c', 'jpg', 'image/jpeg', 'j362737348439z3.jpg', '94052954ade53050e8abe51b97d3933d1c762da2', 366407, 1593614130, 1593614130),
(57, 0, 1593615834, 0, 0, 1, '2', 0, '/generic_lib/Resources/Public/Images/Portfolio/k2384475382984z3.jpg', 'd93ef4378b52b7567cc1a4346a9a300e2ba8ef40', 'df19824d28c380141c8cb806d02fe2d34276dc6c', 'jpg', 'image/jpeg', 'k2384475382984z3.jpg', '64571da7e454e19b3c6797324f9e8d061708b45e', 497213, 1593614130, 1593614130),
(58, 0, 1593615834, 0, 0, 1, '2', 0, '/generic_lib/Resources/Public/Images/Portfolio/k9982374637128z5.jpg', 'd79d6f36286b5907198125cb462559f3858b6624', 'df19824d28c380141c8cb806d02fe2d34276dc6c', 'jpg', 'image/jpeg', 'k9982374637128z5.jpg', '7fd9b88de14a7197b055f727edb39c153113e5b7', 751792, 1593614130, 1593614130),
(59, 0, 1593615834, 0, 0, 1, '2', 0, '/generic_lib/Resources/Public/Images/Portfolio/k92435846753482p9.jpg', '18ded9b23e8dea92fa0ab3969e900ad115813d1a', 'df19824d28c380141c8cb806d02fe2d34276dc6c', 'jpg', 'image/jpeg', 'k92435846753482p9.jpg', '81d2fb8c4fd304d859947ccbe630af85b8eddaaa', 155575, 1593614130, 1593614130),
(60, 0, 1593615834, 0, 0, 1, '2', 0, '/generic_lib/Resources/Public/Images/Portfolio/k12934482919238746z8.jpg', 'cc7648d1cf2f761201d80011b4e5ee05ac8b1004', 'df19824d28c380141c8cb806d02fe2d34276dc6c', 'jpg', 'image/jpeg', 'k12934482919238746z8.jpg', '52aa3a23270a873c7f4324e4139c81f2b6a005b6', 543971, 1593614130, 1593614130),
(61, 0, 1593615834, 0, 0, 1, '2', 0, '/generic_lib/Resources/Public/Images/Portfolio/m34z4765432.jpg', '602dc671508c8be7b3c2bab9da31dfd61fce4cfd', 'df19824d28c380141c8cb806d02fe2d34276dc6c', 'jpg', 'image/jpeg', 'm34z4765432.jpg', 'f76b150b21b156a6b8a76f2550e36d8f294ce43f', 238468, 1593614130, 1593614130),
(62, 0, 1593615834, 0, 0, 1, '2', 0, '/generic_lib/Resources/Public/Images/Portfolio/o93930348pp06.jpg', '013ef2114e08a2cda7c979b31015564dd2292864', 'df19824d28c380141c8cb806d02fe2d34276dc6c', 'jpg', 'image/jpeg', 'o93930348pp06.jpg', 'fdd18a905a26c1d795e749e9fc41b317be55c93c', 276963, 1593614130, 1593614130),
(63, 0, 1593615834, 0, 0, 1, '2', 0, '/generic_lib/Resources/Public/Images/Portfolio/p0697857436215d.jpg', '233844ab9e0bc3777b3b5ce5fffb3575688ce73f', 'df19824d28c380141c8cb806d02fe2d34276dc6c', 'jpg', 'image/jpeg', 'p0697857436215d.jpg', 'eff2052b177d23f44849bc5f44ecf0c1e1294775', 394182, 1593614130, 1593614130),
(64, 0, 1593615834, 0, 0, 1, '2', 0, '/generic_lib/Resources/Public/Images/Portfolio/p12345j.jpg', '9dcfdb8de77fe621e4caa4f06f106d37435ae99d', 'df19824d28c380141c8cb806d02fe2d34276dc6c', 'jpg', 'image/jpeg', 'p12345j.jpg', '3b2be95e5ae22777a159999d035f80e36dc1f4a5', 209884, 1593614130, 1593614130),
(65, 0, 1593615834, 0, 0, 1, '2', 0, '/generic_lib/Resources/Public/Images/Portfolio/p123456543j.jpg', '548e7eec4170cdd68567dbc47046b33dfe3c1eba', 'df19824d28c380141c8cb806d02fe2d34276dc6c', 'jpg', 'image/jpeg', 'p123456543j.jpg', '5d5a4b42061bcbf5000dc59ee8b5741f0a5b314e', 325324, 1593614130, 1593614130),
(66, 0, 1593615834, 0, 0, 1, '2', 0, '/generic_lib/Resources/Public/Images/Portfolio/p234637281n.jpg', '5c6800a0aeb9a8eb463dfe0e76576de003f55271', 'df19824d28c380141c8cb806d02fe2d34276dc6c', 'jpg', 'image/jpeg', 'p234637281n.jpg', '6324f83a5975f2932f455483ac8e568a689f2c87', 395625, 1593614130, 1593614130),
(67, 0, 1593615834, 0, 0, 1, '2', 0, '/generic_lib/Resources/Public/Images/Portfolio/q923494z0325k9.jpg', '2ef35a36636349b9a8a132ca37e09881000dca10', 'df19824d28c380141c8cb806d02fe2d34276dc6c', 'jpg', 'image/jpeg', 'q923494z0325k9.jpg', '5a3475b95b35bc8c68893ce60e56526d56c11500', 523917, 1593614130, 1593614130),
(68, 0, 1593615834, 0, 0, 1, '2', 0, '/generic_lib/Resources/Public/Images/Portfolio/q3249560965z8.jpg', '83d187eaef68bd183b11c023eb5b2a9d98c35727', 'df19824d28c380141c8cb806d02fe2d34276dc6c', 'jpg', 'image/jpeg', 'q3249560965z8.jpg', 'b1a8b2d04429804f5939b97c8cec2869be6a749a', 168871, 1593614130, 1593614130),
(69, 0, 1593615834, 0, 0, 1, '2', 0, '/generic_lib/Resources/Public/Images/Portfolio/q3456440395h7.jpg', 'f833a7602bb2bb620f7c1225ffd440fc7c5e2ac8', 'df19824d28c380141c8cb806d02fe2d34276dc6c', 'jpg', 'image/jpeg', 'q3456440395h7.jpg', '7547e2992a0a53f012f8f3202b1827fe1d87d8a9', 516290, 1593614130, 1593614130),
(70, 0, 1593615834, 0, 0, 1, '2', 0, '/generic_lib/Resources/Public/Images/Portfolio/r9934547583854365z8.jpg', 'f20f8fafdc61395965440724b7da30a10e41f300', 'df19824d28c380141c8cb806d02fe2d34276dc6c', 'jpg', 'image/jpeg', 'r9934547583854365z8.jpg', '63571e2d12df3ff20834c1596561fcbcaa777781', 663460, 1593614130, 1593614130),
(71, 0, 1593615834, 0, 0, 1, '2', 0, '/generic_lib/Resources/Public/Images/Portfolio/s328457357543j8.jpg', '631810ae4246e3c17ff1ffe8aae3bb5c5a0867ae', 'df19824d28c380141c8cb806d02fe2d34276dc6c', 'jpg', 'image/jpeg', 's328457357543j8.jpg', '4f301aa1396fa714daf0d98d8c53ff96371d06ef', 328421, 1593614130, 1593614130),
(72, 0, 1593615834, 0, 0, 1, '2', 0, '/generic_lib/Resources/Public/Images/Portfolio/z666475843826.png', '6a87a0dc7013d9c7030fdaa1d645a5898f5eaee3', 'df19824d28c380141c8cb806d02fe2d34276dc6c', 'png', 'image/png', 'z666475843826.png', '2134470574e32df65e3a48c57f325e9caa69f197', 1512672, 1593614130, 1593614130);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `sys_filemounts`
--

DROP TABLE IF EXISTS `sys_filemounts`;
CREATE TABLE `sys_filemounts` (
  `uid` int(10) UNSIGNED NOT NULL,
  `pid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `tstamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8_unicode_ci,
  `path` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `base` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `hidden` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `deleted` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `sorting` int(11) NOT NULL DEFAULT '0',
  `read_only` smallint(5) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Daten für Tabelle `sys_filemounts`
--

INSERT INTO `sys_filemounts` (`uid`, `pid`, `tstamp`, `title`, `description`, `path`, `base`, `hidden`, `deleted`, `sorting`, `read_only`) VALUES
(1, 0, 1529494922, 'Downloads', 'Datei-Downloads (PDF, DOC, XLS, etc.)', '/generic_lib/Resources/Public/Downloads/', 1, 0, 0, 256, 0),
(2, 0, 1529494827, 'Portfolio', 'Arbeitsverzeichnis mit Bildern, Videos, etc. für das Portfolio', '/generic_lib/Resources/Public/Images/Portfolio/', 1, 0, 0, 128, 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `sys_file_metadata`
--

DROP TABLE IF EXISTS `sys_file_metadata`;
CREATE TABLE `sys_file_metadata` (
  `uid` int(10) UNSIGNED NOT NULL,
  `pid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `crdate` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cruser_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `l10n_parent` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `l10n_diffsource` mediumblob,
  `t3ver_oid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `t3ver_wsid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `t3ver_state` smallint(6) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `t3ver_move_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `t3_origuid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `file` int(11) NOT NULL DEFAULT '0',
  `title` tinytext COLLATE utf8_unicode_ci,
  `width` int(11) NOT NULL DEFAULT '0',
  `height` int(11) NOT NULL DEFAULT '0',
  `description` text COLLATE utf8_unicode_ci,
  `alternative` text COLLATE utf8_unicode_ci,
  `l10n_state` text COLLATE utf8_unicode_ci,
  `categories` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Daten für Tabelle `sys_file_metadata`
--

INSERT INTO `sys_file_metadata` (`uid`, `pid`, `tstamp`, `crdate`, `cruser_id`, `sys_language_uid`, `l10n_parent`, `l10n_diffsource`, `t3ver_oid`, `t3ver_wsid`, `t3ver_state`, `t3ver_stage`, `t3ver_count`, `t3ver_tstamp`, `t3ver_move_id`, `t3_origuid`, `file`, `title`, `width`, `height`, `description`, `alternative`, `l10n_state`, `categories`) VALUES
(1, 0, 1528987737, 1528987737, 1, 0, 0, 0x613a313a7b733a343a2266696c65223b4e3b7d, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 3000, 2220, NULL, NULL, NULL, 0),
(2, 0, 1528987737, 1528987737, 1, 0, 0, 0x613a313a7b733a343a2266696c65223b4e3b7d, 0, 0, 0, 0, 0, 0, 0, 0, 2, NULL, 1050, 751, NULL, NULL, NULL, 0),
(3, 0, 1528987737, 1528987737, 1, 0, 0, 0x613a313a7b733a343a2266696c65223b4e3b7d, 0, 0, 0, 0, 0, 0, 0, 0, 3, NULL, 1200, 925, NULL, NULL, NULL, 0),
(4, 0, 1528987737, 1528987737, 1, 0, 0, 0x613a313a7b733a343a2266696c65223b4e3b7d, 0, 0, 0, 0, 0, 0, 0, 0, 4, NULL, 1920, 2703, NULL, NULL, NULL, 0),
(5, 0, 1528987737, 1528987737, 1, 0, 0, 0x613a313a7b733a343a2266696c65223b4e3b7d, 0, 0, 0, 0, 0, 0, 0, 0, 5, 'Jürg Jenatsch: Eine Bündnergeschichte', 1270, 1152, 'Seit unser Landsmann Konrad Geßner die Wissenschaft der Botanik begründet hat, treiben wir sie eifrig an unserm Carolinum.', NULL, NULL, 0),
(6, 0, 1528987737, 1528987737, 1, 0, 0, 0x613a313a7b733a343a2266696c65223b4e3b7d, 0, 0, 0, 0, 0, 0, 0, 0, 6, NULL, 1920, 1464, NULL, NULL, NULL, 0),
(7, 0, 1528987737, 1528987737, 1, 0, 0, 0x613a313a7b733a343a2266696c65223b4e3b7d, 0, 0, 0, 0, 0, 0, 0, 0, 7, NULL, 1920, 1440, NULL, NULL, NULL, 0),
(8, 0, 1528987737, 1528987737, 1, 0, 0, 0x613a313a7b733a343a2266696c65223b4e3b7d, 0, 0, 0, 0, 0, 0, 0, 0, 8, NULL, 1920, 1459, NULL, NULL, NULL, 0),
(9, 0, 1528987737, 1528987737, 1, 0, 0, 0x613a313a7b733a343a2266696c65223b4e3b7d, 0, 0, 0, 0, 0, 0, 0, 0, 9, 'Vingt mille lieues sous les mers', 1920, 2786, 'L\'année 1866 fut marquée par un événement bizarre, un phénomène inexpliqué et inexplicable que personne n\'a sans doute oublié.', NULL, NULL, 0),
(10, 0, 1528987737, 1528987737, 1, 0, 0, 0x613a313a7b733a343a2266696c65223b4e3b7d, 0, 0, 0, 0, 0, 0, 0, 0, 10, NULL, 3000, 2254, NULL, NULL, NULL, 0),
(11, 0, 1528987737, 1528987737, 1, 0, 0, 0x613a313a7b733a343a2266696c65223b4e3b7d, 0, 0, 0, 0, 0, 0, 0, 0, 11, 'Tour du Monde sous marin (Premier partie)', 3000, 2000, 'Sans parler des rumeurs qui agitaient les populations des ports et surexcitaient l\'esprit public à l\'intérieur des continents les gens de mer furent particulièrement émus.', NULL, NULL, 0),
(12, 0, 1528987737, 1528987737, 1, 0, 0, 0x613a313a7b733a343a2266696c65223b4e3b7d, 0, 0, 0, 0, 0, 0, 0, 0, 12, NULL, 3364, 2420, NULL, NULL, NULL, 0),
(13, 0, 1528987737, 1528987737, 1, 0, 0, 0x613a313a7b733a343a2266696c65223b4e3b7d, 0, 0, 0, 0, 0, 0, 0, 0, 13, 'Robinson Crusoe by Daniel Defoe', 960, 960, 'But first I was to prepare more land, for I had now seed enough to sow above an acre of ground. ', NULL, NULL, 0),
(14, 0, 1528987737, 1528987737, 1, 0, 0, 0x613a313a7b733a343a2266696c65223b4e3b7d, 0, 0, 0, 0, 0, 0, 0, 0, 15, NULL, 1280, 803, NULL, NULL, NULL, 0),
(15, 0, 1528987737, 1528987737, 1, 0, 0, 0x613a313a7b733a343a2266696c65223b4e3b7d, 0, 0, 0, 0, 0, 0, 0, 0, 16, 'Conrad Ferdinand Meyer', 2500, 1914, 'Jürg Jenatsch: Eine Bündnergeschichte', NULL, NULL, 0),
(16, 0, 1528987737, 1528987737, 1, 0, 0, 0x613a313a7b733a343a2266696c65223b4e3b7d, 0, 0, 0, 0, 0, 0, 0, 0, 17, 'Un écueil fuyant', 1672, 1152, 'Les négociants, armateurs, capitaines de navires, skippers et masters de l\'Europe et de l\'Amérique, officiers des marines militaires de tous pays, et, après eux, les gouvernements des divers États des deux continents, se préoccupèrent de ce fait au plus haut point.', NULL, NULL, 0),
(17, 0, 1528987737, 1528987737, 1, 0, 0, 0x613a313a7b733a343a2266696c65223b4e3b7d, 0, 0, 0, 0, 0, 0, 0, 0, 18, NULL, 1024, 885, NULL, NULL, NULL, 0),
(18, 0, 1528987737, 1528987737, 1, 0, 0, 0x613a313a7b733a343a2266696c65223b4e3b7d, 0, 0, 0, 0, 0, 0, 0, 0, 19, 'Giorgio, guardati', 2000, 1494, 'Waser verbeugte sich und schaute eine Weile nachdenklich dem über die Hochebene davontrabenden Reisezuge nach. ', NULL, NULL, 0),
(19, 0, 1528987737, 1528987737, 1, 0, 0, 0x613a313a7b733a343a2266696c65223b4e3b7d, 0, 0, 0, 0, 0, 0, 0, 0, 20, NULL, 1700, 900, NULL, NULL, NULL, 0),
(20, 0, 1528987737, 1528987737, 1, 0, 0, 0x613a313a7b733a343a2266696c65223b4e3b7d, 0, 0, 0, 0, 0, 0, 0, 0, 21, 'Erstes Buch', 1162, 1152, 'Die Reise des Herrn Waser', NULL, NULL, 0),
(21, 0, 1528987737, 1528987737, 1, 0, 0, 0x613a313a7b733a343a2266696c65223b4e3b7d, 0, 0, 0, 0, 0, 0, 0, 0, 22, 'Die Sonne rückte vorwärts und die Wolken zogen', 3000, 2000, 'An dieser grünen Stelle erschien jetzt und verschwand wieder der braune Kopf einer grasenden Stute und nach einer Weile weideten zwei Pferde behaglich auf dem Rasenflecke und ein drittes schlürfte die kalte Flut.', NULL, NULL, 0),
(22, 0, 1528987737, 1528987737, 1, 0, 0, 0x613a313a7b733a343a2266696c65223b4e3b7d, 0, 0, 0, 0, 0, 0, 0, 0, 23, 'But for an oven I was indeed in great pain', 3000, 2254, 'At length I found out an experiment for that also, which was this: I made some earthen-vessels very broad but not deep, that is to say, about two feet diameter, and not above nine inches deep.', NULL, NULL, 0),
(23, 0, 1528987737, 1528987737, 1, 0, 0, 0x613a313a7b733a343a2266696c65223b4e3b7d, 0, 0, 0, 0, 0, 0, 0, 0, 24, 'Ein preußischer Wachtmeister', 1728, 1152, 'In St. Blasien im Schwarzwald fügte es sich, daß sie dem Landvogt von Greifensee, der eine Wirtschafterin suchte, empfohlen wurde, und so diente sie ihm schon seit zwei Jahren.', NULL, NULL, 0),
(24, 0, 1528987737, 1528987737, 1, 0, 0, 0x613a313a7b733a343a2266696c65223b4e3b7d, 0, 0, 0, 0, 0, 0, 0, 0, 25, 'However', 3000, 2254, 'Before I did this, I had a week\'s work at least to make me a spade, which, when it was done, was but a sorry one indeed, and very heavy, and required double labour to work with it.', NULL, NULL, 0),
(25, 0, 1528987737, 1528987737, 1, 0, 0, 0x613a313a7b733a343a2266696c65223b4e3b7d, 0, 0, 0, 0, 0, 0, 0, 0, 26, 'Barley-loaves', 736, 502, 'These I burned in the fire, as I had done the other, and laid them by; and when I wanted to bake, I made a great fire upon my hearth, which I had paved with some square tiles of my own baking and burning also; but I should not call them square.', NULL, NULL, 0),
(26, 0, 1528987737, 1528987737, 1, 0, 0, 0x613a313a7b733a343a2266696c65223b4e3b7d, 0, 0, 0, 0, 0, 0, 0, 0, 27, 'On Kawara: Date Paintings', 3000, 2000, NULL, NULL, NULL, 0),
(27, 0, 1528987737, 1528987737, 1, 0, 0, 0x613a313a7b733a343a2266696c65223b4e3b7d, 0, 0, 0, 0, 0, 0, 0, 0, 28, 'Erstes Kapitel', 1280, 903, 'Die Mittagssonne stand über der kahlen, von Felshäuptern umragten Höhe des Julierpasses im Lande Bünden.', NULL, NULL, 0),
(28, 0, 1528987737, 1528987737, 1, 0, 0, 0x613a313a7b733a343a2266696c65223b4e3b7d, 0, 0, 0, 0, 0, 0, 0, 0, 29, NULL, 2000, 2667, NULL, NULL, NULL, 0),
(29, 0, 1528987737, 1528987737, 1, 0, 0, 0x613a313a7b733a343a2266696c65223b4e3b7d, 0, 0, 0, 0, 0, 0, 0, 0, 30, 'Formverletzung', 1726, 1152, 'Die Steinwände brannten und schimmerten unter den stechenden senkrechten Strahlen.', NULL, NULL, 0),
(30, 0, 1528987773, 1528987737, 1, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 31, NULL, 0, 0, NULL, NULL, NULL, 0),
(31, 0, 1528987773, 1528987737, 1, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 32, NULL, 0, 0, NULL, NULL, NULL, 0),
(32, 0, 1528987773, 1528987737, 1, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 33, NULL, 0, 0, NULL, NULL, NULL, 0),
(33, 0, 1528987737, 1528987737, 1, 0, 0, 0x613a313a7b733a343a2266696c65223b4e3b7d, 0, 0, 0, 0, 0, 0, 0, 0, 34, 'Blown up upon the shore', 2064, 1410, 'She lay almost where she did at first, but not quite; and was turned, by the force of the waves and the winds, almost bottom upward, against a high ridge of beachy, rough sand, but no water about her.', NULL, NULL, 0),
(34, 0, 1528987737, 1528987737, 1, 0, 0, 0x613a313a7b733a343a2266696c65223b4e3b7d, 0, 0, 0, 0, 0, 0, 0, 0, 14, 'Civis turicensis 1', 0, 0, 'Zuweilen, wenn eine geballte Wetterwolke emporquoll und vorüberzog, schienen die Bergmauern näher heranzutreten und, die Landschaft verengend, schroff und unheimlich zusammenzurücken.', NULL, NULL, 0),
(35, 0, 1566817646, 1566817646, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 35, NULL, 0, 0, NULL, NULL, NULL, 0),
(36, 0, 1566818176, 1566818173, 1, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 36, NULL, 0, 0, NULL, NULL, NULL, 0),
(37, 0, 1566818177, 1566818173, 1, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 37, NULL, 960, 960, NULL, NULL, NULL, 0),
(38, 0, 1593615831, 1593615831, 1, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 38, NULL, 2000, 1494, NULL, NULL, NULL, 0),
(39, 0, 1593615831, 1593615831, 1, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 39, NULL, 32, 32, NULL, NULL, NULL, 0),
(40, 0, 1593615831, 1593615831, 1, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 40, NULL, 2790, 1860, NULL, NULL, NULL, 0),
(41, 0, 1593615831, 1593615831, 1, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 41, NULL, 278, 68, NULL, NULL, NULL, 0),
(42, 0, 1593615831, 1593615831, 1, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 42, NULL, 83, 20, NULL, NULL, NULL, 0),
(43, 0, 1593615831, 1593615831, 1, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 43, NULL, 1280, 851, NULL, NULL, NULL, 0),
(44, 0, 1593615833, 1593615833, 1, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 44, NULL, 1050, 751, NULL, NULL, NULL, 0),
(45, 0, 1593615833, 1593615833, 1, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 45, NULL, 1200, 925, NULL, NULL, NULL, 0),
(46, 0, 1593615833, 1593615833, 1, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 46, NULL, 3000, 2220, NULL, NULL, NULL, 0),
(47, 0, 1593615833, 1593615833, 1, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 47, NULL, 1920, 2703, NULL, NULL, NULL, 0),
(48, 0, 1593615833, 1593615833, 1, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 48, NULL, 1270, 1152, NULL, NULL, NULL, 0),
(49, 0, 1593615833, 1593615833, 1, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 49, NULL, 1920, 1464, NULL, NULL, NULL, 0),
(50, 0, 1593615833, 1593615833, 1, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 50, NULL, 1920, 1440, NULL, NULL, NULL, 0),
(51, 0, 1593615833, 1593615833, 1, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 51, NULL, 1920, 1459, NULL, NULL, NULL, 0),
(52, 0, 1593615833, 1593615833, 1, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 52, NULL, 1920, 2786, NULL, NULL, NULL, 0),
(53, 0, 1593615833, 1593615833, 1, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 53, NULL, 3000, 2000, NULL, NULL, NULL, 0),
(54, 0, 1593615833, 1593615833, 1, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 54, NULL, 3000, 2254, NULL, NULL, NULL, 0),
(55, 0, 1593615833, 1593615833, 1, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 55, NULL, 3364, 2420, NULL, NULL, NULL, 0),
(56, 0, 1593615833, 1593615833, 1, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 56, NULL, 1280, 803, NULL, NULL, NULL, 0),
(57, 0, 1593615833, 1593615833, 1, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 57, NULL, 1672, 1152, NULL, NULL, NULL, 0),
(58, 0, 1593615833, 1593615833, 1, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 58, NULL, 2000, 1494, NULL, NULL, NULL, 0),
(59, 0, 1593615833, 1593615833, 1, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 59, NULL, 1024, 885, NULL, NULL, NULL, 0),
(60, 0, 1593615833, 1593615833, 1, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 60, NULL, 2500, 1914, NULL, NULL, NULL, 0),
(61, 0, 1593615833, 1593615833, 1, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 61, NULL, 1700, 900, NULL, NULL, NULL, 0),
(62, 0, 1593615833, 1593615833, 1, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 62, NULL, 1162, 1152, NULL, NULL, NULL, 0),
(63, 0, 1593615833, 1593615833, 1, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 63, NULL, 3000, 2000, NULL, NULL, NULL, 0),
(64, 0, 1593615833, 1593615833, 1, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 64, NULL, 1728, 1152, NULL, NULL, NULL, 0),
(65, 0, 1593615833, 1593615833, 1, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 65, NULL, 3000, 2254, NULL, NULL, NULL, 0),
(66, 0, 1593615833, 1593615833, 1, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 66, NULL, 3000, 2254, NULL, NULL, NULL, 0),
(67, 0, 1593615833, 1593615833, 1, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 67, NULL, 1280, 903, NULL, NULL, NULL, 0),
(68, 0, 1593615833, 1593615833, 1, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 68, NULL, 736, 502, NULL, NULL, NULL, 0),
(69, 0, 1593615833, 1593615833, 1, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 69, NULL, 3000, 2000, NULL, NULL, NULL, 0),
(70, 0, 1593615833, 1593615833, 1, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 70, NULL, 2000, 2667, NULL, NULL, NULL, 0),
(71, 0, 1593615833, 1593615833, 1, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 71, NULL, 1726, 1152, NULL, NULL, NULL, 0),
(72, 0, 1593615833, 1593615833, 1, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 72, NULL, 2064, 1410, NULL, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `sys_file_reference`
--

DROP TABLE IF EXISTS `sys_file_reference`;
CREATE TABLE `sys_file_reference` (
  `uid` int(10) UNSIGNED NOT NULL,
  `pid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `crdate` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cruser_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `deleted` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `hidden` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `t3ver_oid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `t3ver_wsid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `t3ver_state` smallint(6) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `t3ver_move_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `l10n_parent` int(10) UNSIGNED NOT NULL DEFAULT '0',
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
  `showinpreview` smallint(6) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Daten für Tabelle `sys_file_reference`
--

INSERT INTO `sys_file_reference` (`uid`, `pid`, `tstamp`, `crdate`, `cruser_id`, `deleted`, `hidden`, `t3ver_oid`, `t3ver_wsid`, `t3ver_state`, `t3ver_stage`, `t3ver_count`, `t3ver_tstamp`, `t3ver_move_id`, `sys_language_uid`, `l10n_parent`, `l10n_diffsource`, `uid_local`, `uid_foreign`, `tablenames`, `fieldname`, `sorting_foreign`, `table_local`, `title`, `description`, `alternative`, `link`, `crop`, `autoplay`, `l10n_state`, `showinpreview`) VALUES
(1, 10, 1536135017, 1528987737, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0x613a383a7b733a353a227469746c65223b4e3b733a31313a22616c7465726e6174697665223b4e3b733a343a226c696e6b223b4e3b733a31313a226465736372697074696f6e223b4e3b733a343a2263726f70223b4e3b733a393a227569645f6c6f63616c223b4e3b733a363a2268696464656e223b4e3b733a31363a227379735f6c616e67756167655f756964223b4e3b7d, 17, 2, 'tt_content', 'assets', 5, 'sys_file', NULL, NULL, NULL, '', '{\"default\":{\"cropArea\":{\"x\":0.081000000000000016431300764452316798269748687744140625,\"y\":0.00035936250898406366972859249386829105787910521030426025390625,\"width\":0.9179999999999999271693695845897309482097625732421875,\"height\":0.9992812749820318973803523476817645132541656494140625},\"selectedRatio\":\"4:3\",\"focusArea\":null}}', 0, NULL, 0),
(2, 10, 1536135017, 1528987737, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0x613a383a7b733a353a227469746c65223b4e3b733a31313a22616c7465726e6174697665223b4e3b733a343a226c696e6b223b4e3b733a31313a226465736372697074696f6e223b4e3b733a343a2263726f70223b4e3b733a393a227569645f6c6f63616c223b4e3b733a363a2268696464656e223b4e3b733a31363a227379735f6c616e67756167655f756964223b4e3b7d, 12, 2, 'tt_content', 'assets', 2, 'sys_file', NULL, NULL, NULL, '', '{\"default\":{\"cropArea\":{\"x\":0.050999999999999996724842077355788205750286579132080078125,\"y\":0.00068231404958678395188120813230625572032295167446136474609375,\"width\":0.8979999999999999094058011905872263014316558837890625,\"height\":0.99863537190082640737642805106588639318943023681640625},\"selectedRatio\":\"5:4\",\"focusArea\":null}}', 0, NULL, 0),
(3, 10, 1536135017, 1528987737, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0x613a383a7b733a353a227469746c65223b4e3b733a31313a22616c7465726e6174697665223b4e3b733a343a226c696e6b223b4e3b733a31313a226465736372697074696f6e223b4e3b733a343a2263726f70223b4e3b733a393a227569645f6c6f63616c223b4e3b733a363a2268696464656e223b4e3b733a31363a227379735f6c616e67756167655f756964223b4e3b7d, 8, 2, 'tt_content', 'assets', 4, 'sys_file', NULL, NULL, NULL, '', '{\"default\":{\"cropArea\":{\"x\":0.01499999999999999771016501171061463537625968456268310546875,\"y\":0.0003263410410879974909124923154735142816207371652126312255859375,\"width\":0.947999999999999953814722175593487918376922607421875,\"height\":0.99803152844413978161952627488062717020511627197265625},\"selectedRatio\":\"5:4\",\"focusArea\":null}}', 0, NULL, 0),
(4, 10, 1536135017, 1528987737, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0x613a383a7b733a353a227469746c65223b4e3b733a31313a22616c7465726e6174697665223b4e3b733a343a226c696e6b223b4e3b733a31313a226465736372697074696f6e223b4e3b733a343a2263726f70223b4e3b733a393a227569645f6c6f63616c223b4e3b733a363a2268696464656e223b4e3b733a31363a227379735f6c616e67756167655f756964223b4e3b7d, 16, 2, 'tt_content', 'assets', 8, 'sys_file', NULL, NULL, NULL, '', '{\"default\":{\"cropArea\":{\"height\":0.97911227154047,\"width\":1,\"x\":0,\"y\":0.010443864229765013},\"selectedRatio\":\"4:3\",\"focusArea\":null}}', 0, NULL, 0),
(5, 10, 1536135017, 1528987737, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0x613a383a7b733a353a227469746c65223b4e3b733a31313a22616c7465726e6174697665223b4e3b733a343a226c696e6b223b4e3b733a31313a226465736372697074696f6e223b4e3b733a343a2263726f70223b4e3b733a393a227569645f6c6f63616c223b4e3b733a363a2268696464656e223b4e3b733a31363a227379735f6c616e67756167655f756964223b4e3b7d, 25, 2, 'tt_content', 'assets', 9, 'sys_file', NULL, NULL, NULL, '', '{\"default\":{\"cropArea\":{\"height\":0.9986684420772304,\"width\":0.999,\"x\":0,\"y\":0},\"selectedRatio\":\"4:3\",\"focusArea\":null}}', 0, NULL, 0),
(6, 10, 1536135017, 1528987737, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0x613a383a7b733a353a227469746c65223b4e3b733a31313a22616c7465726e6174697665223b4e3b733a343a226c696e6b223b4e3b733a31313a226465736372697074696f6e223b4e3b733a343a2263726f70223b4e3b733a393a227569645f6c6f63616c223b4e3b733a363a2268696464656e223b4e3b733a31363a227379735f6c616e67756167655f756964223b4e3b7d, 10, 2, 'tt_content', 'assets', 10, 'sys_file', NULL, NULL, NULL, '', '{\"default\":{\"cropArea\":{\"height\":0.9986684420772304,\"width\":0.999,\"x\":0,\"y\":0},\"selectedRatio\":\"4:3\",\"focusArea\":null}}', 0, NULL, 0),
(7, 10, 1536135017, 1528987737, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0x613a383a7b733a353a227469746c65223b4e3b733a31313a22616c7465726e6174697665223b4e3b733a343a226c696e6b223b4e3b733a31313a226465736372697074696f6e223b4e3b733a343a2263726f70223b4e3b733a393a227569645f6c6f63616c223b4e3b733a363a2268696464656e223b4e3b733a31363a227379735f6c616e67756167655f756964223b4e3b7d, 18, 2, 'tt_content', 'assets', 1, 'sys_file', NULL, NULL, NULL, '', '{\"default\":{\"cropArea\":{\"x\":-0.000570989884393079648317037566584986052475869655609130859375,\"y\":0.04161849710982658268054734662655391730368137359619140625,\"width\":0.9991419797687861592550007117097266018390655517578125,\"height\":0.924855491329479750817199601442553102970123291015625},\"selectedRatio\":\"5:4\",\"focusArea\":null}}', 0, NULL, 0),
(8, 10, 1536135017, 1528987737, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0x613a383a7b733a353a227469746c65223b4e3b733a31313a22616c7465726e6174697665223b4e3b733a343a226c696e6b223b4e3b733a31313a226465736372697074696f6e223b4e3b733a343a2263726f70223b4e3b733a393a227569645f6c6f63616c223b4e3b733a363a2268696464656e223b4e3b733a31363a227379735f6c616e67756167655f756964223b4e3b7d, 28, 2, 'tt_content', 'assets', 6, 'sys_file', NULL, NULL, NULL, '', '{\"default\":{\"cropArea\":{\"x\":0.0316860067503429154722738303462392650544643402099609375,\"y\":0,\"width\":0.9366279864993141135443011080496944487094879150390625,\"height\":0.99575070821529754194756378637976013123989105224609375},\"selectedRatio\":\"4:3\",\"focusArea\":null}}', 0, NULL, 0),
(9, 10, 1536135017, 1528987737, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0x613a383a7b733a353a227469746c65223b4e3b733a31313a22616c7465726e6174697665223b4e3b733a343a226c696e6b223b4e3b733a31313a226465736372697074696f6e223b4e3b733a343a2263726f70223b4e3b733a393a227569645f6c6f63616c223b4e3b733a363a2268696464656e223b4e3b733a31363a227379735f6c616e67756167655f756964223b4e3b7d, 19, 2, 'tt_content', 'assets', 3, 'sys_file', NULL, NULL, NULL, '', '{\"default\":{\"cropArea\":{\"x\":0.040000000000000000832667268468867405317723751068115234375,\"y\":0.0004016064257028264410966100772526488071889616549015045166015625,\"width\":0.9330000000000000515143483426072634756565093994140625,\"height\":0.99919678714859438972695215852581895887851715087890625},\"selectedRatio\":\"5:4\",\"focusArea\":null}}', 0, NULL, 0),
(10, 10, 1536135017, 1528987737, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0x613a383a7b733a353a227469746c65223b4e3b733a31313a22616c7465726e6174697665223b4e3b733a343a226c696e6b223b4e3b733a31313a226465736372697074696f6e223b4e3b733a343a2263726f70223b4e3b733a393a227569645f6c6f63616c223b4e3b733a363a2268696464656e223b4e3b733a31363a227379735f6c616e67756167655f756964223b4e3b7d, 6, 2, 'tt_content', 'assets', 7, 'sys_file', NULL, NULL, NULL, '', '{\"default\":{\"cropArea\":{\"x\":0,\"y\":0.009174311926605505,\"width\":1,\"height\":0.9829619921363041},\"selectedRatio\":\"4:3\",\"focusArea\":null}}', 0, NULL, 0),
(11, 9, 1528987737, 1528987737, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0x613a383a7b733a353a227469746c65223b4e3b733a31313a22616c7465726e6174697665223b4e3b733a343a226c696e6b223b4e3b733a31313a226465736372697074696f6e223b4e3b733a343a2263726f70223b4e3b733a393a227569645f6c6f63616c223b4e3b733a363a2268696464656e223b4e3b733a31363a227379735f6c616e67756167655f756964223b4e3b7d, 25, 3, 'tt_content', 'assets', 1, 'sys_file', NULL, NULL, NULL, '', '', 0, NULL, 0),
(12, 9, 1528987737, 1528987737, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0x613a313a7b733a363a2268696464656e223b4e3b7d, 21, 3, 'tt_content', 'assets', 2, 'sys_file', NULL, NULL, NULL, '', '', 0, NULL, 0),
(13, 8, 1528987737, 1528987737, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0x613a383a7b733a353a227469746c65223b4e3b733a31313a22616c7465726e6174697665223b4e3b733a343a226c696e6b223b4e3b733a31313a226465736372697074696f6e223b4e3b733a343a2263726f70223b4e3b733a393a227569645f6c6f63616c223b4e3b733a363a2268696464656e223b4e3b733a31363a227379735f6c616e67756167655f756964223b4e3b7d, 29, 8, 'tt_content', 'assets', 1, 'sys_file', 'Der junge Reisende', 'Die wenigen zwischen den Felszacken herniederhangenden Schneeflecke und Gletscherzungen leuchteten bald grell auf, bald wichen sie zurück in grünliches Dunkel.', NULL, '', '', 0, NULL, 0),
(14, 8, 1528987737, 1528987737, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0x613a383a7b733a353a227469746c65223b4e3b733a31313a22616c7465726e6174697665223b4e3b733a343a226c696e6b223b4e3b733a31313a226465736372697074696f6e223b4e3b733a343a2263726f70223b4e3b733a393a227569645f6c6f63616c223b4e3b733a363a2268696464656e223b4e3b733a31363a227379735f6c616e67756167655f756964223b4e3b7d, 29, 7, 'tt_content', 'assets', 1, 'sys_file', 'However', 'Before I did this, I had a week\'s work at least to make me a spade, which, when it was done, was but a sorry one indeed, and very heavy, and required double labour to work with it.', NULL, '', '', 0, NULL, 0),
(15, 8, 1528987737, 1528987737, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 29, 6, 'tt_content', 'assets', 1, 'sys_file', NULL, NULL, NULL, '', '', 0, NULL, 0),
(16, 8, 1528987737, 1528987737, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0x613a383a7b733a353a227469746c65223b4e3b733a31313a22616c7465726e6174697665223b4e3b733a343a226c696e6b223b4e3b733a31313a226465736372697074696f6e223b4e3b733a343a2263726f70223b4e3b733a393a227569645f6c6f63616c223b4e3b733a363a2268696464656e223b4e3b733a31363a227379735f6c616e67756167655f756964223b4e3b7d, 30, 5, 'tt_content', 'assets', 1, 'sys_file', 'On Kawara: Silence', '42°15\' de latitude nord, 60°35\' de longitude à l\'ouest', NULL, '', '', 0, NULL, 0),
(17, 8, 1528987737, 1528987737, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0x613a313a7b733a363a2268696464656e223b4e3b7d, 30, 4, 'tt_content', 'assets', 1, 'sys_file', NULL, NULL, NULL, '', '', 0, NULL, 0),
(18, 7, 1528987737, 1528987737, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0x613a313a7b733a363a2268696464656e223b4e3b7d, 17, 9, 'tt_content', 'assets', 5, 'sys_file', 'On Kawara: I\'m still alive', 'Telegramm, Deutsche Bundespost, 1971', NULL, '', '', 0, NULL, 0),
(19, 7, 1528987737, 1528987737, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0x613a313a7b733a363a2268696464656e223b4e3b7d, 18, 9, 'tt_content', 'assets', 3, 'sys_file', NULL, NULL, NULL, '', '', 0, NULL, 0),
(20, 7, 1528987737, 1528987737, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0x613a313a7b733a363a2268696464656e223b4e3b7d, 19, 9, 'tt_content', 'assets', 7, 'sys_file', NULL, NULL, NULL, '', '', 0, NULL, 0),
(21, 7, 1528987737, 1528987737, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0x613a313a7b733a363a2268696464656e223b4e3b7d, 22, 9, 'tt_content', 'assets', 9, 'sys_file', NULL, NULL, NULL, '', '', 0, NULL, 0),
(22, 7, 1528987737, 1528987737, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0x613a313a7b733a363a2268696464656e223b4e3b7d, 28, 9, 'tt_content', 'assets', 10, 'sys_file', NULL, NULL, NULL, '', '', 0, NULL, 0),
(23, 7, 1528987737, 1528987737, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0x613a313a7b733a363a2268696464656e223b4e3b7d, 26, 9, 'tt_content', 'assets', 11, 'sys_file', NULL, NULL, NULL, '', '', 0, NULL, 0),
(24, 7, 1528987737, 1528987737, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0x613a313a7b733a363a2268696464656e223b4e3b7d, 27, 9, 'tt_content', 'assets', 12, 'sys_file', NULL, NULL, NULL, '', '', 0, NULL, 0),
(25, 7, 1528987737, 1528987737, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0x613a313a7b733a363a2268696464656e223b4e3b7d, 23, 9, 'tt_content', 'assets', 13, 'sys_file', NULL, NULL, NULL, '', '', 0, NULL, 0),
(26, 7, 1528987737, 1528987737, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0x613a313a7b733a363a2268696464656e223b4e3b7d, 11, 9, 'tt_content', 'assets', 6, 'sys_file', NULL, NULL, NULL, '', '', 0, NULL, 0),
(27, 7, 1528987737, 1528987737, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0x613a313a7b733a363a2268696464656e223b4e3b7d, 12, 9, 'tt_content', 'assets', 14, 'sys_file', NULL, NULL, NULL, '', '', 0, NULL, 0),
(28, 7, 1528987737, 1528987737, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0x613a313a7b733a363a2268696464656e223b4e3b7d, 8, 9, 'tt_content', 'assets', 15, 'sys_file', NULL, NULL, NULL, '', '', 0, NULL, 0),
(29, 7, 1528987737, 1528987737, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0x613a313a7b733a363a2268696464656e223b4e3b7d, 25, 9, 'tt_content', 'assets', 1, 'sys_file', NULL, NULL, NULL, '', '', 0, NULL, 0),
(30, 7, 1528987737, 1528987737, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0x613a313a7b733a363a2268696464656e223b4e3b7d, 28, 9, 'tt_content', 'assets', 2, 'sys_file', NULL, NULL, NULL, '', '', 0, NULL, 0),
(31, 7, 1528987737, 1528987737, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0x613a313a7b733a363a2268696464656e223b4e3b7d, 10, 9, 'tt_content', 'assets', 8, 'sys_file', NULL, NULL, NULL, '', '', 0, NULL, 0),
(32, 7, 1528987737, 1528987737, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0x613a313a7b733a363a2268696464656e223b4e3b7d, 29, 9, 'tt_content', 'assets', 4, 'sys_file', NULL, NULL, NULL, '', '', 0, NULL, 0),
(33, 5, 1528987737, 1528987737, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0x613a313a7b733a363a2268696464656e223b4e3b7d, 26, 15, 'tt_content', 'assets', 1, 'sys_file', 'Der junge Reisende', 'Die wenigen zwischen den Felszacken herniederhangenden Schneeflecke und Gletscherzungen leuchteten bald grell auf, bald wichen sie zurück in grünliches Dunkel.', NULL, '', '', 0, NULL, 0),
(34, 5, 1528987737, 1528987737, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0x613a383a7b733a353a227469746c65223b4e3b733a31313a22616c7465726e6174697665223b4e3b733a343a226c696e6b223b4e3b733a31313a226465736372697074696f6e223b4e3b733a343a2263726f70223b4e3b733a393a227569645f6c6f63616c223b4e3b733a363a2268696464656e223b4e3b733a31363a227379735f6c616e67756167655f756964223b4e3b7d, 10, 14, 'tt_content', 'assets', 1, 'sys_file', 'However', 'Before I did this, I had a week\'s work at least to make me a spade, which, when it was done, was but a sorry one indeed, and very heavy, and required double labour to work with it.', NULL, '', '', 0, NULL, 0),
(35, 5, 1528987737, 1528987737, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0x613a313a7b733a363a2268696464656e223b4e3b7d, 25, 12, 'tt_content', 'assets', 1, 'sys_file', NULL, NULL, NULL, '', '', 0, NULL, 0),
(36, 5, 1528987737, 1528987737, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 28, 13, 'tt_content', 'assets', 1, 'sys_file', NULL, NULL, NULL, '', '', 0, NULL, 0),
(37, 4, 1528987737, 1528987737, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 34, 16, 'tt_content', 'assets', 1, 'sys_file', NULL, NULL, NULL, '', '', 0, NULL, 0),
(38, 2, 1528987737, 1528987737, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 4, 10, 'tx_news_domain_model_news', 'fal_media', 1, 'sys_file', NULL, NULL, NULL, '', '', 0, NULL, 1),
(39, 2, 1528987737, 1528987737, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0x613a313a7b733a363a2268696464656e223b4e3b7d, 19, 8, 'tx_news_domain_model_news', 'fal_media', 1, 'sys_file', NULL, NULL, NULL, '', '', 0, NULL, 1),
(40, 2, 1528987737, 1528987737, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0x613a313a7b733a363a2268696464656e223b4e3b7d, 26, 7, 'tx_news_domain_model_news', 'fal_media', 1, 'sys_file', NULL, NULL, NULL, '', '', 0, NULL, 1),
(41, 2, 1528987737, 1528987737, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 18, 5, 'tx_news_domain_model_news', 'fal_media', 1, 'sys_file', NULL, NULL, NULL, '', '', 0, NULL, 1),
(42, 2, 1528987737, 1528987737, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0x613a313a7b733a363a2268696464656e223b4e3b7d, 2, 6, 'tx_news_domain_model_news', 'fal_media', 1, 'sys_file', NULL, NULL, NULL, '', '', 0, NULL, 1),
(43, 2, 1528987737, 1528987737, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 9, 4, 'tx_news_domain_model_news', 'fal_media', 1, 'sys_file', NULL, NULL, NULL, '', '', 0, NULL, 1),
(44, 2, 1528987737, 1528987737, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0x613a313a7b733a363a2268696464656e223b4e3b7d, 12, 3, 'tx_news_domain_model_news', 'fal_media', 1, 'sys_file', NULL, NULL, NULL, '', '', 0, NULL, 1),
(45, 2, 1528987737, 1528987737, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0x613a313a7b733a363a2268696464656e223b4e3b7d, 28, 2, 'tx_news_domain_model_news', 'fal_media', 1, 'sys_file', NULL, NULL, NULL, '', '', 0, NULL, 1),
(46, 2, 1528987737, 1528987737, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0x613a313a7b733a363a2268696464656e223b4e3b7d, 15, 1, 'tx_news_domain_model_news', 'fal_media', 1, 'sys_file', NULL, NULL, NULL, '', '', 0, NULL, 1),
(47, 2, 1528987737, 1528987737, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0x613a313a7b733a363a2268696464656e223b4e3b7d, 29, 9, 'tx_news_domain_model_news', 'fal_media', 1, 'sys_file', NULL, NULL, NULL, '', '', 0, NULL, 1),
(48, 1, 1528987737, 1528987737, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0x613a313a7b733a363a2268696464656e223b4e3b7d, 30, 1, 'pages', 'media', 1, 'sys_file', NULL, NULL, NULL, '', '', 0, NULL, 0),
(49, 1, 1528987737, 1528987737, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0x613a313a7b733a363a2268696464656e223b4e3b7d, 21, 1, 'pages', 'media', 2, 'sys_file', NULL, NULL, NULL, '', '', 0, NULL, 0),
(50, 1, 1528987737, 1528987737, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0x613a313a7b733a363a2268696464656e223b4e3b7d, 10, 1, 'pages', 'media', 3, 'sys_file', NULL, NULL, NULL, '', '', 0, NULL, 0),
(51, 1, 1528987737, 1528987737, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0x613a313a7b733a363a2268696464656e223b4e3b7d, 22, 1, 'pages', 'media', 5, 'sys_file', NULL, NULL, NULL, '', '', 0, NULL, 0),
(52, 1, 1528987737, 1528987737, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0x613a313a7b733a363a2268696464656e223b4e3b7d, 25, 1, 'pages', 'media', 4, 'sys_file', NULL, NULL, NULL, '', '', 0, NULL, 0),
(53, 1, 1528987737, 1528987737, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0x613a313a7b733a363a2268696464656e223b4e3b7d, 23, 1, 'pages', 'media', 6, 'sys_file', NULL, NULL, NULL, '', '', 0, NULL, 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `sys_file_storage`
--

DROP TABLE IF EXISTS `sys_file_storage`;
CREATE TABLE `sys_file_storage` (
  `uid` int(10) UNSIGNED NOT NULL,
  `pid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `tstamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `crdate` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cruser_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `deleted` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8_unicode_ci,
  `driver` tinytext COLLATE utf8_unicode_ci,
  `configuration` text COLLATE utf8_unicode_ci,
  `is_default` smallint(6) NOT NULL DEFAULT '0',
  `is_browsable` smallint(6) NOT NULL DEFAULT '0',
  `is_public` smallint(6) NOT NULL DEFAULT '0',
  `is_writable` smallint(6) NOT NULL DEFAULT '0',
  `is_online` smallint(6) NOT NULL DEFAULT '1',
  `auto_extract_metadata` smallint(6) NOT NULL DEFAULT '1',
  `processingfolder` tinytext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Daten für Tabelle `sys_file_storage`
--

INSERT INTO `sys_file_storage` (`uid`, `pid`, `tstamp`, `crdate`, `cruser_id`, `deleted`, `name`, `description`, `driver`, `configuration`, `is_default`, `is_browsable`, `is_public`, `is_writable`, `is_online`, `auto_extract_metadata`, `processingfolder`) VALUES
(1, 0, 1528987737, 1528987737, 0, 0, 'fileadmin/ (auto-created)', 'This is the local fileadmin/ directory. This storage mount has been created automatically by TYPO3.', 'Local', '<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"basePath\">\n                    <value index=\"vDEF\">fileadmin/</value>\n                </field>\n                <field index=\"pathType\">\n                    <value index=\"vDEF\">relative</value>\n                </field>\n                <field index=\"caseSensitive\">\n                    <value index=\"vDEF\">1</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>', 1, 1, 1, 1, 1, 1, NULL);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `sys_template`
--

DROP TABLE IF EXISTS `sys_template`;
CREATE TABLE `sys_template` (
  `uid` int(10) UNSIGNED NOT NULL,
  `pid` int(11) NOT NULL DEFAULT '0',
  `t3ver_oid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `t3ver_wsid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `t3ver_state` smallint(6) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `t3ver_move_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `t3_origuid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `tstamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `sorting` int(11) NOT NULL DEFAULT '0',
  `crdate` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cruser_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `sitetitle` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `hidden` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `starttime` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `endtime` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `root` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `clear` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `include_static_file` text COLLATE utf8_unicode_ci,
  `constants` text COLLATE utf8_unicode_ci,
  `config` text COLLATE utf8_unicode_ci,
  `description` text COLLATE utf8_unicode_ci,
  `basedOn` tinytext COLLATE utf8_unicode_ci,
  `deleted` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `includeStaticAfterBasedOn` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `static_file_mode` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `tx_impexp_origuid` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Daten für Tabelle `sys_template`
--

INSERT INTO `sys_template` (`uid`, `pid`, `t3ver_oid`, `t3ver_wsid`, `t3ver_state`, `t3ver_stage`, `t3ver_count`, `t3ver_tstamp`, `t3ver_move_id`, `t3_origuid`, `tstamp`, `sorting`, `crdate`, `cruser_id`, `title`, `sitetitle`, `hidden`, `starttime`, `endtime`, `root`, `clear`, `include_static_file`, `constants`, `config`, `description`, `basedOn`, `deleted`, `includeStaticAfterBasedOn`, `static_file_mode`, `tx_impexp_origuid`) VALUES
(1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1528979718, 256, 1526489637, 1, 'whiteroom generic', 'whiteRoom', 0, 0, 0, 1, 3, 'EXT:news/Configuration/TypoScript,EXT:fluid_styled_content/Configuration/TypoScript/,EXT:rx_shariff/Configuration/TypoScript/WithoutJQueryAndFontawesome,EXT:indexed_search/Configuration/TypoScript,EXT:form/Configuration/TypoScript/,EXT:dp_cookieconsent/Configuration/TypoScript,EXT:generic_lib/Configuration/TypoScript', '\r\n', '\r\n', NULL, '', 0, 0, 0, 1);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `tt_content`
--

DROP TABLE IF EXISTS `tt_content`;
CREATE TABLE `tt_content` (
  `uid` int(10) UNSIGNED NOT NULL,
  `pid` int(11) NOT NULL DEFAULT '0',
  `t3ver_oid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `t3ver_wsid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `t3ver_state` smallint(6) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `t3ver_move_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `t3_origuid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `tstamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `crdate` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cruser_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `editlock` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `hidden` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `sorting` int(11) NOT NULL DEFAULT '0',
  `CType` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `header` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `header_position` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
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
  `space_before_class` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `space_after_class` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `records` text COLLATE utf8_unicode_ci,
  `pages` text COLLATE utf8_unicode_ci,
  `starttime` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `endtime` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `colPos` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `subheader` text COLLATE utf8_unicode_ci,
  `fe_group` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `header_link` varchar(1024) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `image_zoom` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `header_layout` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `list_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `sectionIndex` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `linkToTop` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `file_collections` text COLLATE utf8_unicode_ci,
  `filelink_size` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `filelink_sorting` varchar(17) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `target` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `date` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `recursive` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `imageheight` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `pi_flexform` mediumtext COLLATE utf8_unicode_ci,
  `accessibility_title` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `accessibility_bypass` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `accessibility_bypass_text` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `l18n_parent` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `l18n_diffsource` mediumblob,
  `l10n_source` int(10) UNSIGNED NOT NULL DEFAULT '0',
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
  `filelink_sorting_direction` smallint(5) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Daten für Tabelle `tt_content`
--

INSERT INTO `tt_content` (`uid`, `pid`, `t3ver_oid`, `t3ver_wsid`, `t3ver_state`, `t3ver_stage`, `t3ver_count`, `t3ver_tstamp`, `t3ver_move_id`, `t3_origuid`, `tstamp`, `crdate`, `cruser_id`, `editlock`, `hidden`, `sorting`, `CType`, `header`, `header_position`, `rowDescription`, `bodytext`, `bullets_type`, `uploads_description`, `uploads_type`, `assets`, `image`, `imagewidth`, `imageorient`, `imagecols`, `imageborder`, `media`, `layout`, `frame_class`, `deleted`, `cols`, `space_before_class`, `space_after_class`, `records`, `pages`, `starttime`, `endtime`, `colPos`, `subheader`, `fe_group`, `header_link`, `image_zoom`, `header_layout`, `list_type`, `sectionIndex`, `linkToTop`, `file_collections`, `filelink_size`, `filelink_sorting`, `target`, `date`, `recursive`, `imageheight`, `sys_language_uid`, `pi_flexform`, `accessibility_title`, `accessibility_bypass`, `accessibility_bypass_text`, `l18n_parent`, `l18n_diffsource`, `l10n_source`, `selected_categories`, `category_field`, `table_class`, `table_caption`, `table_delimiter`, `table_enclosure`, `table_header_position`, `table_tfoot`, `tx_impexp_origuid`, `l10n_state`, `categories`, `tx_news_related_news`, `filelink_sorting_direction`) VALUES
(1, 11, 0, 0, 0, 0, 0, 0, 0, 0, 1528987737, 1528987737, 1, 0, 0, 256, 'textmedia', 'Tour du Monde sous marin (Premier partie)', '', '', '<h3>I un écueil fuyant</h3>\r\nL\'année 1866 fut marquée par un événement bizarre, un phénomène inexpliqué et inexplicable que personne n\'a sans doute&nbsp;oublié. Sans parler des rumeurs qui agitaient les populations des ports et surexcitaient l\'esprit public à l\'intérieur des&nbsp;continents les gens de mer furent particulièrement émus. Les négociants, armateurs, capitaines de navires, skippers et&nbsp;masters de l\'Europe et de l\'Amérique, officiers des marines militaires de tous pays, et, après eux, les gouvernements des&nbsp;divers États des deux continents, se préoccupèrent de ce fait au plus haut point.\r\n<hr />\r\n<LINK file:32 - download \"Opens internal link in current window\">Rencontrés sur mer</link>&nbsp;Rev. 3. Version 2017-12-01\r\n<hr />\r\n<LINK file:33 - download \"Opens internal link in current window\">Phosphorescent</link>&nbsp;Rev. 3. Version 2017-10-01\r\n<hr />\r\n<LINK file:31 - download \"Opens internal link in current window\">Cuvier, Lacépède,&nbsp;Quatrefages</link>&nbsp;Rev. 3. Version 2017-12-01\r\n<hr />\r\n<LINK file:31 - download \"Opens internal link in current window\">Dimensions admises</link>&nbsp;Rev. 3. Version 2016-07-01\r\n<hr />\r\n<LINK file:31 - download \"Opens internal link in current window\">Objets divers</link>&nbsp;Rev. 3. Version 2016-11-11\r\n<hr />\r\nEn effet, depuis quelque temps, plusieurs navires s\'étaient rencontrés sur mer avec « une chose énorme » un objet long,&nbsp;fusiforme, parfois phosphorescent, infiniment plus vaste et plus rapide qu\'une baleine.', 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 110, 'default', 0, 0, '', '', '', '', 0, 0, 0, '', '', '', 0, '3', '', 1, 0, '', 0, '', '', 0, 0, 0, 0, NULL, '', 0, '', 0, 0x613a313a7b733a383a22626f647974657874223b4e3b7d, 0, '', '', '', NULL, 124, 0, 0, 0, 1, NULL, 0, 0, 0),
(2, 10, 0, 0, 0, 0, 0, 0, 0, 3, 1528987737, 1528987737, 1, 0, 0, 256, 'textmedia', 'Das milderte schon etwas ihren Groll', '', '', 'Als einst das zehnjährige Söhnlein eines Nachbars in unheilbarem Siechtum darniederlag und weder das Zureden des Pfarrers, noch dasjenige der Eltern das Kind in seinen Schmerzen und seiner Furcht vor dem Tode zu trösten vermochte, da es so gerne gelebt hätte, so setzte sich Landolt, ruhig seine Pfeife rauchend, an das Bett und sprach zu ihm in so einfachen und treffenden Worten von der Hoffnungslosigkeit seiner Lage, von der Notwendigkeit, sich zu fassen und eine kleine Zeit zu leiden, aber auch von der sanften Erlösung durch den Tod und der seligen, wechsellosen Ruhe, die ihm als einem geduldigen und frommen Knäblein beschieden sei, von der Liebe und Teilnahme, die er, als ein fremder Mann, zu ihm hege, daß das Kind sich von Stund an änderte, mit heiterer Geduld seine Leiden ertrug, bis es vom Tode wirklich erlöst wurde. ', 0, 0, 0, 10, 0, 0, 25, 2, 0, 0, 0, 'default', 0, 0, '', '', '', '', 0, 0, 0, '', '', '', 1, '0', '', 1, 0, '', 0, '', '', 0, 0, 0, 0, NULL, '', 0, '', 0, 0x613a313a7b733a363a22617373657473223b4e3b7d, 0, '', '', '', NULL, 124, 0, 0, 0, 2, NULL, 0, 0, 0),
(3, 9, 0, 0, 0, 0, 0, 0, 0, 1, 1528987737, 1528987737, 1, 0, 0, 256, 'textmedia', 'Vingt mille lieues sous les mers', '', '', 'L\'année 1866 fut marquée par un événement bizarre<sup>2</sup>, un phénomène inexpliqué et inexplicable que personne n\'a sans doute&nbsp;oublié. Sans parler des rumeurs qui agitaient les <strong>populations des ports</strong> et surexcitaient l\'esprit public à l\'intérieur des&nbsp;continents les gens de mer furent particulièrement émus. Les négociants, armateurs, capitaines de navires, skippers et&nbsp;masters de l\'Europe et de l\'Amérique, officiers des marines militaires de tous pays, et, après eux, les gouvernements des&nbsp;divers États des deux continents, se préoccupèrent de ce fait au plus haut point.\r\n<hr />\r\nEn effet, depuis quelque temps, plusieurs navires s\'étaient rencontrés sur mer avec « une chose énorme » un objet long,&nbsp;fusiforme, parfois phosphorescent, infiniment plus vaste et plus rapide qu\'une baleine.\r\n<p class=\"text-justify\">Les faits relatifs&nbsp;à cette apparition, consignés aux divers livres de bord, s\'accordaient assez exactement sur la structure de&nbsp;l\'objet ou de l\'être en question, la vitesse inouïe de ses mouvements, la puissance surprenante de sa locomotion, la vie&nbsp;particulière dont il semblait doué. Si c\'était un cétacé, il surpassait en volume tous ceux que la science avait classés&nbsp;jusqu\'alors. Ni Cuvier, ni Lacépède, ni M. Dumeril, ni M. de Quatrefages n\'eussent admis l\'existence d\'un tel monstre — à&nbsp;moins de l\'avoir vu, ce qui s\'appelle vu de leurs propres yeux de savants.</p>\r\nA prendre la moyenne des observations faites à diverses reprises — en rejetant les évaluations timides qui assignaient à cet&nbsp;objet une longueur de deux cents pieds et en repoussant les opinions exagérées qui le disaient large d\'un mille et long de&nbsp;trois — on pouvait affirmer, cependant, que cet être phénoménal dépassait de beaucoup toutes les dimensions admises&nbsp;jusqu\'à ce jour par les ichtyologistes — s\'il existait toutefois.\r\n<hr />\r\nOr, il existait, le fait en lui-même n\'était plus niable, et, avec ce penchant qui pousse au merveilleux la cervelle humaine, on&nbsp;comprendra l\'émotion produite dans le monde entier par cette surnaturelle apparition. Quant à la rejeter au rang des fables,&nbsp;il fallait y renoncer.\r\nEn effet, le 20 juillet 1866, le steamer Governor-Higginson, de Calcutta and Burnach steam navigation Company, avait&nbsp;rencontré cette masse mouvante à cinq milles dans l\'est des côtes de l\'Australie. Le capitaine Baker se crut, tout d\'abord, en&nbsp;présence d\'un écueil inconnu ; il se disposait même à en déterminer la situation exacte, quand deux colonnes d\'eau,&nbsp;projetées par l\'inexplicable objet, s\'élancèrent en sifflant à cent cinquante pieds dans l\'air. Donc, à moins que cet écueil ne&nbsp;fût soumis aux expansions intermittentes d\'un geyser, le Governor-Higginson avait affaire bel et bien à quelque mammifère&nbsp;aquatique, inconnu jusque-là, qui rejetait par ses évents des colonnes d\'eau, mélangées d\'air et de vapeur.\r\n<ul><li><LINK file:32 - download \"Opens internal link in current window\">42°15\'&nbsp;de latitude nord, 60°35\' de longitude à l\'ouest</link></li><li><LINK file:32 - download \"Opens internal link in current window\">Vingt mille lieues sous les mers: 3</link></li><li><LINK file:32 - download \"Opens internal link in current window\">l\'Angleterre, l\'Amérique, l\'Allemagne</link></li><li><LINK file:32 - download \"Opens internal link in current window\">Download File 2: Calcutta and Burnach steam navigation Company</link></li></ul>\r\nPareil fait fut également observé le 23 juillet de la même année, dans les mers du Pacifique, par le Cristobal-Colon, de West&nbsp;India and Pacific steam navigation Company. Donc, ce cétacé extraordinaire pouvait se transporter d\'un endroit à un autre&nbsp;avec une vélocité surprenante, puisque à trois jours d\'intervalle, le Governor-Higginson et le Cristobal-Colon l\'avaient&nbsp;observé en deux points de la carte séparés par une distance de plus de sept cents lieues marines. Quinze jours plus tard, à&nbsp;deux mille lieues de là l\'Helvetia, de la Compagnie Nationale, et le Shannon, du Royal-Mail, marchant à contrebord dans&nbsp;cette portion de l\'Atlantique comprise entre les États-Unis et l\'Europe, se signalèrent respectivement le monstre par 42°15\'&nbsp;de latitude nord, et 60°35\' de longitude à l\'ouest du méridien de Greenwich. Dans cette observation simultanée, on crut&nbsp;pouvoir évaluer la longueur minimum du mammifère à plus de trois cent cinquante pieds anglais, puisque le Shannon et&nbsp;l\'Helvetia étaient de dimension inférieure à lui, bien qu\'ils mesurassent cent mètres de l\'étrave à l\'étambot. Or, les plus&nbsp;vastes baleines, celles qui fréquentent les parages des îles Aléoutiennes, le Kulammak et l\'Umgullick, n\'ont jamais dépassé la&nbsp;longueur de cinquante-six mètres, — si même elles l\'atteignent.\r\n<hr />\r\nCes rapports arrivés coup sur coup, de nouvelles observations faites à bord du transatlantique le Pereire, un abordage entre&nbsp;l\'Etna, de la ligne Inman, et le monstre, un procès-verbal dressé par les officiers de la frégate française la Normandie, un&nbsp;très sérieux relèvement obtenu par l\'état-major du commodore Fitz-James à bord du Lord-Clyde, émurent profondément&nbsp;l\'opinion publique. Dans les pays d\'humeur légère, on plaisanta le phénomène, mais les pays graves et pratiques,&nbsp;l\'Angleterre, l\'Amérique, l\'Allemagne, s\'en préoccupèrent vivement.\r\n\r\n<table summary=\"Tour du Monde sous marin (Premier partie)\"><caption>Les faits relatifs à cette apparition</caption><thead><tr><th scope=\"col\">No.</th><th scope=\"col\">Apparition</th><th scope=\"col\">Date</th><th scope=\"col\">livre de bord</th></tr></thead><tbody><tr><td>666312</td><td>puissance </td><td>2.11.2012</td><td>diverses reprises</td></tr><tr><td>234566</td><td>vitesse </td><td>31.7.2010</td><td>écueil inconnu</td></tr><tr><td>300693</td><td>locomotion</td><td>22.12.2009</td><td>distance de plus de sept cents lieues marines</td></tr><tr><td>245364</td><td>structure </td><td>12.11.2006</td><td>l\'opinion publique</td></tr></tbody></table>\r\nPartout dans les grands centres, le monstre devint à la mode ; on le chanta dans les cafés, on le bafoua dans les journaux,&nbsp;on le joua sur les théâtres. Les canards eurent là une belle occasion de pondre des oeufs de toute couleur. On vit&nbsp;réapparaître dans les journaux — à court de copie — tous les êtres imaginaires et gigantesques, depuis la baleine blanche, le&nbsp;terrible « Moby Dick » des régions hyperboréennes, jusqu\'au Kraken démesuré, dont les tentacules peuvent enlacer un&nbsp;bâtiment de cinq cents tonneaux et l\'entraîner dans les abîmes de l\'Océan. On reproduisit même les procès-verbaux des&nbsp;temps anciens les opinions d\'Aristote et de Pline, qui admettaient l\'existence de ces monstres, puis les récits norvégiens de&nbsp;l\'évêque Pontoppidan, les relations de Paul Heggede, et enfin les rapports de M. Harrington, dont la bonne foi ne peut être&nbsp;soupçonnée, quand il affirme avoir vu, étant à bord du Castillan, en 1857, cet énorme serpent qui n\'avait jamais fréquenté&nbsp;jusqu\'alors que les mers de l\'ancien Constitutionnel.\r\nAlors éclata l\'interminable polémique des crédules et des incrédules dans les sociétés savantes et les journaux scientifiques.&nbsp;La « question du monstre » enflamma les esprits. Les journalistes, qui font profession de science en lutte avec ceux qui font&nbsp;profession d\'esprit, versèrent des flots d\'encre pendant cette mémorable campagne ; quelques-uns même, deux ou trois&nbsp;gouttes de sang, car du serpent de mer, ils en vinrent aux personnalités les plus offensantes.\r\n<hr />\r\nSix mois durant, la guerre se poursuivit avec des chances diverses. Aux articles de fond de l\'Institut géographique du Brésil,&nbsp;de l\'Académie royale des sciences de Berlin, de l\'Association Britannique, de l\'Institution Smithsonnienne de Washington, aux&nbsp;discussions du The Indian Archipelago, du Cosmos de l\'abbé Moigno, des Mittheilungen de Petermann, aux chroniques&nbsp;scientifiques des grands journaux de la France et de l\'étranger, la petite presse ripostait avec une verve intarissable. \r\n<ol><li>L\'année 1866 fut marquée par un événement bizarre</li><li>Ni Cuvier, ni Lacépède, ni M. Dumeril, ni M. de Quatrefages n\'eussent admis l\'existence d\'un tel monstre</li><li>Pareil fait fut également observé le 23 juillet de la même année, dans les mers du Pacifique, par le Cristobal-Colon, de West India and Pacific steam navigation Company</li><li>Ces rapports arrivés coup sur coup</li></ol>\r\nSes&nbsp;spirituels écrivains parodiant un mot de Linné, cité par les adversaires du monstre, soutinrent en effet que « la nature ne&nbsp;faisait pas de sots », et ils adjurèrent leurs contemporains de ne point donner un démenti à la nature, en admettant&nbsp;l\'existence des Krakens, des serpents de mer, des « Moby Dick », et autres élucubrations de marins en délire. Enfin, dans un&nbsp;article d\'un journal satirique très redouté, le plus aimé de ses rédacteurs, brochant sur le tout, poussa au monstre, comme&nbsp;Hippolyte, lui porta un dernier coup et l\'acheva au milieu d\'un éclat de rire universel. L\'esprit avait vaincu la science.Pendant les premiers mois de l\'année 1867, la question parut être enterrée, et elle ne semblait pas devoir renaître, quand de&nbsp;nouveaux faits furent portés à la connaissance du public. Il ne s\'agit plus alors d\'un problème scientifique à résoudre, mais&nbsp;bien d\'un danger réel sérieux à éviter. La question prit une tout autre face. Le monstre redevint îlot, rocher, écueil, mais&nbsp;écueil fuyant, indéterminable, insaisissable.', 0, 0, 0, 2, 0, 0, 25, 1, 0, 0, 0, 'default', 0, 0, '', '', '', '', 0, 0, 0, '', '', '', 1, '3', '', 1, 0, '', 0, '', '', 0, 0, 0, 0, NULL, '', 0, '', 0, 0x613a313a7b733a383a22626f647974657874223b4e3b7d, 0, '', '', '', NULL, 124, 0, 0, 0, 3, NULL, 0, 0, 0),
(4, 8, 0, 0, 0, 0, 0, 0, 0, 7, 1528987737, 1528987737, 1, 0, 0, 256, 'textmedia', 'Vingt mille lieues sous les mers', '', '', 'En effet, le 20 juillet 1866, le steamer Governor-Higginson, de Calcutta and Burnach steam navigation Company, avait&nbsp;rencontré cette masse mouvante à cinq milles dans l\'est des côtes de l\'Australie. Le capitaine Baker se crut, tout d\'abord, en&nbsp;présence d\'un écueil inconnu ; il se disposait même à en déterminer la situation exacte, quand deux colonnes d\'eau,&nbsp;projetées par l\'inexplicable objet, s\'élancèrent en sifflant à cent cinquante pieds dans l\'air. Donc, à moins que cet écueil ne&nbsp;fût soumis aux expansions intermittentes d\'un geyser, le Governor-Higginson avait affaire bel et bien à quelque mammifère&nbsp;aquatique, inconnu jusque-là, qui rejetait par ses évents des colonnes d\'eau, mélangées d\'air et de vapeur.\r\n<ul><li><LINK file:32 - download \"Opens internal link in current window\">42°15\'&nbsp;de latitude nord, 60°35\' de longitude à l\'ouest</link></li><li><LINK file:32 - download \"Opens internal link in current window\">Vingt mille lieues sous les mers: 3</link></li><li><LINK file:32 - download \"Opens internal link in current window\">l\'Angleterre, l\'Amérique, l\'Allemagne</link></li><li><LINK file:32 - download \"Opens internal link in current window\">Download File 2: Calcutta and Burnach steam navigation Company</link></li></ul>\r\nPareil fait fut également observé le 23 juillet de la même année, dans les mers du Pacifique, par le Cristobal-Colon, de West&nbsp;India and Pacific steam navigation Company. Donc, ce cétacé extraordinaire pouvait se transporter d\'un endroit à un autre&nbsp;avec une vélocité surprenante, puisque à trois jours d\'intervalle, le Governor-Higginson et le Cristobal-Colon l\'avaient&nbsp;observé en deux points de la carte séparés par une distance de plus de sept cents lieues marines. Quinze jours plus tard, à&nbsp;deux mille lieues de là l\'Helvetia, de la Compagnie Nationale, et le Shannon, du Royal-Mail, marchant à contrebord dans&nbsp;cette portion de l\'Atlantique comprise entre les États-Unis et l\'Europe, se signalèrent respectivement le monstre par 42°15\'&nbsp;de latitude nord, et 60°35\' de longitude à l\'ouest du méridien de Greenwich.', 0, 0, 0, 1, 0, 0, 25, 1, 0, 0, 0, 'default', 0, 0, '', '', '', '', 0, 0, 0, '', '', '', 1, '3', '', 1, 0, '', 0, '', '', 0, 0, 0, 0, NULL, '', 0, '', 0, 0x613a313a7b733a383a22626f647974657874223b4e3b7d, 0, '', '', '', NULL, 124, 0, 0, 0, 4, NULL, 0, 0, 0),
(5, 8, 0, 0, 0, 0, 0, 0, 0, 7, 1528987737, 1528987737, 1, 0, 0, 128, 'textmedia', 'Chapter IX: A Boat', '', '', '<p class=\"text-justify\">But for an oven I was indeed in great pain. At length I found out an experiment for that also, which was this: I made some earthen-vessels very broad but not deep, that is to say, about two feet diameter, and not above nine inches deep. These I burned in the fire, as I had done the other, and laid them by; and when I wanted to bake, I made a great fire upon my hearth, which I had paved with some square tiles of my own baking and burning also; but I should not call them square.When the firewood was burned pretty much into embers or live coals, I drew them forward upon this hearth, so as to cover it all over, and there I let them lie till the hearth was very hot. Then sweeping away all the embers, I set down my loaf or loaves, and whelming down the earthen pot upon them, drew the embers all round the outside of the pot, to keep in and add to the heat; and thus as well as in the best oven in the world, I baked my barley-loaves, and became in little time a good pastrycook into the bargain; for I made myself several cakes and puddings of the rice; but I made no pies, neither had I anything to put into them supposing I had, except the flesh either of fowls or goats.It need not be wondered at if all these things took me up most part of the third year of my abode here; for it is to be observed that in the intervals of these things I had my new harvest and husbandry to manage; for I reaped my corn in its season, and carried it home as well as I could, and laid it up in the ear, in my large baskets, till I had time to rub it out, for I had no floor to thrash it on, or instrument to thrash it with.</p>\r\n\r\n', 0, 0, 0, 1, 0, 0, 26, 1, 0, 0, 0, 'default', 0, 0, '', '', '', '', 0, 0, 0, '', '', '', 1, '3', '', 1, 0, '', 0, '', '', 0, 0, 0, 0, NULL, '', 0, '', 0, 0x613a313a7b733a363a22617373657473223b4e3b7d, 0, '', '', '', NULL, 124, 0, 0, 0, 5, NULL, 0, 0, 0),
(6, 8, 0, 0, 0, 0, 0, 0, 0, 7, 1528987737, 1528987737, 1, 0, 0, 64, 'textmedia', 'Robinson Crusoe by Daniel Defoe', '', '', 'This work did not take me up less than three months, because a great part of that time was the wet season, when I could not go abroad. Within-doors, that is when it rained and I could not go out, I found employment in the following occupations - always observing, that all the while I was at work I diverted myself with talking to my parrot, and teaching him to speak; and I quickly taught him to know his own name, and at last to speak it out pretty loud, &quot;Poll,&quot; which was the first word I ever heard spoken in the island by any mouth but my own.  This, therefore, was not my work, but an assistance to my work; for now, as I said, I had a great employment upon my hands, as follows: I had long studied to make, by some means or other, some earthen vessels, which, indeed, I wanted sorely, but knew not where to come at them. However, considering the heat of the climate, I did not doubt but if I could find out any clay, I might make some pots that might, being dried in the sun, be hard enough and strong enough to bear handling, and to hold anything that was dry, and required to be kept so; and as this was necessary in the preparing corn, meal, &amp;c., which was the thing I was doing, I resolved to make some as large as I could, and fit only to stand like jars, to hold what should be put into them.It would make the reader pity me, or rather laugh at me, to tell how many awkward ways I took to raise this paste; what odd, misshapen, ugly things I made; how many of them fell in and how many fell out, the clay not being stiff enough to bear its own weight; how many cracked by the over-violent heat of the sun, being set out too hastily; and how many fell in pieces with only removing, as well before as after they were dried; and, in a word, how, after having laboured hard to find the clay - to dig it, to temper it, to bring it home, and work it - I could not make above two large earthen ugly things (I cannot call them jars) in about two months\' labour.\r\n<table summary=\"Tour du Monde sous marin (Premier partie)\"><caption>Les faits relatifs à cette apparition</caption><thead><tr><th scope=\"col\">No.</th><th scope=\"col\">Apparition</th><th scope=\"col\">Date</th><th scope=\"col\">livre de bord</th></tr></thead><tbody><tr><td>666312</td><td>puissance </td><td>2.11.2012</td><td>diverses reprises</td></tr><tr><td>234566</td><td>vitesse </td><td>31.7.2010</td><td>écueil inconnu</td></tr><tr><td>300693</td><td>locomotion</td><td>22.12.2009</td><td>distance de plus de sept cents lieues marines</td></tr><tr><td>245364</td><td>structure </td><td>12.11.2006</td><td>l\'opinion publique</td></tr></tbody></table>\r\n\r\n', 0, 0, 0, 1, 0, 0, 25, 1, 0, 0, 0, 'default', 0, 0, '', '', '', '', 0, 0, 0, '', '', '', 1, '3', '', 1, 0, '', 0, '', '', 0, 0, 0, 0, NULL, '', 0, '', 0, 0x613a313a7b733a363a22617373657473223b4e3b7d, 0, '', '', '', NULL, 124, 0, 0, 0, 6, NULL, 0, 0, 0),
(7, 8, 0, 0, 0, 0, 0, 0, 0, 1, 1528987737, 1528987737, 1, 0, 0, 32, 'textmedia', 'Conrad Ferdinand Meyer', '', '', 'Die Reise des Herrn Waser, erstes Kapitel <br />Die Mittagssonne stand über der kahlen, von Felshäuptern umragten Höhe des Julierpasses im Lande Bünden. Die Steinwände brannten und schimmerten unter den stechenden senkrechten Strahlen. Zuweilen, wenn eine geballte Wetterwolke emporquoll und vorüberzog, schienen die Bergmauern näher heranzutreten und, die <LINK https://de.wikipedia.org/wiki/Conrad_Ferdinand_Meyer - external-link-new-window \"Opens internal link in current window\">Landschaft verengend, schroff und unheimlich zusammenzurücken</link>. Die wenigen zwischen den Felszacken herniederhangenden Schneeflecke und Gletscherzungen leuchteten bald grell auf, bald wichen sie zurück in grünliches Dunkel. Es drückte eine schwüle Stille, nur <strong>das niedrige Geflatter der Steinlerche</strong> regte sich zwischen den nackten Blöcken und von Zeit zu Zeit durchdrang der scharfe Pfiff eines Murmeltiers die Einöde.\r\nIn der Mitte der sich dehnenden Paßhöhe standen rechts und links vom Saumpfade zwei abgebrochene Säulen, die der Zeit schon länger als ein Jahrtausend trotzen mochten. In dem durch die Verwitterung beckenförmig ausgehöhlten Bruche des einen Säulenstumpfes hatte sich Regenwasser gesammelt. Ein Vogel hüpfte auf dem Rande hin und her und nippte von dem klaren Himmelswasser. Jetzt erscholl aus der Ferne, vom Echo wiederholt und verhöhnt, das Gebell eines Hundes. Hoch oben an dem stellenweise grasbewachsenen Hange hatte ein Bergamaskerhirt im Mittagsschlafe gelegen. Nun sprang er auf, zog seinen Mantel fest um die Schultern und warf sich in kühnen Schwüngen von einem vorragenden Felsturme hinunter zur Einholung seiner Schafherde, die sich in weißen beweglichen Punkten nach der Tiefe hin verlor. Einer seiner zottigen Hunde setzte ihm nach, der andere, vielleicht ein altes Tier, konnte seinem Herrn nicht folgen. Er stand auf einem Vorsprunge und winselte hilflos.', 0, 0, 0, 1, 0, 0, 26, 1, 0, 0, 0, 'default', 0, 0, '', '', '', '', 0, 0, 0, '', '', '', 1, '3', '', 1, 0, '', 0, '', '', 0, 0, 0, 0, NULL, '', 0, '', 0, 0x613a313a7b733a383a22626f647974657874223b4e3b7d, 0, '', '', '', NULL, 124, 0, 0, 0, 7, NULL, 0, 0, 0),
(8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 1528987737, 1528987737, 1, 0, 0, 16, 'textmedia', 'Vingt mille lieues sous les mers', '', '', '<p class=\"text-justify\">Les faits relatifs&nbsp;à cette apparition, consignés aux divers livres de bord, s\'accordaient assez exactement sur la structure de&nbsp;l\'objet ou de l\'être en question, la vitesse inouïe de ses mouvements, la puissance surprenante de sa locomotion, la vie&nbsp;particulière dont il semblait doué. Si c\'était un cétacé, il surpassait en volume tous ceux que la science avait classés&nbsp;jusqu\'alors. Ni Cuvier, ni Lacépède, ni M. Dumeril, ni M. de Quatrefages n\'eussent admis l\'existence d\'un tel monstre — à&nbsp;moins de l\'avoir vu, ce qui s\'appelle vu de leurs propres yeux de savants.</p>\r\nA prendre la moyenne des observations faites à diverses reprises — en rejetant les évaluations timides qui assignaient à cet&nbsp;objet une longueur de deux cents pieds et en repoussant les opinions exagérées qui le disaient large d\'un mille et long de&nbsp;trois — on pouvait affirmer, cependant, que cet être phénoménal dépassait de beaucoup toutes les dimensions admises&nbsp;jusqu\'à ce jour par les ichtyologistes — s\'il existait toutefois.\r\n<hr />\r\nOr, il existait, le fait en lui-même n\'était plus niable, et, avec ce penchant qui pousse au merveilleux la cervelle humaine, on&nbsp;comprendra l\'émotion produite dans le monde entier par cette surnaturelle apparition. Quant à la rejeter au rang des fables,&nbsp;il fallait y renoncer.\r\nEn effet, le 20 juillet 1866, le steamer Governor-Higginson, de Calcutta and Burnach steam navigation Company, avait&nbsp;rencontré cette masse mouvante à cinq milles dans l\'est des côtes de l\'Australie. Le capitaine Baker se crut, tout d\'abord, en&nbsp;présence d\'un écueil inconnu ; il se disposait même à en déterminer la situation exacte, quand deux colonnes d\'eau,&nbsp;projetées par l\'inexplicable objet, s\'élancèrent en sifflant à cent cinquante pieds dans l\'air. Donc, à moins que cet écueil ne&nbsp;fût soumis aux expansions intermittentes d\'un geyser, le Governor-Higginson avait affaire bel et bien à quelque mammifère&nbsp;aquatique, inconnu jusque-là, qui rejetait par ses évents des colonnes d\'eau, mélangées d\'air et de vapeur.', 0, 0, 0, 1, 0, 0, 25, 1, 0, 0, 0, 'default', 0, 0, '', '', '', '', 0, 0, 0, '', '', '', 1, '3', '', 1, 0, '', 0, '', '', 0, 0, 0, 0, NULL, '', 0, '', 0, 0x613a313a7b733a363a22617373657473223b4e3b7d, 0, '', '', '', NULL, 124, 0, 0, 0, 8, NULL, 0, 0, 0),
(9, 7, 0, 0, 0, 0, 0, 0, 0, 2, 1528987737, 1528987737, 1, 0, 0, 256, 'textmedia', 'Ces rapports arrivés coup sur coup', '', '', '', 0, 0, 0, 15, 0, 0, 25, 1, 0, 0, 105, 'default', 0, 0, '', '', '', '', 0, 0, 0, '', '', '', 1, '0', '', 1, 0, '', 0, '', '', 0, 0, 0, 0, NULL, '', 0, '', 0, 0x613a313a7b733a363a22617373657473223b4e3b7d, 0, '', '', '', NULL, 124, 0, 0, 0, 9, NULL, 0, 0, 0),
(10, 6, 0, 0, 0, 0, 0, 0, 0, 0, 1528992375, 1528987737, 1, 0, 0, 256, 'list', 'A great part of that time was the wet season', '', '', NULL, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 105, 'default', 0, 0, '', '', '', '', 0, 0, 0, '', '', '', 0, '3', 'news_pi1', 1, 0, '', 0, '', '', 0, 0, 0, 0, '<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"settings.orderBy\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.orderDirection\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.categoryConjunction\">\n                    <value index=\"vDEF\">or</value>\n                </field>\n                <field index=\"settings.categories\">\n                    <value index=\"vDEF\">3,2,1</value>\n                </field>\n                <field index=\"settings.includeSubCategories\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"settings.archiveRestriction\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.timeRestriction\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.timeRestrictionHigh\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.topNewsRestriction\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.startingpoint\">\n                    <value index=\"vDEF\">2</value>\n                </field>\n                <field index=\"settings.recursive\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"switchableControllerActions\">\n                    <value index=\"vDEF\">News-&gt;list;News-&gt;detail</value>\n                </field>\n            </language>\n        </sheet>\n        <sheet index=\"additional\">\n            <language index=\"lDEF\">\n                <field index=\"settings.detailPid\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.listPid\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.backPid\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.limit\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.offset\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.tags\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.hidePagination\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"settings.list.paginate.itemsPerPage\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.topNewsFirst\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"settings.excludeAlreadyDisplayedNews\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"settings.disableOverrideDemand\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n            </language>\n        </sheet>\n        <sheet index=\"template\">\n            <language index=\"lDEF\">\n                <field index=\"settings.media.maxWidth\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.media.maxHeight\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.cropMaxCharacters\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.templateLayout\">\n                    <value index=\"vDEF\"></value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>', '', 0, '', 0, 0x613a31383a7b733a353a224354797065223b4e3b733a363a22636f6c506f73223b4e3b733a363a22686561646572223b4e3b733a31333a226865616465725f6c61796f7574223b4e3b733a31353a226865616465725f706f736974696f6e223b4e3b733a31313a226865616465725f6c696e6b223b4e3b733a393a22737562686561646572223b4e3b733a393a226c6973745f74797065223b4e3b733a31313a2270695f666c6578666f726d223b4e3b733a363a226c61796f7574223b4e3b733a31313a226672616d655f636c617373223b4e3b733a31383a2273706163655f6265666f72655f636c617373223b4e3b733a31373a2273706163655f61667465725f636c617373223b4e3b733a31363a227379735f6c616e67756167655f756964223b4e3b733a363a2268696464656e223b4e3b733a393a22737461727474696d65223b4e3b733a373a22656e6474696d65223b4e3b733a31303a2263617465676f72696573223b4e3b7d, 0, '', '', '', NULL, 124, 0, 0, 0, 10, NULL, 0, 0, 0),
(11, 5, 0, 0, 0, 0, 0, 0, 0, 1, 1528987737, 1528987737, 1, 0, 0, 256, 'textmedia', 'Tour du Monde sous marin (Premier partie)', '', '', '<h3>I un écueil fuyant</h3>\r\nL\'année 1866 fut marquée par un événement bizarre, un phénomène inexpliqué et inexplicable que personne n\'a sans doute&nbsp;oublié. Sans parler des rumeurs qui agitaient les populations des ports et surexcitaient l\'esprit public à l\'intérieur des&nbsp;continents les gens de mer furent particulièrement émus. Les négociants, armateurs, capitaines de navires, skippers et&nbsp;masters de l\'Europe et de l\'Amérique, officiers des marines militaires de tous pays, et, après eux, les gouvernements des&nbsp;divers États des deux continents, se préoccupèrent de ce fait au plus haut point.\r\nEn effet, depuis quelque temps, plusieurs navires s\'étaient rencontrés sur mer avec « une chose énorme » un objet long,&nbsp;fusiforme, parfois phosphorescent, infiniment plus vaste et plus rapide qu\'une baleine.\r\nLes faits relatifs à cette apparition, consignés aux divers livres de bord, s\'accordaient assez exactement sur la structure de&nbsp;l\'objet ou de l\'être en question, la vitesse inouïe de ses mouvements, la puissance surprenante de sa locomotion, la vie&nbsp;particulière dont il semblait doué. Si c\'était un cétacé, il surpassait en volume tous ceux que la science avait classés&nbsp;jusqu\'alors. Ni Cuvier, ni Lacépède, ni M. Dumeril, ni M. de Quatrefages n\'eussent admis l\'existence d\'un tel monstre — à&nbsp;moins de l\'avoir vu, ce qui s\'appelle vu de leurs propres yeux de savants.\r\nA prendre la moyenne des observations faites à diverses reprises — en rejetant les évaluations timides qui assignaient à cet&nbsp;objet une longueur de deux cents pieds et en repoussant les opinions exagérées qui le disaient large d\'un mille et long de&nbsp;trois — on pouvait affirmer, cependant, que cet être phénoménal dépassait de beaucoup toutes les dimensions admises&nbsp;jusqu\'à ce jour par les ichtyologistes — s\'il existait toutefois.\r\nOr, il existait, le fait en lui-même n\'était plus niable, et, avec ce penchant qui pousse au merveilleux la cervelle humaine, on&nbsp;comprendra l\'émotion produite dans le monde entier par cette surnaturelle apparition. Quant à la rejeter au rang des fables,&nbsp;il fallait y renoncer.<br />En effet, le 20 juillet 1866, le steamer Governor-Higginson, de Calcutta and Burnach steam navigation Company, avait&nbsp;rencontré cette masse mouvante à cinq milles dans l\'est des côtes de l\'Australie. Le capitaine Baker se crut, tout d\'abord, en&nbsp;présence d\'un écueil inconnu ; il se disposait même à en déterminer la situation exacte, quand deux colonnes d\'eau,&nbsp;projetées par l\'inexplicable objet, s\'élancèrent en sifflant à cent cinquante pieds dans l\'air. Donc, à moins que cet écueil ne&nbsp;fût soumis aux expansions intermittentes d\'un geyser, le Governor-Higginson avait affaire bel et bien à quelque mammifère&nbsp;aquatique, inconnu jusque-là, qui rejetait par ses évents des colonnes d\'eau, mélangées d\'air et de vapeur.\r\nPareil fait fut également observé le 23 juillet de la même année, dans les mers du Pacifique, par le Cristobal-Colon, de West&nbsp;India and Pacific steam navigation Company. Donc, ce cétacé extraordinaire pouvait se transporter d\'un endroit à un autre&nbsp;avec une vélocité surprenante, puisque à trois jours d\'intervalle, le Governor-Higginson et le Cristobal-Colon l\'avaient&nbsp;observé en deux points de la carte séparés par une distance de plus de sept cents lieues marines. Quinze jours plus tard, à&nbsp;deux mille lieues de là l\'Helvetia, de la Compagnie Nationale, et le Shannon, du Royal-Mail, marchant à contrebord dans&nbsp;cette portion de l\'Atlantique comprise entre les États-Unis et l\'Europe, se signalèrent respectivement le monstre par 42°15\'&nbsp;de latitude nord, et 60°35\' de longitude à l\'ouest du méridien de Greenwich. Dans cette observation simultanée, on crut&nbsp;pouvoir évaluer la longueur minimum du mammifère à plus de trois cent cinquante pieds anglais, puisque le Shannon et&nbsp;l\'Helvetia étaient de dimension inférieure à lui, bien qu\'ils mesurassent cent mètres de l\'étrave à l\'étambot. Or, les plus&nbsp;vastes baleines, celles qui fréquentent les parages des îles Aléoutiennes, le Kulammak et l\'Umgullick, n\'ont jamais dépassé la&nbsp;longueur de cinquante-six mètres, — si même elles l\'atteignent.\r\nCes rapports arrivés coup sur coup, de nouvelles observations faites à bord du transatlantique le Pereire, un abordage entre&nbsp;l\'Etna, de la ligne Inman, et le monstre, un procès-verbal dressé par les officiers de la frégate française la Normandie, un&nbsp;très sérieux relèvement obtenu par l\'état-major du commodore Fitz-James à bord du Lord-Clyde, émurent profondément&nbsp;l\'opinion publique. Dans les pays d\'humeur légère, on plaisanta le phénomène, mais les pays graves et pratiques,&nbsp;l\'Angleterre, l\'Amérique, l\'Allemagne, s\'en préoccupèrent vivement.\r\nPartout dans les grands centres, le monstre devint à la mode ; on le chanta dans les cafés, on le bafoua dans les journaux,&nbsp;on le joua sur les théâtres. Les canards eurent là une belle occasion de pondre des oeufs de toute couleur. On vit&nbsp;réapparaître dans les journaux — à court de copie — tous les êtres imaginaires et gigantesques, depuis la baleine blanche, le&nbsp;terrible « Moby Dick » des régions hyperboréennes, jusqu\'au Kraken démesuré, dont les tentacules peuvent enlacer un&nbsp;bâtiment de cinq cents tonneaux et l\'entraîner dans les abîmes de l\'Océan. On reproduisit même les procès-verbaux des&nbsp;temps anciens les opinions d\'Aristote et de Pline, qui admettaient l\'existence de ces monstres, puis les récits norvégiens de&nbsp;l\'évêque Pontoppidan, les relations de Paul Heggede, et enfin les rapports de M. Harrington, dont la bonne foi ne peut être&nbsp;soupçonnée, quand il affirme avoir vu, étant à bord du Castillan, en 1857, cet énorme serpent qui n\'avait jamais fréquenté&nbsp;jusqu\'alors que les mers de l\'ancien Constitutionnel.\r\nAlors éclata l\'interminable polémique des crédules et des incrédules dans les sociétés savantes et les journaux scientifiques.&nbsp;La « question du monstre » enflamma les esprits. Les journalistes, qui font profession de science en lutte avec ceux qui font&nbsp;profession d\'esprit, versèrent des flots d\'encre pendant cette mémorable campagne ; quelques-uns même, deux ou trois&nbsp;gouttes de sang, car du serpent de mer, ils en vinrent aux personnalités les plus offensantes.<br />Six mois durant, la guerre se poursuivit avec des chances diverses. Aux articles de fond de l\'Institut géographique du Brésil,&nbsp;de l\'Académie royale des sciences de Berlin, de l\'Association Britannique, de l\'Institution Smithsonnienne de Washington, aux&nbsp;discussions du The Indian Archipelago, du Cosmos de l\'abbé Moigno, des Mittheilungen de Petermann, aux chroniques&nbsp;scientifiques des grands journaux de la France et de l\'étranger, la petite presse ripostait avec une verve intarissable. Ses&nbsp;spirituels écrivains parodiant un mot de Linné, cité par les adversaires du monstre, soutinrent en effet que « la nature ne&nbsp;faisait pas de sots », et ils adjurèrent leurs contemporains de ne point donner un démenti à la nature, en admettant&nbsp;l\'existence des Krakens, des serpents de mer, des « Moby Dick », et autres élucubrations de marins en délire. Enfin, dans un&nbsp;article d\'un journal satirique très redouté, le plus aimé de ses rédacteurs, brochant sur le tout, poussa au monstre, comme&nbsp;Hippolyte, lui porta un dernier coup et l\'acheva au milieu d\'un éclat de rire universel. L\'esprit avait vaincu la science.<br />Pendant les premiers mois de l\'année 1867, la question parut être enterrée, et elle ne semblait pas devoir renaître, quand de&nbsp;nouveaux faits furent portés à la connaissance du public. Il ne s\'agit plus alors d\'un problème scientifique à résoudre, mais&nbsp;bien d\'un danger réel sérieux à éviter. La question prit une tout autre face. Le monstre redevint îlot, rocher, écueil, mais&nbsp;écueil fuyant, indéterminable, insaisissable.', 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 110, 'default', 0, 0, '', '', '', '', 0, 0, 0, '', '', '', 0, '3', '', 1, 0, '', 0, '', '', 0, 0, 0, 0, NULL, '', 0, '', 0, 0x613a313a7b733a363a2268696464656e223b4e3b7d, 0, '', '', '', NULL, 124, 0, 0, 0, 11, NULL, 0, 0, 0),
(12, 5, 0, 0, 0, 0, 0, 0, 0, 6, 1528987737, 1528987737, 1, 0, 0, 128, 'textmedia', 'Aufregungen und Motionen der Landesmehrheit', '', '', 'Und so, wie ich meine Halbdunkelkaffeemorgen mit Henning irgendwie mochte, so mochte ich auch die Tierfütterung, denn eins ist mal klar: Wer Tiere gefüttert hat, der hat schon mal etwas Gutes getan, und wenn man das jeden Tag als Erstes macht, dann ist kein Tag mehr umsonst, und so hatte ich das auch Werner erklärt, als der sich darüber beschweren wollte, dass man mir die Extraarbeit aufgedrückt hatte, er war kaum zu beruhigen gewesen, manchmal übertrieb er die Fürsorglichkeit, wir nannten das das Lady-Di-Syndrom, jedenfalls Klaus-Dieter und ich, daran war Astrid schuld, die machte sich schon lange immer Sorgen um Lady Di, weil die sich immer um alles kümmerte und nachts noch die Leute in den Krankenhäusern aufweckte, damit die auch wussten, dass Lady Di sich um sie kümmerte, das beeindruckte und bedrückte Astrid schwer, mehr jedenfalls als das gleiche Verhalten bei Werner, und deshalb sagten Klaus-Dieter und ich immer Lady-Di-Syndrom, wenn Werner die Sache übertrieb, nämlich um Astrid zu ärgern, die es hasste, wenn wir Werner und Lady Di auf eine Stufe stellten, für sie stand Lady Di weit über Werner, bei Klaus-Dieter war es genau umgekehrt, ich war da neutral, mir waren Werner und Lady Di genau gleich lieb. ', 0, 0, 0, 1, 0, 0, 26, 1, 0, 0, 0, 'default', 0, 0, '', '', '', '', 0, 0, 0, '', '', '', 1, '0', '', 1, 0, '', 0, '', '', 0, 0, 0, 0, NULL, '', 0, '', 0, 0x613a313a7b733a363a22617373657473223b4e3b7d, 0, '', '', '', NULL, 124, 0, 0, 0, 12, NULL, 0, 0, 0),
(13, 5, 0, 0, 0, 0, 0, 0, 0, 6, 1528987737, 1528987737, 1, 0, 0, 64, 'textmedia', 'Über den alten Rheinstrom hinaus.', '', '', 'Während aber einige der Städte hartnäckig fortfahren, sich ihres Homers schon bei dessen Lebzeiten versichern zu wollen, hat sich mit dem wirklichen Seldwyla eine solche Veränderung zugetragen, daß sich sein sonst durch Jahrhunderte gleich gebliebener Charakter in weniger als zehn Jahren geändert hat und sich ganz in sein Gegenteil zu verwandeln droht. Oder, wahrer gesagt, hat sich das allgemeine Leben so gestaltet, daß die besonderen Fähigkeiten und Nücken der wackeren Seldwyler sich herrlicher darin entwickeln können, ein günstiges Fahrwasser, ein dankbares Ackerfeld daran haben, auf welchem gerade sie Meister sind, und dadurch zu gelungenen, beruhigten Leuten werden, die sich nicht mehr von der braven übrigen Welt unterscheiden. Es ist insonderlich die überall verbreitete Spekulationsbetätigung in bekannten und unbekannten Werten, welche den Seldwylern ein Feld eröffnet hat, das für sie wie seit Urbeginn geschaffen schien und sie mit einem Schlage Tausenden von ernsthaften Geschäftsleuten gleichstellte. Das gesellschaftliche Besprechen dieser Werte, das Herumspazieren zum Auftrieb eines Geschäftes, mit welchem keine weitere Arbeit verbunden ist als das Erdulden mannigfacher Aufregung, das Eröffnen oder Absenden von Depeschen und hundert ähnliche Dinge, die den Tag ausfüllen, sind so recht ihre Sache. Jeder Seldwyler ist nun ein geborener Agent oder dergleichen, und sie wandern als solche förmlich aus, wie die Engadiner Zuckerbäcker, die Tessiner Gipsarbeiter und die savoyischen Kaminfeger.', 0, 0, 0, 1, 0, 0, 26, 1, 0, 0, 0, 'default', 0, 0, '', '', '', '', 0, 0, 0, '', '', '', 1, '0', '', 1, 0, '', 0, '', '', 0, 0, 0, 0, NULL, '', 0, '', 0, 0x613a313a7b733a363a22617373657473223b4e3b7d, 0, '', '', '', NULL, 124, 0, 0, 0, 13, NULL, 0, 0, 0),
(14, 5, 0, 0, 0, 0, 0, 0, 0, 6, 1528987737, 1528987737, 1, 0, 0, 32, 'textmedia', 'Das milderte schon etwas ihren Groll', '', '', 'In einer so lustigen und seltsamen Stadt kann es an allerhand seltsamen Geschichten und Lebensläufen nicht fehlen, da Müßiggang aller Laster Anfang ist. Doch nicht solche Geschichten, wie sie in dem beschriebenen Charakter von Seldwyla liegen, will ich eigentlich in diesem Büchlein erzählen, sondern einige sonderbare Abfällsel, die so zwischendurch passierten, gewissermaßen ausnahmsweise, und doch auch gerade nur zu Seldwyla vor sich gehen konnten. Pankraz, der Schmoller Romeo und Julia auf dem Dorfe Frau Regel Amrain und ihr Jüngster Die drei gerechten Kammacher Spiegel, das Kätzchen.', 0, 0, 0, 1, 0, 0, 26, 1, 0, 0, 0, 'default', 0, 0, '', '', '', '', 0, 0, 0, '', '', '', 1, '0', '', 1, 0, '', 0, '', '', 0, 0, 0, 0, NULL, '', 0, '', 0, 0x613a313a7b733a363a22617373657473223b4e3b7d, 0, '', '', '', NULL, 124, 0, 0, 0, 14, NULL, 0, 0, 0),
(15, 5, 0, 0, 0, 0, 0, 0, 0, 6, 1528987737, 1528987737, 1, 0, 0, 16, 'textmedia', 'After this, I spent a great deal of time and pains to make an umbrella', '', '', 'I had seen them made in the Brazils, where they are very useful in the great heats there, and I felt the heats every jot as great here, and greater too, being nearer the equinox; besides, as I was obliged to be much abroad, it was a most useful thing to me, as well for the rains as the heats. I took a world of pains with it, and was a great while before I could make anything likely to hold: nay, after I had thought I had hit the way, I spoiled two or three before I made one to my mind: but at last I made one that answered indifferently well: the main difficulty I found was to make it let down. I could make it spread, but if it did not let down too, and draw in, it was not portable for me any way but just over my head, which would not do. However, at last, as I said, I made one to answer, and covered it with skins, the hair upwards, so that it cast off the rain like a pent-house, and kept off the sun so effectually, that I could walk out in the hottest of the weather with greater advantage than I could before in the coolest, and when I had no need of it could close it, and carry it under my arm.', 0, 0, 0, 1, 0, 0, 25, 1, 0, 0, 0, 'default', 0, 0, '', '', '', '', 0, 0, 0, '', '', '', 1, '0', '', 1, 0, '', 0, '', '', 0, 0, 0, 0, NULL, '', 0, '', 0, 0x613a313a7b733a363a22617373657473223b4e3b7d, 0, '', '', '', NULL, 124, 0, 0, 0, 15, NULL, 0, 0, 0),
(16, 4, 0, 0, 0, 0, 0, 0, 0, 2, 1528987737, 1528987737, 1, 0, 0, 256, 'textmedia', 'Tour du Monde sous marin (Premier partie)', '', '', '<h3>Information</h3>\r\nEn effet, le 20 juillet 1866, le steamer Governor-Higginson, de Calcutta and Burnach steam navigation Company, avait&nbsp;rencontré cette masse mouvante à cinq milles dans l\'est des côtes de l\'Australie.\r\n<table summary=\"Tour du Monde sous marin (Premier partie)\"><tbody><tr><td>Governor-Higginson</td><td rowspan=\"1\" colspan=\"2\">&nbsp;</td><td>Telephone</td></tr><tr><td>24&nbsp;Burnach steam navigation</td><td rowspan=\"1\" colspan=\"2\">&nbsp;</td><td>0041 41 321 4455</td></tr><tr><td rowspan=\"1\">Angleterre, Amérique, Allemagne</td><td rowspan=\"1\" colspan=\"2\">&nbsp;</td><td rowspan=\"1\"></td></tr></tbody></table>\r\n\r\nLe capitaine Baker se crut, tout d\'abord, en&nbsp;présence d\'un écueil inconnu ; il se disposait même à en déterminer la situation exacte, quand deux colonnes d\'eau,&nbsp;projetées par l\'inexplicable objet, s\'élancèrent en sifflant à cent cinquante pieds dans l\'air. Donc, à moins que cet écueil ne&nbsp;fût soumis aux expansions intermittentes d\'un geyser, le Governor-Higginson avait affaire bel et bien à quelque mammifère&nbsp;aquatique, inconnu jusque-là, qui rejetait par ses évents des colonnes d\'eau, mélangées d\'air et de vapeur.', 0, 0, 0, 1, 0, 0, 26, 1, 0, 0, 110, 'default', 0, 0, '', '', '', '', 0, 0, 0, '', '', '', 0, '100', '', 1, 0, '', 0, '', '', 0, 0, 0, 0, NULL, '', 0, '', 0, 0x613a313a7b733a363a22617373657473223b4e3b7d, 0, '', '', '', NULL, 124, 0, 0, 0, 16, NULL, 0, 0, 0),
(17, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1528987737, 1528987737, 1, 0, 1, 256, 'textmedia', 'Welcome quote/callout on the landing page', '', '', '<blockquote><p>Single source<br />solutions for<br />your projects</p></blockquote>', 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 'default', 0, 0, '', '', '', '', 0, 0, 0, '', '', '', 0, '100', '', 1, 0, '', 0, '', '', 0, 0, 0, 0, NULL, '', 0, '', 0, 0x613a31373a7b733a353a224354797065223b4e3b733a363a22636f6c506f73223b4e3b733a31363a227379735f6c616e67756167655f756964223b4e3b733a363a22686561646572223b4e3b733a31333a226865616465725f6c61796f7574223b4e3b733a343a2264617465223b4e3b733a31313a226865616465725f6c696e6b223b4e3b733a31343a22726f774465736372697074696f6e223b4e3b733a383a22626f647974657874223b4e3b733a363a22617373657473223b4e3b733a31303a22696d6167655f7a6f6f6d223b4e3b733a363a226c61796f7574223b4e3b733a31313a22696d6167656f7269656e74223b4e3b733a393a22696d616765636f6c73223b4e3b733a363a2268696464656e223b4e3b733a393a22737461727474696d65223b4e3b733a373a22656e6474696d65223b4e3b7d, 0, '', '', '', NULL, 124, 0, 0, 0, 17, NULL, 0, 0, 0);
INSERT INTO `tt_content` (`uid`, `pid`, `t3ver_oid`, `t3ver_wsid`, `t3ver_state`, `t3ver_stage`, `t3ver_count`, `t3ver_tstamp`, `t3ver_move_id`, `t3_origuid`, `tstamp`, `crdate`, `cruser_id`, `editlock`, `hidden`, `sorting`, `CType`, `header`, `header_position`, `rowDescription`, `bodytext`, `bullets_type`, `uploads_description`, `uploads_type`, `assets`, `image`, `imagewidth`, `imageorient`, `imagecols`, `imageborder`, `media`, `layout`, `frame_class`, `deleted`, `cols`, `space_before_class`, `space_after_class`, `records`, `pages`, `starttime`, `endtime`, `colPos`, `subheader`, `fe_group`, `header_link`, `image_zoom`, `header_layout`, `list_type`, `sectionIndex`, `linkToTop`, `file_collections`, `filelink_size`, `filelink_sorting`, `target`, `date`, `recursive`, `imageheight`, `sys_language_uid`, `pi_flexform`, `accessibility_title`, `accessibility_bypass`, `accessibility_bypass_text`, `l18n_parent`, `l18n_diffsource`, `l10n_source`, `selected_categories`, `category_field`, `table_class`, `table_caption`, `table_delimiter`, `table_enclosure`, `table_header_position`, `table_tfoot`, `tx_impexp_origuid`, `l10n_state`, `categories`, `tx_news_related_news`, `filelink_sorting_direction`) VALUES
(18, 4, 0, 0, 0, 0, 0, 0, 0, 0, 1564234261, 1564234244, 1, 0, 0, 512, 'form_formframework', 'Hello!', '', NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 'default', 0, 0, '', '', NULL, NULL, 0, 0, 0, NULL, '0', '', 0, '3', '', 1, 0, NULL, 0, '', '', 0, 0, 0, 0, '<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"settings.persistenceIdentifier\">\n                    <value index=\"vDEF\">1:/generic_lib/Resources/Public/Forms/contactformgeneric_lib.form.yaml</value>\n                </field>\n                <field index=\"settings.overrideFinishers\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>', '', 0, '', 0, 0x613a31333a7b733a353a224354797065223b4e3b733a363a22636f6c506f73223b4e3b733a363a22686561646572223b4e3b733a31333a226865616465725f6c61796f7574223b4e3b733a31353a226865616465725f706f736974696f6e223b4e3b733a31313a226865616465725f6c696e6b223b4e3b733a31313a2270695f666c6578666f726d223b4e3b733a363a226c61796f7574223b4e3b733a31363a227379735f6c616e67756167655f756964223b4e3b733a363a2268696464656e223b4e3b733a393a22737461727474696d65223b4e3b733a373a22656e6474696d65223b4e3b733a31303a2263617465676f72696573223b4e3b7d, 0, NULL, '', '', NULL, 124, 0, 0, 0, 0, NULL, 0, 0, 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `tx_news_domain_model_news`
--

DROP TABLE IF EXISTS `tx_news_domain_model_news`;
CREATE TABLE `tx_news_domain_model_news` (
  `uid` int(11) NOT NULL,
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
  `datetime` bigint(20) NOT NULL DEFAULT '0',
  `archive` bigint(20) NOT NULL DEFAULT '0',
  `author` tinytext COLLATE utf8_unicode_ci,
  `author_email` tinytext COLLATE utf8_unicode_ci,
  `categories` int(11) NOT NULL DEFAULT '0',
  `related` int(11) NOT NULL DEFAULT '0',
  `related_from` int(11) NOT NULL DEFAULT '0',
  `related_files` tinytext COLLATE utf8_unicode_ci,
  `fal_related_files` int(10) UNSIGNED DEFAULT '0',
  `related_links` tinytext COLLATE utf8_unicode_ci,
  `type` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `keywords` text COLLATE utf8_unicode_ci,
  `description` text COLLATE utf8_unicode_ci,
  `tags` int(11) NOT NULL DEFAULT '0',
  `media` text COLLATE utf8_unicode_ci,
  `fal_media` int(10) UNSIGNED DEFAULT '0',
  `internalurl` text COLLATE utf8_unicode_ci,
  `externalurl` text COLLATE utf8_unicode_ci,
  `istopnews` int(11) NOT NULL DEFAULT '0',
  `content_elements` int(11) NOT NULL DEFAULT '0',
  `path_segment` varchar(2048) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alternative_title` tinytext COLLATE utf8_unicode_ci,
  `notes` text COLLATE utf8_unicode_ci,
  `import_id` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `import_source` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `l10n_state` text COLLATE utf8_unicode_ci,
  `l10n_source` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Daten für Tabelle `tx_news_domain_model_news`
--

INSERT INTO `tx_news_domain_model_news` (`uid`, `pid`, `tstamp`, `crdate`, `cruser_id`, `t3ver_oid`, `t3ver_id`, `t3ver_wsid`, `t3ver_label`, `t3ver_state`, `t3ver_stage`, `t3ver_count`, `t3ver_tstamp`, `t3ver_move_id`, `t3_origuid`, `editlock`, `sys_language_uid`, `l10n_parent`, `l10n_diffsource`, `deleted`, `hidden`, `starttime`, `endtime`, `sorting`, `fe_group`, `title`, `teaser`, `bodytext`, `datetime`, `archive`, `author`, `author_email`, `categories`, `related`, `related_from`, `related_files`, `fal_related_files`, `related_links`, `type`, `keywords`, `description`, `tags`, `media`, `fal_media`, `internalurl`, `externalurl`, `istopnews`, `content_elements`, `path_segment`, `alternative_title`, `notes`, `import_id`, `import_source`, `l10n_state`, `l10n_source`) VALUES
(1, 2, 1528987737, 1528987737, 1, 0, 0, 0, '', 0, 0, 0, 0, 0, 9, 0, 0, 0, 'a:2:{s:4:\"tags\";N;s:9:\"fal_media\";N;}', 0, 0, 0, 0, 2560, '', 'Sprache ist Praxis. Sprache an sich existiert nicht', 'Im Begriff des Sprachspiels will Wittgenstein die seiner Meinung nach falsche Trennung von Sprache und Handeln u?berwinden.', 'Sprache ist fu?r ihn ein situativer Funktionszusammenhang, er existiert genau darin und dadurch, dass Menschen handeln. Sprache ist Praxis. Sprache an sich existiert nicht. Verständlich werden Wörter nach Wittgenstein nicht allein aus der gesprochenen oder geschriebenen Sprachstruktur, sondern erst aus dem Ensemble von Situation, Handlungs- und Sprechabsicht, den aussersprachlichen Äusserungen wie Gestik und Mimik sowie dem situativen Handeln. ', 1489341060, 0, '', '', 1, 0, 0, NULL, 0, NULL, '0', '', '', 1, NULL, 1, NULL, NULL, 0, 0, 'sprache-ist-praxis-sprache-an-sich-existiert-nicht', '', NULL, '', '', NULL, 0),
(2, 2, 1528987737, 1528987737, 1, 0, 0, 0, '', 0, 0, 0, 0, 0, 5, 0, 0, 0, 'a:2:{s:4:\"tags\";N;s:9:\"fal_media\";N;}', 0, 0, 0, 0, 2304, '', 'Robinson Crusoe by Daniel Defoe', 'This work did not take me up less than three months, because a great part of that time was the wet season, when I could not go abroad', 'This at length put me upon thinking whether it was not possible to make myself a canoe, or periagua, such as the natives of those climates make, even without tools, or, as I might say, without hands, of the trunk of a great tree. ', 1486146360, 0, '', '', 1, 0, 0, NULL, 0, NULL, '0', '', '', 1, NULL, 1, NULL, NULL, 0, 0, 'robinson-crusoe-by-daniel-defoe', '', NULL, '', '', NULL, 0),
(3, 2, 1528987737, 1528987737, 1, 0, 0, 0, '', 0, 0, 0, 0, 0, 4, 0, 0, 0, 'a:2:{s:4:\"tags\";N;s:9:\"fal_media\";N;}', 0, 0, 0, 0, 2048, '', 'Schulgenossen ', 'Sie war mindestens fünfundvierzig Jahre alt und glich eher einem alten Husaren, als einer Wirtschaftsdame. Sie fluchte wie ein preußischer Wachtmeister, und wenn ihr Missfallen erregt wurde, so gab es ein so gewaltiges Gewitter, dass alles auseinanderfloh und nur der lachende Landvogt standhielt und sich an dem Spektakel ergötzte.', 'Durch alle Rauheit leuchtete dann wieder ihr tiefes Gemüt hervor, wenn sie dem Landvogt, der ihr aufmerksam zuhörte, mit ungebrochener Altstimme eine alte Ballade, ein noch älteres Liebes- oder Jägerlied vorsang, und sie war nicht wenig stolz, wenn der waldhornkundige Herr die schwermütige Melodie bald erlernte und aus dem Schloßfenster über den mondhellen See hinblies. ', 1518803460, 0, '', '', 1, 0, 0, NULL, 0, NULL, '0', '', '', 1, NULL, 1, NULL, NULL, 0, 0, 'schulgenossen', '', NULL, '', '', NULL, 0),
(4, 2, 1528987737, 1528987737, 1, 0, 0, 0, '', 0, 0, 0, 0, 0, 2, 0, 0, 0, 'a:2:{s:4:\"tags\";N;s:9:\"fal_media\";N;}', 0, 0, 0, 0, 1792, '', 'In der Mitte der sich dehnenden Passhöhe', 'Die Reise des Herrn Waser.\r\nIn der Mitte der sich dehnenden Passhöhe standen rechts und links vom Saumpfade zwei abgebrochene Säulen, die der Zeit schon länger als ein Jahrtausend trotzen mochten. In dem durch die Verwitterung beckenförmig ausgehöhlten Bruche des einen Säulenstumpfes hatte sich Regenwasser gesammelt. Ein Vogel hüpfte auf dem Rande hin und her und nippte von dem klaren Himmelswasser.', 'Jetzt erscholl aus der Ferne, vom Echo wiederholt und verhöhnt, das Gebell eines Hundes. Hoch oben an dem stellenweise grasbewachsenen Hange hatte ein Bergamaskerhirt im Mittagsschlafe gelegen. Nun sprang er auf, zog seinen Mantel fest um die Schultern und warf sich in kühnen Schwüngen von einem vorragenden Felsturme hinunter zur Einholung seiner Schafherde, die sich in weißen beweglichen Punkten nach der Tiefe hin verlor. Einer seiner zottigen Hunde setzte ihm nach, der andere, vielleicht ein altes Tier, konnte seinem Herrn nicht folgen. Er stand auf einem Vorsprunge und winselte hilflos. ', 1495147560, 0, 'whiteroom', 'on@kawara.net', 1, 0, 0, NULL, 0, NULL, '0', '', '', 2, NULL, 1, NULL, NULL, 0, 0, 'in-der-mitte-der-sich-dehnenden-passhoehe', '', NULL, '', '', NULL, 0),
(5, 2, 1528987737, 1528987737, 1, 0, 0, 0, '', 0, 0, 0, 0, 0, 2, 0, 0, 0, 'a:2:{s:4:\"tags\";N;s:9:\"fal_media\";N;}', 0, 0, 0, 0, 1536, '', 'Die Reise des Herrn Waser', 'In der Mitte der sich dehnenden Paßhöhe standen rechts und links vom Saumpfade zwei abgebrochene Säulen, die der Zeit schon länger als ein Jahrtausend trotzen mochten. In dem durch die Verwitterung beckenförmig ausgehöhlten Bruche des einen Säulenstumpfes hatte sich Regenwasser gesammelt. Ein Vogel hüpfte auf dem Rande hin und her und nippte von dem klaren Himmelswasser.', 'Jetzt erscholl aus der Ferne, vom Echo wiederholt und verhöhnt, das Gebell eines Hundes. Hoch oben an dem stellenweise grasbewachsenen Hange hatte ein Bergamaskerhirt im Mittagsschlafe gelegen. Nun sprang er auf, zog seinen Mantel fest um die Schultern und warf sich in kühnen Schwüngen von einem vorragenden Felsturme hinunter zur Einholung seiner Schafherde, die sich in weißen beweglichen Punkten nach der Tiefe hin verlor. Einer seiner zottigen Hunde setzte ihm nach, der andere, vielleicht ein altes Tier, konnte seinem Herrn nicht folgen. Er stand auf einem Vorsprunge und winselte hilflos. ', 1491153960, 0, 'whiteroom', 'on@kawara.net', 1, 0, 0, NULL, 0, NULL, '0', '', '', 2, NULL, 1, NULL, NULL, 0, 0, 'die-reise-des-herrn-waser', '', NULL, '', '', NULL, 0),
(6, 2, 1528987737, 1528987737, 1, 0, 0, 0, '', 0, 0, 0, 0, 0, 1, 0, 0, 0, 'a:2:{s:4:\"tags\";N;s:9:\"fal_media\";N;}', 0, 0, 0, 0, 1280, '', 'Robinson Crusoe by Daniel Defoe', 'This at length put me upon thinking whether it was not possible to make myself a canoe.', 'However, considering the heat of the climate, I did not doubt but if I could find out any clay, I might make some pots that might, being dried in the sun, be hard enough and strong enough to bear handling, and to hold anything that was dry, and required to be kept so; and as this was necessary in the preparing corn, meal, which was the thing I was doing, I resolved to make some as large as I could, and fit only to stand like jars, to hold what should be put into them.', 1500655860, 0, '', '', 1, 0, 0, NULL, 0, NULL, '0', '', '', 1, NULL, 1, NULL, NULL, 0, 0, 'robinson-crusoe-by-daniel-defoe', '', NULL, '', '', NULL, 0),
(7, 2, 1528987737, 1528987737, 1, 0, 0, 0, '', 0, 0, 0, 0, 0, 1, 0, 0, 0, 'a:2:{s:4:\"tags\";N;s:9:\"fal_media\";N;}', 0, 0, 0, 0, 1024, '', 'On Kawara Dreiunddreissig', 'This work did not take me up less than three months, because a great part of that time was the wet season, when I could not go abroad', 'This at length put me upon thinking whether it was not possible to make myself a canoe, or periagua, such as the natives of those climates make, even without tools, or, as I might say, without hands, of the trunk of a great tree. ', 1475859060, 0, '', '', 1, 0, 0, NULL, 0, NULL, '0', '', '', 1, NULL, 1, NULL, NULL, 0, 0, 'on-kawara-dreiunddreissig', '', NULL, '', '', NULL, 0),
(8, 2, 1528987737, 1528987737, 1, 0, 0, 0, '', 0, 0, 0, 0, 0, 1, 0, 0, 0, 'a:2:{s:4:\"tags\";N;s:9:\"fal_media\";N;}', 0, 0, 0, 0, 768, '', 'This work did not take me up less than three months', 'This work did not take me up less than three months, because a great part of that time was the wet season, when I could not go abroad', 'This at length put me upon thinking whether it was not possible to make myself a canoe, or periagua, such as the natives of those climates make, even without tools, or, as I might say, without hands, of the trunk of a great tree. ', 1483379460, 0, '', '', 1, 0, 0, NULL, 0, NULL, '0', '', '', 1, NULL, 1, NULL, NULL, 0, 0, 'this-work-did-not-take-me-up-less-than-three-months', '', NULL, '', '', NULL, 0),
(9, 2, 1528987737, 1528987737, 1, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 'a:2:{s:4:\"tags\";N;s:9:\"fal_media\";N;}', 0, 0, 0, 0, 512, '', 'Les canards eurent là une belle occasion de pondre des oeufs de toute couleur.', 'Nous avons été informé par Mr. Verne que vous n\'aviez pas encore payé l\'article que vous lui avez acheté. Cela fait déjà 21 jours que l\'offre est terminée. Nous vous rappelons que, comme stipulé dans nos Conditions Générales, le fait de miser ou d\'acheter un article sur le marché de la ville de paris est contractuel.', 'Les faits relatifs à cette apparition, consignés aux divers livres de bord, s\'accordaient assez exactement sur la structure de l\'objet ou de l\'être en question, la vitesse inouïe de ses mouvements, la puissance surprenante de sa locomotion, la vie particulière dont il semblait doué. Si c\'était un cétacé, il surpassait en volume tous ceux que la science avait classés jusqu\'alors. Ni Cuvier, ni Lacépède, ni M. Dumeril, ni M. de Quatrefages n\'eussent admis l\'existence d\'un tel monstre — à moins de l\'avoir vu, ce qui s\'appelle vu de leurs propres yeux de savants. ', 1493379460, 0, 'whiteroom', 'on@kawara.net', 1, 0, 0, NULL, 0, NULL, '0', '', '', 2, NULL, 1, NULL, NULL, 0, 0, 'les-canards-eurent-la-une-belle-occasion-de-pondre-des-oeufs-de-toute-couleur', '', NULL, '', '', NULL, 0),
(10, 2, 1528987737, 1528987737, 1, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 'a:2:{s:4:\"tags\";N;s:9:\"fal_media\";N;}', 0, 0, 0, 0, 0, '', 'Erstes Buch, erstes Kapitel: Die Reise des Herrn Waser ', 'Die Mittagssonne stand über der kahlen, von Felshäuptern umragten Höhe des Julierpasses im Lande Bünden.', 'Hoch oben an dem stellenweise grasbewachsenen Hange hatte ein Bergamaskerhirt im Mittagsschlafe gelegen. Nun sprang er auf, zog seinen Mantel fest um die Schultern und warf sich in kühnen Schwüngen von einem vorragenden Felsturme hinunter zur Einholung seiner Schafherde, die sich in weißen beweglichen Punkten nach der Tiefe hin verlor. Einer seiner zottigen Hunde setzte ihm nach, der andere, vielleicht ein altes Tier, konnte seinem Herrn nicht folgen. Er stand auf einem Vorsprunge und winselte hilflos. ', 1483379485, 0, '', '', 1, 0, 0, NULL, 0, NULL, '0', '', '', 1, NULL, 1, NULL, NULL, 0, 0, 'erstes-buch-erstes-kapitel-die-reise-des-herrn-waser', '', NULL, '', '', NULL, 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `tx_news_domain_model_news_tag_mm`
--

DROP TABLE IF EXISTS `tx_news_domain_model_news_tag_mm`;
CREATE TABLE `tx_news_domain_model_news_tag_mm` (
  `uid_local` int(11) NOT NULL DEFAULT '0',
  `uid_foreign` int(11) NOT NULL DEFAULT '0',
  `sorting` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Daten für Tabelle `tx_news_domain_model_news_tag_mm`
--

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

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `tx_news_domain_model_tag`
--

DROP TABLE IF EXISTS `tx_news_domain_model_tag`;
CREATE TABLE `tx_news_domain_model_tag` (
  `uid` int(11) NOT NULL,
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
  `l10n_source` int(11) NOT NULL DEFAULT '0',
  `l10n_state` text COLLATE utf8_unicode_ci,
  `slug` varchar(2048) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Daten für Tabelle `tx_news_domain_model_tag`
--

INSERT INTO `tx_news_domain_model_tag` (`uid`, `pid`, `tstamp`, `crdate`, `cruser_id`, `sorting`, `deleted`, `hidden`, `sys_language_uid`, `l10n_parent`, `l10n_diffsource`, `t3ver_oid`, `t3ver_id`, `t3_origuid`, `t3ver_wsid`, `t3ver_label`, `t3ver_state`, `t3ver_stage`, `t3ver_count`, `t3ver_tstamp`, `t3ver_move_id`, `title`, `seo_title`, `seo_description`, `seo_headline`, `seo_text`, `notes`, `l10n_source`, `l10n_state`, `slug`) VALUES
(1, 1, 1528987737, 1528987737, 1, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 'Video', '', '', '', '', NULL, 0, NULL, 'video'),
(2, 1, 1528987737, 1528987737, 1, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 'Publikation', '', '', '', '', NULL, 0, NULL, 'publikation'),
(3, 1, 1528987737, 1528987737, 1, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 'Audio', '', '', '', '', NULL, 0, NULL, 'audio');