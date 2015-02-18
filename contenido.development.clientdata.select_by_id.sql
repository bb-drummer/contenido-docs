--
-- select CONTENIDO client data by client-id
--
-- @package		CONTENIDO development
-- @subpackage	CONTENIDO SQL statments
-- @version		CONTENIDO 4.8.15
--
-- @author		Björn Bartels, [dragon-projects.net] <info@dragon-projects.net>
--

-- special P.AD. module/plugin tables
SELECT `con_multisite_sync_art_lang`.* FROM `con_multisite_sync_art_lang` JOIN `con_art_lang` ON (`con_art_lang`.`idartlang` = `con_multisite_sync_art_lang`.`idsource`) OR (`con_art_lang`.`idartlang` = `con_multisite_sync_art_lang`.`idtarget`) JOIN `con_art` ON `con_art`.`idart` = `con_art_lang`.`idart` WHERE `con_art`.`idclient` <> '{IDCLIENT}';
SELECT `con_jekyll_artlang`.* FROM `con_jekyll_artlang` JOIN `con_art_lang` ON `con_art_lang`.`idartlang` = `con_jekyll_artlang`.`idartlang` JOIN `con_art` ON `con_art`.`idart` = `con_art_lang`.`idart` WHERE `con_art`.`idclient` <> '{IDCLIENT}';
SELECT `con_jekyll`.* FROM `con_jekyll` WHERE `con_jekyll`.`idclient` = '{IDCLIENT}';
SELECT `con_stellenangebote`.* FROM `con_stellenangebote` WHERE `con_stellenangebote`.`idclient` = '{IDCLIENT}';

-- client's article data
SELECT `con_meta_tag`.* FROM `con_meta_tag` JOIN `con_art_lang` ON `con_art_lang`.`idartlang` = `con_meta_tag`.`idartlang` JOIN `con_art` ON `con_art`.`idart` = `con_art_lang`.`idart` WHERE `con_art`.`idclient` = '{IDCLIENT}';
SELECT `con_link`.* FROM `con_link` JOIN `con_art_lang` ON `con_art_lang`.`idartlang` = `con_link`.`idartlang` JOIN `con_art` ON `con_art`.`idart` = `con_art_lang`.`idart` WHERE `con_art`.`idclient` = '{IDCLIENT}';
SELECT `con_content`.* FROM `con_content` JOIN `con_art_lang` ON `con_art_lang`.`idartlang` = `con_content`.`idartlang` JOIN `con_art` ON `con_art`.`idart` = `con_art_lang`.`idart` WHERE `con_art`.`idclient` = '{IDCLIENT}';
SELECT `con_art_lang_vererbung`.* FROM `con_art_lang_vererbung` JOIN `con_art_lang` ON `con_art_lang`.`idartlang` = `con_art_lang_vererbung`.`idartlang` JOIN `con_art` ON `con_art`.`idart` = `con_art_lang`.`idart` WHERE `con_art`.`idclient` = '{IDCLIENT}';
SELECT `con_art_lang_download`.* FROM `con_art_lang_download` JOIN `con_art_lang` ON `con_art_lang`.`idartlang` = `con_art_lang_download`.`idartlang` JOIN `con_art` ON `con_art`.`idart` = `con_art_lang`.`idart` WHERE `con_art`.`idclient` = '{IDCLIENT}';
SELECT `con_art_lang`.* FROM `con_art_lang` JOIN `con_art` ON `con_art`.`idart` = `con_art_lang`.`idart` WHERE `con_art`.`idclient` = '{IDCLIENT}';
SELECT `con_art_spec`.* FROM `con_art_spec` WHERE `con_art_spec`.`client` = '{IDCLIENT}';
SELECT `con_art`.* FROM `con_art` WHERE `con_art`.`idclient` = '{IDCLIENT}';
-- acticle config
SELECT `con_template_conf`.* FROM `con_template_conf` JOIN `con_art_lang` ON `con_art_lang`.`idtplcfg` = `con_template_conf`.`idtplcfg` JOIN `con_art` ON `con_art`.`idart` = `con_art_lang`.`idart` WHERE `con_art`.`idclient` = '{IDCLIENT}';

-- client's category data
SELECT `con_cat_art`.* FROM `con_cat_art` JOIN `con_cat` ON `con_cat`.`idcat` = `con_cat_art`.`idcat` WHERE `con_cat`.`idclient` = '{IDCLIENT}';
SELECT `con_cat_lang`.* FROM `con_cat_lang` JOIN `con_cat` ON `con_cat`.`idcat` = `con_cat_lang`.`idcat` WHERE `con_cat`.`idclient` = '{IDCLIENT}';
SELECT `con_cat_tree`.* FROM `con_cat_tree` JOIN `con_cat` ON `con_cat`.`idcat` = `con_cat_tree`.`idcat` WHERE `con_cat`.`idclient` = '{IDCLIENT}';
SELECT `con_cat`.* FROM `con_cat` WHERE `con_cat`.`idclient` = '{IDCLIENT}';
-- category config
SELECT `con_template_conf`.* FROM `con_template_conf` JOIN `con_cat_lang` ON `con_cat_lang`.`idtplcfg` = `con_template_conf`.`idtplcfg` JOIN `con_cat` ON `con_cat`.`idcat` = `con_cat_lang`.`idcat` WHERE `con_cat`.`idclient` = '{IDCLIENT}';

-- client's layout and template data
-- category config
SELECT `con_template_conf`.* FROM `con_template_conf` JOIN `con_art_lang` ON `con_art_lang`.`idtplcfg` = `con_template_conf`.`idtplcfg` JOIN `con_art` ON `con_art`.`idart` = `con_art_lang`.`idart` WHERE `con_art`.`idclient` = '{IDCLIENT}';
-- article config
SELECT `con_template_conf`.* FROM `con_template_conf` JOIN `con_cat_lang` ON `con_cat_lang`.`idtplcfg` = `con_template_conf`.`idtplcfg` JOIN `con_cat` ON `con_cat`.`idcat` = `con_cat_lang`.`idcat` WHERE `con_cat`.`idclient` = '{IDCLIENT}';
-- all config
SELECT `con_container_conf`.* FROM `con_container_conf` JOIN `con_template_conf` ON `con_template_conf`.`idtplcfg` = `con_container_conf`.`idtplcfg` JOIN `con_template` ON `con_template`.`idtpl` = `con_template_conf`.`idtpl` JOIN `con_lay` ON `con_lay`.`idlay` = `con_template`.`idlay` WHERE `con_lay`.`idclient` = '{IDCLIENT}';
SELECT `con_template_conf`.* FROM `con_template_conf` JOIN `con_template` ON `con_template`.`idtpl` = `con_template_conf`.`idtpl` JOIN `con_lay` ON `con_lay`.`idlay` = `con_template`.`idlay` WHERE `con_lay`.`idclient` = '{IDCLIENT}';
SELECT `con_container`.* FROM `con_container` JOIN `con_template` ON `con_template`.`idtpl` = `con_container`.`idtpl` JOIN `con_lay` ON `con_lay`.`idlay` = `con_template`.`idlay` WHERE `con_lay`.`idclient` = '{IDCLIENT}';
SELECT `con_template`.* FROM `con_template` JOIN `con_lay` ON `con_lay`.`idlay` = `con_template`.`idlay` WHERE `con_lay`.`idclient` = '{IDCLIENT}';
SELECT `con_lay`.* FROM `con_lay` WHERE `con_lay`.`idclient` = '{IDCLIENT}';

-- client's js, css and html(template) file data
SELECT `con_file_information`.* FROM `con_file_information` WHERE `con_file_information`.`idclient` = '{IDCLIENT}';

-- client's module data
SELECT `con_mod_translations`.* FROM `con_mod_translations` JOIN `con_mod` ON `con_mod`.`idmod` = `con_mod_translations`.`idmod` WHERE `con_mod`.`idclient` = '{IDCLIENT}';
SELECT `con_mod`.* FROM `con_mod` WHERE `con_mod`.`idclient` = '{IDCLIENT}';

-- client's file management data
SELECT `con_upl_meta`.* FROM `con_upl_meta` JOIN `con_upl` ON `con_upl`.`idupl` = `con_upl_meta`.`idupl` WHERE `con_upl`.`idclient` = '{IDCLIENT}';
SELECT `con_upl`.* FROM `con_upl` WHERE `con_upl`.`idclient` = '{IDCLIENT}';
SELECT `con_dbfs`.* FROM `con_dbfs` WHERE `con_dbfs`.`idclient` = '{IDCLIENT}';

-- client's newsletter plugin data
SELECT `con_news_groupmembers`.* FROM `con_news_groupmembers` JOIN `con_news_groups` ON `con_news_groups`.`idnewsgroup` = `con_news_groupmembers`.`idnewsgroup` WHERE `con_news_groups`.`idclient` = '{IDCLIENT}';
SELECT `con_news_groups`.* FROM `con_news_groups` WHERE `con_news_groups`.`idclient` = '{IDCLIENT}';
SELECT `con_news_rcp`.* FROM `con_news_rcp` WHERE `con_news_rcp`.`idclient` = '{IDCLIENT}';
SELECT `con_news_jobs`.* FROM `con_news_jobs` WHERE `con_news_jobs`.`idclient` = '{IDCLIENT}';
SELECT `con_news`.* FROM `con_news` WHERE `con_news`.`idclient` = '{IDCLIENT}';

-- client's frontend-user plugin data
SELECT `con_frontendgroupmembers`.* FROM `con_frontendgroupmembers` JOIN `con_frontendgroups` ON `con_frontendgroups`.`idfrontendgroup` = `con_frontendgroupmembers`.`idfrontendgroup` WHERE `con_frontendgroups`.`idclient` = '{IDCLIENT}';
SELECT `con_frontendgroups`.* FROM `con_frontendgroups`WHERE `con_frontendgroups`.`idclient` = '{IDCLIENT}';
SELECT `con_frontendusers`.* FROM `con_frontendusers` WHERE `con_frontendusers`.`idclient` = '{IDCLIENT}';

-- client's language data
SELECT `con_lang`.* FROM `con_lang` JOIN `con_clients_lang` ON `con_clients_lang`.`idlang` = `con_lang`.`idlang` WHERE `con_clients_lang`.`idclient` = '{IDCLIENT}';
SELECT `con_clients_lang`.* FROM `con_clients_lang` WHERE `con_clients_lang`.`idclient` = '{IDCLIENT}';

-- client's system data
SELECT `con_stat_archive`.* FROM `con_stat_archive` WHERE `con_stat_archive`.`idclient` = '{IDCLIENT}';
SELECT `con_stat`.* FROM `con_stat` WHERE `con_stat`.`idclient` = '{IDCLIENT}';
SELECT `con_properties`.* FROM `con_properties` WHERE `con_properties`.`idclient` = '{IDCLIENT}';
SELECT `con_frontendusers`.* FROM `con_frontendusers` WHERE `con_frontendusers`.`idclient` = '{IDCLIENT}';
SELECT `con_data`.* FROM `con_data` WHERE `con_data`.`idclient` = '{IDCLIENT}';
SELECT `con_communications`.* FROM `con_communications` WHERE `con_communications`.`idclient` = '{IDCLIENT}';
SELECT `con_code`.* FROM `con_code` WHERE `con_code`.`idclient` = '{IDCLIENT}';
SELECT `con_config_client`.* FROM `con_config_client` WHERE `con_config_client`.`idclient` = '{IDCLIENT}';
SELECT `con_actionlog`.* FROM `con_actionlog` WHERE `con_actionlog`.`idclient` = '{IDCLIENT}';

-- the client's main record itself
SELECT `con_clients`.* FROM `con_clients` WHERE `con_clients`.`idclient` = '{IDCLIENT}';
