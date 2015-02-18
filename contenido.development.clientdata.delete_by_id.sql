--
-- remove CONTENIDO client data from database tables by client-id
--
-- !!! ATTENTION !!!
-- Used wrong, this could leave your CONTENIDO installation inoperable ! 
-- USE WITH EXTREME CAUTION !!!
--
-- @package		CONTENIDO development
-- @subpackage	CONTENIDO SQL statments
-- @version		CONTENIDO 4.8.15
--
-- @author		Björn Bartels, [dragon-projects.net] <info@dragon-projects.net>
--

-- special P.AD. module/plugin tables
DELETE `con_multisite_sync_art_lang` FROM `con_multisite_sync_art_lang` JOIN `con_art_lang` ON (`con_art_lang`.`idartlang` = `con_multisite_sync_art_lang`.`idsource`) OR (`con_art_lang`.`idartlang` = `con_multisite_sync_art_lang`.`idtarget`) JOIN `con_art` ON `con_art`.`idart` = `con_art_lang`.`idart` WHERE `con_art`.`idclient` <> '{IDCLIENT}';
DELETE `con_jekyll_artlang` FROM `con_jekyll_artlang` JOIN `con_art_lang` ON `con_art_lang`.`idartlang` = `con_jekyll_artlang`.`idartlang` JOIN `con_art` ON `con_art`.`idart` = `con_art_lang`.`idart` WHERE `con_art`.`idclient` <> '{IDCLIENT}';
DELETE `con_jekyll` FROM `con_jekyll` JOIN `con_art_lang` ON `con_art_lang`.`idartlang` = `con_jekyll`.`idartlang` JOIN `con_art` ON `con_art`.`idart` = `con_art_lang`.`idart` WHERE `con_art`.`idclient` <> '{IDCLIENT}';
DELETE `con_stellenangebote` FROM `con_stellenangebote` WHERE `con_stellenangebote`.`idclient` = '{IDCLIENT}';

-- client's article data
DELETE `con_meta_tag` FROM `con_meta_tag` JOIN `con_art_lang` ON `con_art_lang`.`idartlang` = `con_meta_tag`.`idartlang` JOIN `con_art` ON `con_art`.`idart` = `con_art_lang`.`idart` WHERE `con_art`.`idclient` = '{IDCLIENT}';
DELETE `con_link` FROM `con_link` JOIN `con_art_lang` ON `con_art_lang`.`idartlang` = `con_link`.`idartlang` JOIN `con_art` ON `con_art`.`idart` = `con_art_lang`.`idart` WHERE `con_art`.`idclient` = '{IDCLIENT}';
DELETE `con_content` FROM `con_content` JOIN `con_art_lang` ON `con_art_lang`.`idartlang` = `con_content`.`idartlang` JOIN `con_art` ON `con_art`.`idart` = `con_art_lang`.`idart` WHERE `con_art`.`idclient` = '{IDCLIENT}';
DELETE `con_art_lang_vererbung` FROM `con_art_lang_vererbung` JOIN `con_art_lang` ON `con_art_lang`.`idartlang` = `con_art_lang_vererbung`.`idartlang` JOIN `con_art` ON `con_art`.`idart` = `con_art_lang`.`idart` WHERE `con_art`.`idclient` = '{IDCLIENT}';
DELETE `con_art_lang_download` FROM `con_art_lang_download` JOIN `con_art_lang` ON `con_art_lang`.`idartlang` = `con_art_lang_download`.`idartlang` JOIN `con_art` ON `con_art`.`idart` = `con_art_lang`.`idart` WHERE `con_art`.`idclient` = '{IDCLIENT}';
DELETE `con_art_lang` FROM `con_art_lang` JOIN `con_art` ON `con_art`.`idart` = `con_art_lang`.`idart` WHERE `con_art`.`idclient` = '{IDCLIENT}';
DELETE `con_art_spec` FROM `con_art_spec` WHERE `con_art_spec`.`client` = '{IDCLIENT}';
DELETE `con_art` FROM `con_art` WHERE `con_art`.`idclient` = '{IDCLIENT}';

-- client's category data
DELETE `con_cat_lang` FROM `con_cat_lang` JOIN `con_cat` ON `con_cat`.`idcat` = `con_cat_lang`.`idcat` WHERE `con_cat`.`idclient` = '{IDCLIENT}';
DELETE `con_cat_tree` FROM `con_cat_tree` JOIN `con_cat` ON `con_cat`.`idcat` = `con_cat_tree`.`idcat` WHERE `con_cat`.`idclient` = '{IDCLIENT}';
DELETE `con_cat_art` FROM `con_cat_art` JOIN `con_cat` ON `con_cat`.`idcat` = `con_cat_art`.`idcat` WHERE `con_cat`.`idclient` = '{IDCLIENT}';
DELETE `con_cat` FROM `con_cat` WHERE `con_cat`.`idclient` = '{IDCLIENT}';

-- client's layout and template data
DELETE `con_container_conf` FROM `con_container_conf` JOIN `con_template_conf` ON `con_template_conf`.`idtplcfg` = `con_container_conf`.`idtplcfg` JOIN `con_template` ON `con_template`.`idtpl` = `con_template_conf`.`idtpl` JOIN `con_lay` ON `con_lay`.`idlay` = `con_template`.`idlay` WHERE `con_lay`.`idclient` = '{IDCLIENT}';
DELETE `con_template_conf` FROM `con_template_conf` JOIN `con_template` ON `con_template`.`idtpl` = `con_template_conf`.`idtpl` JOIN `con_lay` ON `con_lay`.`idlay` = `con_template`.`idlay` WHERE `con_lay`.`idclient` = '{IDCLIENT}';
DELETE `con_container` FROM `con_container` JOIN `con_template` ON `con_template`.`idtpl` = `con_container`.`idtpl` JOIN `con_lay` ON `con_lay`.`idlay` = `con_template`.`idlay` WHERE `con_lay`.`idclient` = '{IDCLIENT}';
DELETE `con_template` FROM `con_template` JOIN `con_lay` ON `con_lay`.`idlay` = `con_template`.`idlay` WHERE `con_lay`.`idclient` = '{IDCLIENT}';
DELETE `con_lay` FROM `con_lay` WHERE `con_lay`.`idclient` = '{IDCLIENT}';

-- client's module data
DELETE `con_mod_translations` FROM `con_mod_translations` JOIN `con_mod` ON `con_mod`.`idmod` = `con_mod_translations`.`idmod` WHERE `con_mod`.`idclient` = '{IDCLIENT}';
DELETE `con_mod` FROM `con_mod` WHERE `con_mod`.`idclient` = '{IDCLIENT}';

-- client's js, css and html(template) file data
DELETE `con_file_information` FROM `con_file_information` WHERE `con_file_information`.`idclient` = '{IDCLIENT}';

-- client's file management data
DELETE `con_upl_meta` FROM `con_upl_meta` JOIN `con_upl` ON `con_upl`.`idupl` = `con_upl_meta`.`idupl` WHERE `con_upl`.`idclient` = '{IDCLIENT}';
DELETE `con_upl` FROM `con_upl` WHERE `con_upl`.`idclient` = '{IDCLIENT}';
DELETE `con_dbfs` FROM `con_dbfs` WHERE `con_dbfs`.`idclient` = '{IDCLIENT}';
-- 'con_upl' could also be truncated (all meta-data will also be removed), since CONTENIDO re-scans the upload dir if folder's content does not match the one stored in the upload table
-- TRUNCATE TABLE `con_upl`; TRUNCATE TABLE `con_upl_meta`;

-- client's newsletter plugin data
DELETE `con_news_groupmembers` FROM `con_news_groupmembers` JOIN `con_news_groups` ON `con_news_groups`.`idnewsgroup` = `con_news_groupmembers`.`idnewsgroup` WHERE `con_news_groups`.`idclient` = '{IDCLIENT}';
DELETE `con_news_groups` FROM `con_news_groups` WHERE `con_news_groups`.`idclient` = '{IDCLIENT}';
DELETE `con_news_rcp` FROM `con_news_rcp` WHERE `con_news_rcp`.`idclient` = '{IDCLIENT}';
DELETE `con_news_jobs` FROM `con_news_jobs` WHERE `con_news_jobs`.`idclient` = '{IDCLIENT}';
DELETE `con_news` FROM `con_news` WHERE `con_news`.`idclient` = '{IDCLIENT}';

-- client's frontend-user plugin data
DELETE `con_frontendgroupmembers` FROM `con_frontendgroupmembers` JOIN `con_frontendgroups` ON `con_frontendgroups`.`idfrontendgroup` = `con_frontendgroupmembers`.`idfrontendgroup` WHERE `con_frontendgroups`.`idclient` = '{IDCLIENT}';
DELETE `con_table` FROM `con_frontendgroups`WHERE `con_frontendgroups`.`idclient` = '{IDCLIENT}';
DELETE `con_frontendgroups` FROM `con_frontendusers` WHERE `con_frontendusers`.`idclient` = '{IDCLIENT}';

-- client's language data
DELETE `con_keywords` FROM `con_keywords` JOIN `con_clients_lang` ON `con_clients_lang`.`idlang` = `con_keywords`.`idlang` WHERE `con_clients_lang`.`idclient` = '{IDCLIENT}';
DELETE `con_lang` FROM `con_lang` JOIN `con_clients_lang` ON `con_clients_lang`.`idlang` = `con_lang`.`idlang` WHERE `con_clients_lang`.`idclient` = '{IDCLIENT}';
DELETE `con_clients_lang` FROM `con_clients_lang` WHERE `con_clients_lang`.`idclient` = '{IDCLIENT}';

-- client's system data
DELETE `con_stat_archive` FROM `con_stat_archive` WHERE `con_stat_archive`.`idclient` = '{IDCLIENT}';
DELETE `con_stat` FROM `con_stat` WHERE `con_stat`.`idclient` = '{IDCLIENT}';
DELETE `con_properties` FROM `con_properties` WHERE `con_properties`.`idclient` = '{IDCLIENT}';
DELETE `con_data` FROM `con_data` WHERE `con_data`.`idclient` = '{IDCLIENT}';
DELETE `con_communications` FROM `con_communications` WHERE `con_communications`.`idclient` = '{IDCLIENT}';
DELETE `con_code` FROM `con_code` WHERE `con_code`.`idclient` = '{IDCLIENT}';
DELETE `con_config_client` FROM `con_config_client` WHERE `con_config_client`.`idclient` = '{IDCLIENT}';
DELETE `con_actionlog` FROM `con_actionlog` WHERE `con_actionlog`.`idclient` = '{IDCLIENT}';
DELETE `con_rights` FROM `con_rights` WHERE `con_rights`.`idclient` = '{IDCLIENT}';

-- the client's main record itself
DELETE `con_clients` FROM `con_clients` WHERE `con_clients`.`idclient` = '{IDCLIENT}';

-- clean up active sessions
TRUNCATE TABLE `con_phplib_active_sessions`;
TRUNCATE TABLE `con_inuse`;

-- optimzing tables, remove table overhead
OPTIMIZE TABLE 
	`con_actionlog`, `con_actions`, `con_area`, `con_art`, `con_art_lang`, `con_art_lang_download`, `con_art_lang_vererbung`, `con_art_spec`, 
	`con_cat`, `con_cat_art`, `con_cat_lang`, `con_cat_tree`, `con_chartable`, `con_clients`, `con_clients_lang`, `con_code`, `con_communications`, `con_config`, `con_config_client`, `con_container`, `con_container_conf`, `con_content`, 
	`con_data`, `con_dbfs`, 
	`con_files`, `con_file_information`, `con_frame_files`, `con_frontendgroupmembers`, `con_frontendgroups`, `con_frontendpermissions`, `con_frontendusers`, 
	`con_groupmembers`, `con_groups`, `con_group_prop`, 
	`con_inuse`, 
	`con_keywords`, 
	`con_lang`, `con_lay`, `con_link`, 
	`con_meta_tag`, `con_meta_type`, `con_mod`, `con_mod_translations`, 
	`con_nav_main`, `con_nav_sub`, `con_news`, `con_news_groupmembers`, `con_news_groups`, `con_news_jobs`, `con_news_log`, `con_news_rcp`, 
	`con_online_user`, 
	`con_phplib_active_sessions`, `con_phplib_auth_user_md5`, `con_pica_alloc`, `con_pica_alloc_con`, `con_pica_lang`, `con_piwf_actions`, `con_piwf_allocation`, `con_piwf_art_allocation`, `con_piwf_items`, `con_piwf_user_sequences`, `con_piwf_workflow`, `con_pi_linkwhitelist`, `con_plugins`, `con_plugins_20120109`, `con_properties`, 
	`con_rights`, 
	`con_sequence`, `con_stat`, `con_status`, `con_stat_archive`, `con_system_prop`, 
	`con_template`, `con_template_conf`, `con_type`, 
	`con_upl`, `con_upl_meta`, `con_user_prop`, 
	
	`con_stellenangebote`, 
	`con_jekyll`, `con_jekyll_artlang`,
	`con_multisite_sync_art_lang`
;

