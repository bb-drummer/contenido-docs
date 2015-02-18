--
-- optimize CONTENIDO database tables
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

-- clean all active sessions
TRUNCATE TABLE `con_phplib_active_sessions`;
-- clean all current "article in use BY..." states
TRUNCATE TABLE `con_inuse`;

-- mySQL table clean up
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

