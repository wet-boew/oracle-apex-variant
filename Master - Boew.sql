set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- ORACLE Application Express (APEX) export file
--
-- You should run the script connected to SQL*Plus as the Oracle user
-- APEX_050000 or as the owner (parsing schema) of the application.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_api.import_begin (
 p_version_yyyy_mm_dd=>'2013.01.01'
,p_release=>'5.0.3.00.03'
,p_default_workspace_id=>2268623362157282
,p_default_application_id=>998
,p_default_owner=>'POC'
);
end;
/
prompt --application/set_environment
 
prompt APPLICATION 998 - Master - BOEW
--
-- Application Export:
--   Application:     998
--   Name:            Master - BOEW
--   Date and Time:   15:27 Friday January 27, 2017
--   Exported By:     BELANMA0
--   Flashback:       0
--   Export Type:     Application Export
--   Version:         5.0.3.00.03
--   Instance ID:     63129712073722
--

-- Application Statistics:
--   Pages:                      2
--     Regions:                  8
--     Dynamic Actions:          1
--   Shared Components:
--     Logic:
--       Items:                  1
--       Computations:           1
--     Navigation:
--       Lists:                  8
--       Breadcrumbs:            1
--         Entries:              1
--     Security:
--       Authentication:         1
--     User Interface:
--       Themes:                 1
--       Templates:
--         Page:                 4
--         Region:              12
--         Label:                5
--         List:                10
--         Popup LOV:            1
--         Calendar:             1
--         Breadcrumb:           1
--         Button:               1
--         Report:               2
--     Globalization:
--       Messages:               6
--     Reports:
--   Supporting Objects:  Included

prompt --application/delete_application
begin
wwv_flow_api.remove_flow(wwv_flow.g_flow_id);
end;
/
prompt --application/ui_types
begin
null;
end;
/
prompt --application/create_application
begin
wwv_flow_api.create_flow(
 p_id=>wwv_flow.g_flow_id
,p_display_id=>nvl(wwv_flow_application_install.get_application_id,998)
,p_owner=>nvl(wwv_flow_application_install.get_schema,'POC')
,p_name=>nvl(wwv_flow_application_install.get_application_name,'Master - BOEW')
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'998')
,p_application_group=>61531010897645026
,p_application_group_name=>'[Maxime]'
,p_page_view_logging=>'YES'
,p_page_protection_enabled_y_n=>'N'
,p_checksum_salt=>'2EF51444DD573C61805687582DBA41A50C9B6F3E0E729BBA5361E6D3771F386B'
,p_bookmark_checksum_function=>'MD5'
,p_max_session_length_sec=>0
,p_max_session_idle_sec=>0
,p_compatibility_mode=>'5.0'
,p_flow_language=>'fr-ca'
,p_flow_language_derived_from=>'SESSION'
,p_date_format=>'YYYY-MM-DD'
,p_date_time_format=>'YYYY-MM-DD HH24:MI'
,p_flow_image_prefix => nvl(wwv_flow_application_install.get_image_prefix,'')
,p_authentication=>'PLUGIN'
,p_authentication_id=>wwv_flow_api.id(83208348240165357)
,p_application_tab_set=>0
,p_logo_image=>'TEXT:&APP_TITLE_PAGE.'
,p_public_user=>'APEX_PUBLIC_USER'
,p_proxy_server=> nvl(wwv_flow_application_install.get_proxy,'')
,p_flow_version=>'4.0.23'
,p_flow_status=>'AVAILABLE_W_EDIT_LINK'
,p_flow_unavailable_text=>'This application is currently unavailable at this time.'
,p_exact_substitutions_only=>'Y'
,p_browser_cache=>'N'
,p_browser_frame=>'D'
,p_deep_linking=>'Y'
,p_vpd=>'pkg_poc_boew.p_init_lang'
,p_rejoin_existing_sessions=>'P'
,p_csv_encoding=>'Y'
,p_auto_time_zone=>'N'
,p_default_error_display_loc=>'INLINE_IN_NOTIFICATION'
,p_substitution_string_01=>'WET_BOEW_PATH'
,p_substitution_value_01=>'/i/wet-boew/'
,p_substitution_string_02=>'THEME_PATH'
,p_substitution_value_02=>'/i/theme-gcwu-fegc/'
,p_substitution_string_03=>'APP_DATE_MODIFIED'
,p_substitution_value_03=>'2017-01-19'
,p_substitution_string_04=>'APP_AJAX_MENU_FR'
,p_substitution_value_04=>'/i/dec-ced/menu_fra_wet4.html'
,p_substitution_string_05=>'APP_AJAX_MENU_EN'
,p_substitution_value_05=>'/i/dec-ced/menu_eng_wet4.html'
,p_last_updated_by=>'BELANMA0'
,p_last_upd_yyyymmddhh24miss=>'20170127152616'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_files_version=>1669
,p_ui_type_name => null
);
end;
/
prompt --application/shared_components/navigation/lists
begin
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(42528039400043742)
,p_name=>'Bottom Links'
,p_list_type=>'FUNCTION_RETURNING_SQL_QUERY'
,p_list_query=>'return pkg_poc_boew.f_obtnr_sql_menu(p_nom_catgr => ''BOTTOM_LINKS'');'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(42538673870101065)
,p_name=>'Navigation Bar'
,p_list_type=>'FUNCTION_RETURNING_SQL_QUERY'
,p_list_query=>'return pkg_poc_boew.f_obtnr_sql_menu(p_nom_catgr => ''TOP_LINKS'');'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(83120708126656274)
,p_name=>'News'
,p_list_type=>'FUNCTION_RETURNING_SQL_QUERY'
,p_list_query=>'return pkg_poc_boew.f_obtnr_sql_menu(p_nom_catgr => ''NEWS'');'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(83122976294717313)
,p_name=>'Stay connected'
,p_list_type=>'FUNCTION_RETURNING_SQL_QUERY'
,p_list_query=>'return pkg_poc_boew.f_obtnr_sql_menu(p_nom_catgr => ''STAY_CONNECTED'');'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(83123249581723934)
,p_name=>'About'
,p_list_type=>'FUNCTION_RETURNING_SQL_QUERY'
,p_list_query=>'return pkg_poc_boew.f_obtnr_sql_menu(p_nom_catgr => ''ABOUT'');'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(83123400967726554)
,p_name=>'Contact Us'
,p_list_type=>'FUNCTION_RETURNING_SQL_QUERY'
,p_list_query=>'return pkg_poc_boew.f_obtnr_sql_menu(p_nom_catgr => ''CONTACT'');'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(83156768897374704)
,p_name=>'About this site'
,p_list_type=>'FUNCTION_RETURNING_SQL_QUERY'
,p_list_query=>'return pkg_poc_boew.f_obtnr_sql_menu(p_nom_catgr => ''ABOUT_THIS_SITE'');'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(83180872480203164)
,p_name=>'Navigation Menu'
,p_list_type=>'FUNCTION_RETURNING_SQL_QUERY'
,p_list_query=>'return pkg_poc_boew.f_obtnr_sql_menu(p_nom_catgr => ''MAIN'');'
,p_list_status=>'PUBLIC'
);
end;
/
prompt --application/shared_components/files
begin
null;
end;
/
prompt --application/plugin_settings
begin
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(66235174723515132399)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_CSS_CALENDAR'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(66235174796095132399)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_DISPLAY_SELECTOR'
,p_attribute_01=>'N'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(66395262588964495227)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_YES_NO'
,p_attribute_01=>'Y'
,p_attribute_03=>'N'
);
end;
/
prompt --application/shared_components/security/authorizations
begin
null;
end;
/
prompt --application/shared_components/navigation/navigation_bar
begin
null;
end;
/
prompt --application/shared_components/logic/application_processes
begin
null;
end;
/
prompt --application/shared_components/logic/application_items
begin
wwv_flow_api.create_flow_item(
 p_id=>wwv_flow_api.id(87786287598721420)
,p_name=>'APP_TITLE_PAGE'
,p_protection_level=>'I'
);
end;
/
prompt --application/shared_components/logic/application_computations
begin
wwv_flow_api.create_flow_computation(
 p_id=>wwv_flow_api.id(87786639300727915)
,p_computation_sequence=>10
,p_computation_item=>'APP_TITLE_PAGE'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'QUERY'
,p_computation_processed=>'REPLACE_EXISTING'
,p_computation=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT pkg_POC_APEX.F_TRADC(''Développement économique Canada pour les régions du Québec'',''Canada Economic Development for Quebec Regions'')',
'FROM DUAL;'))
);
end;
/
prompt --application/shared_components/navigation/tabs/standard
begin
null;
end;
/
prompt --application/shared_components/navigation/tabs/parent
begin
null;
end;
/
prompt --application/shared_components/user_interface/lovs
begin
null;
end;
/
prompt --application/shared_components/navigation/trees
begin
null;
end;
/
prompt --application/pages/page_groups
begin
null;
end;
/
prompt --application/comments
begin
null;
end;
/
prompt --application/shared_components/navigation/breadcrumbs/breadcrumb
begin
wwv_flow_api.create_menu(
 p_id=>wwv_flow_api.id(66395274797595495262)
,p_name=>' Breadcrumb'
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(60180988362472092742)
,p_parent_id=>0
,p_short_name=>'Accueil'
,p_link=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
,p_page_id=>1
);
end;
/
prompt --application/shared_components/user_interface/templates/page
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(40094782201981478)
,p_theme_id=>4023
,p_name=>'Page - Content'
,p_is_popup=>false
,p_inline_css=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'fieldset {',
'    border: 0;',
'    margin: 0;',
'    padding: 0;',
'}',
'',
'.form-vertical .form-group .control-label {',
'  width: auto !important;',
'  float: none;',
'  display: block;',
'  text-align: left; }',
'',
'@media screen {',
'  #wb-sm .nvbar ul.menu {',
'    margin-left: 0;',
'    position: relative; }',
'  #wb-sm .nvbar ul.menu > li {',
'    float: left;',
'    margin: 0; } }',
'',
'@media screen and (min-width: 992px) {',
'  #wb-srch .btn {',
'    margin-left: 5px; } }',
'',
'@media screen and (min-width: 992px) {',
'  #canada-ca a {',
'    text-transform: none; } }',
'',
'@media screen and (min-width: 992px) {',
'  body > form > header + .container {',
'    background-color: #fff;',
'    border-left: 1px solid #ccc;',
'    border-right: 1px solid #ccc; } }',
'',
'main .form-group input[type="text"]',
', main .form-group input[type="date"]',
', main .form-group textarea',
', main .form-group select {',
'  display: block;',
'	padding: 6px 12px;',
'	font-size: 16px;',
'	line-height: 1.4375;',
'	color: #555;',
'	background-color: #fff;',
'	background-image: none;',
'	border: 1px solid #ccc;',
'	border-radius: 4px;',
'	-webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,.075);',
'	box-shadow: inset 0 1px 1px rgba(0,0,0,.075);',
'	-webkit-transition: border-color ease-in-out .15s,-webkit-box-shadow ease-in-out .15s;',
'	transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s; ',
'	max-width: 100%;',
'	width: auto;',
'	}',
'',
'@media (min-width: 768px) {',
'  .form-group input[type="text"], .form-group input[type="date"] {',
'    display: inline-block;',
'    width: auto;',
'    vertical-align: middle; } }',
'',
'fieldset.textarea, fieldset.checkbox_group, fieldset.radio_group {',
'  display: block;',
'  border-top: 0;',
'  padding-top: 0; }',
'',
'fieldset.checkbox_group label, fieldset.radio_group label {',
'  min-height: 23px;',
'  padding-left: 20px;',
'  margin-bottom: 0;',
'  font-weight: 400;',
'  cursor: pointer; }',
'',
'.form-input-lg input[type="text"], .form-input-lg input[type="date"] {',
'  height: 46px;',
'  padding: 10px 16px;',
'  font-size: 18px;',
'  line-height: 1.33;',
'  border-radius: 6px; }',
'',
'.form-input-sm input[type="text"], .form-input-sm input[type="date"] {',
'  height: 33px;',
'  padding: 5px 10px;',
'  font-size: 14px;',
'  line-height: 1.5;',
'  border-radius: 3px; }',
'',
'ul.pagination td.pagination a, ul.pagination td.pagination b {',
'  background-color: #eaebed;',
'border: 1px solid #dcdee1;',
'color: #335075;',
'cursor: pointer;',
'display: inline-block;',
'line-height: 1.4375;',
'margin-bottom: .5em;',
'margin-left: -1px;',
'padding: 10px 16px;',
'position: relative;',
'text-decoration: none; }',
'',
'ul.pagination td.pagination b {',
'background-color: #2572b4;',
'border-color: #2572b4;',
'color: #fff;',
'cursor: default;',
'z-index: 2;}'))
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<!--[if lt IE 9]>',
'    <html class="no-js lt-ie9" lang="fr" dir="ltr">',
'    <![endif]-->',
'    <!--[if gt IE 8]>',
'        <!-->',
'        <html class="no-js" lang="fr" dir="ltr">',
'        <!--<![endif]-->',
'        ',
'        <head>',
'            <meta charset="utf-8">',
'            <!-- Web Experience Toolkit (WET) / Boîte à outils de l''expérience Web (BOEW) wet-boew.github.io/wet-boew/License-en.html',
'            / wet-boew.github.io/wet-boew/Licence-fr.html -->',
'            <title>#TITLE#</title>',
'            <meta content="width=device-width,initial-scale=1" name="viewport">',
'            <!-- Meta data -->',
'            <meta name="description" content="Web Experience Toolkit (WET)">',
'            <!-- Meta data-->',
'            <!--[if gte IE 9 | !IE ]><!-->',
'                <link href="&THEME_PATH.assets/favicon.ico" rel="icon" type="image/x-icon">',
'                <!-- Mandatory APEX CSS -->',
'                #HEAD# ',
'                #APEX_CSS#',
'            ',
'                <link rel="stylesheet" href="&THEME_PATH.css/theme.min.css">',
'                ',
'                <!-- Your App CSS -->',
'                #THEME_CSS# ',
'                #THEME_STYLE_CSS# ',
'                #TEMPLATE_CSS# ',
'                #APPLICATION_CSS#',
'                ',
'                <!-- Additionnal CSS -->',
'                #PAGE_CSS#',
'            <!--<![endif]-->',
'            <!--[if lt IE 9]>',
'                <link href="&THEME_PATH.assets/favicon.ico" rel="shortcut icon" />',
'                <link rel="stylesheet" href="&THEME_PATH.css/ie8-theme.min.css" />',
'                <script src="&WET_BOEW_PATH.js/ie8-wet-boew.min.js"></script>',
'            <![endif]-->',
'            <noscript>',
'                <link rel="stylesheet" href="&WET_BOEW_PATH.css/noscript.min.css" />',
'            </noscript>',
'        </head>',
'        ',
'        <body id="#PAGE_STATIC_ID#" class="#PAGE_CSS_CLASSES#" #ONLOAD# vocab="http://schema.org/" typeof="WebPage">'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<main role="main" property="mainContentOfPage" class="container">',
'<h1 id="wb-cont" property="name">#TITLE#</h1>',
'#FORM_OPEN#',
'#GLOBAL_NOTIFICATION##NOTIFICATION_MESSAGE##SUCCESS_MESSAGE#',
'#BODY#',
'#FORM_CLOSE#',
'<dl id="wb-dtmd" class="print-none">',
'<dt>Date de modification&#160;:&#32;</dt>',
'<dd><time property="dateModified">&APP_DATE_MODIFIED.</time></dd>',
'</dl>',
'</main>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!-- Mandatory APEX JS -->',
'#DEVELOPER_TOOLBAR# ',
'#APEX_JAVASCRIPT#',
'',
'<!--[if gte IE 9 | !IE ]><!-->',
'    <script src="&WET_BOEW_PATH.js/wet-boew.min.js"></script>',
'<!--<![endif]-->',
'',
'<!--[if lt IE 9]>',
'    <script src="&WET_BOEW_PATH.js/ie8-wet-boew2.min.js"></script>',
'<![endif]-->',
'',
'<script src="&THEME_PATH.js/theme.min.js"></script>',
'',
'<!-- Your JS -->',
'#THEME_JAVASCRIPT# ',
'#TEMPLATE_JAVASCRIPT# ',
'#APPLICATION_JAVASCRIPT#',
'',
'<!-- Additionnal JS -->',
'#PAGE_JAVASCRIPT#',
'',
'<!-- Generated Stuff -->',
'#GENERATED_CSS# ',
'#GENERATED_JAVASCRIPT#',
'',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="alert alert-success">',
'<h2>#SUCCESS_MESSAGE_HEADING#</h2>',
'#SUCCESS_MESSAGE#',
'</section>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="alert alert-danger">',
'<h2>Attention</h2>',
'#MESSAGE#',
'</section>'))
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_03'
,p_theme_class_id=>8
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div>',
'    #ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'    #COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col-xs-12 col-md-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#">',
'    #CONTENT#',
'</div>'))
,p_translate_this_template=>'Y'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(40095161929981515)
,p_page_template_id=>wwv_flow_api.id(40094782201981478)
,p_name=>'Item Container'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(40095661030981519)
,p_page_template_id=>wwv_flow_api.id(40094782201981478)
,p_name=>'Header'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(40096159875981520)
,p_page_template_id=>wwv_flow_api.id(40094782201981478)
,p_name=>'Breadcrumb'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(40096634973981520)
,p_page_template_id=>wwv_flow_api.id(40094782201981478)
,p_name=>'Footer Top'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(40097187117981521)
,p_page_template_id=>wwv_flow_api.id(40094782201981478)
,p_name=>'Footer Bottom'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(60181469539048470347)
,p_theme_id=>4023
,p_name=>'Page - Secondary Menu'
,p_is_popup=>false
,p_inline_css=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'fieldset {',
'    border: 0;',
'    margin: 0;',
'    padding: 0;',
'}',
'',
'.form-vertical .form-group .control-label {',
'  width: auto !important;',
'  float: none;',
'  display: block;',
'  text-align: left; }',
'',
'@media screen {',
'  #wb-sm .nvbar ul.menu {',
'    margin-left: 0;',
'    position: relative; }',
'  #wb-sm .nvbar ul.menu > li {',
'    float: left;',
'    margin: 0; } }',
'',
'@media screen and (min-width: 992px) {',
'  #wb-srch .btn {',
'    margin-left: 5px; } }',
'',
'@media screen and (min-width: 992px) {',
'  #canada-ca a {',
'    text-transform: none; } }',
'',
'@media screen and (min-width: 992px) {',
'  body > form > header + .container {',
'    background-color: #fff;',
'    border-left: 1px solid #ccc;',
'    border-right: 1px solid #ccc; } }',
'',
'main .form-group input[type="text"]',
', main .form-group input[type="date"]',
', main .form-group textarea',
', main .form-group select {',
'  display: block;',
'	padding: 6px 12px;',
'	font-size: 16px;',
'	line-height: 1.4375;',
'	color: #555;',
'	background-color: #fff;',
'	background-image: none;',
'	border: 1px solid #ccc;',
'	border-radius: 4px;',
'	-webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,.075);',
'	box-shadow: inset 0 1px 1px rgba(0,0,0,.075);',
'	-webkit-transition: border-color ease-in-out .15s,-webkit-box-shadow ease-in-out .15s;',
'	transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s; ',
'	max-width: 100%;',
'	width: auto;',
'	}',
'',
'@media (min-width: 768px) {',
'  .form-group input[type="text"], .form-group input[type="date"] {',
'    display: inline-block;',
'    width: auto;',
'    vertical-align: middle; } }',
'',
'fieldset.textarea, fieldset.checkbox_group, fieldset.radio_group {',
'  display: block;',
'  border-top: 0;',
'  padding-top: 0; }',
'',
'fieldset.checkbox_group label, fieldset.radio_group label {',
'  min-height: 23px;',
'  padding-left: 20px;',
'  margin-bottom: 0;',
'  font-weight: 400;',
'  cursor: pointer; }',
'',
'.form-input-lg input[type="text"], .form-input-lg input[type="date"] {',
'  height: 46px;',
'  padding: 10px 16px;',
'  font-size: 18px;',
'  line-height: 1.33;',
'  border-radius: 6px; }',
'',
'.form-input-sm input[type="text"], .form-input-sm input[type="date"] {',
'  height: 33px;',
'  padding: 5px 10px;',
'  font-size: 14px;',
'  line-height: 1.5;',
'  border-radius: 3px; }',
'',
'ul.pagination td.pagination a, ul.pagination td.pagination b {',
'  background-color: #eaebed;',
'border: 1px solid #dcdee1;',
'color: #335075;',
'cursor: pointer;',
'display: inline-block;',
'line-height: 1.4375;',
'margin-bottom: .5em;',
'margin-left: -1px;',
'padding: 10px 16px;',
'position: relative;',
'text-decoration: none; }',
'',
'ul.pagination td.pagination b {',
'background-color: #2572b4;',
'border-color: #2572b4;',
'color: #fff;',
'cursor: default;',
'z-index: 2;}'))
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<!--[if lt IE 9]>',
'    <html class="no-js lt-ie9" lang="fr" dir="ltr">',
'    <![endif]-->',
'    <!--[if gt IE 8]>',
'        <!-->',
'        <html class="no-js" lang="fr" dir="ltr">',
'        <!--<![endif]-->',
'        ',
'        <head>',
'            <meta charset="utf-8">',
'            <!-- Web Experience Toolkit (WET) / Boîte à outils de l''expérience Web (BOEW) wet-boew.github.io/wet-boew/License-en.html',
'            / wet-boew.github.io/wet-boew/Licence-fr.html -->',
'            <title>#TITLE#</title>',
'            <meta content="width=device-width,initial-scale=1" name="viewport">',
'            <!-- Meta data -->',
'            <meta name="description" content="Web Experience Toolkit (WET) includes reusable components for building and maintaining innovative Web sites that are accessible, usable, and interoperable. These reusable components are open source softwa'
||'re and free for use by departments and external Web communities">',
'            <!-- Meta data-->',
'            <!--[if gte IE 9 | !IE ]><!-->',
'                <link href="&THEME_PATH.assets/favicon.ico" rel="icon" type="image/x-icon">',
'                <!-- Mandatory APEX CSS -->',
'                #HEAD# ',
'                #APEX_CSS#            ',
'            ',
'                <link rel="stylesheet" href="&THEME_PATH.css/theme.min.css">',
'                ',
'                <!-- Your App CSS -->',
'                #THEME_CSS# ',
'                #THEME_STYLE_CSS# ',
'                #TEMPLATE_CSS# ',
'                #APPLICATION_CSS#',
'                ',
'                <!-- Additionnal CSS -->',
'                #PAGE_CSS#',
'            <!--<![endif]-->',
'            <!--[if lt IE 9]>',
'                <link href="&THEME_PATH.assets/favicon.ico" rel="shortcut icon" />',
'                <link rel="stylesheet" href="&THEME_PATH.css/ie8-theme.min.css" />',
'                <script src="&WET_BOEW_PATH.js/ie8-wet-boew.min.js"></script>',
'            <![endif]-->',
'            <noscript>',
'                <link rel="stylesheet" href="&WET_BOEW_PATH.css/noscript.min.css" />',
'            </noscript>',
'        </head>',
'',
'        <body id="#PAGE_STATIC_ID#" class="#PAGE_CSS_CLASSES#" #ONLOAD# vocab="http://schema.org/" typeof="WebPage">'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_OPEN#',
'',
'<!-- Item Container -->',
'#REGION_POSITION_01#',
'<!-- Header -->',
'    <header>',
'        <div id="wb-bnr">            ',
'            #NAVIGATION_BAR#',
'            <div class="container">',
'                <div class="row">',
'                    <div id="wb-sttl" class="col-md-6">',
'                        <a href="http://dec-ced.gc.ca/fra/index.html">',
'                            <span>#LOGO#</span>',
'                        </a>',
'                    </div>',
'                    <!--object id="wmms" type="image/svg+xml" tabindex="-1" role="img" data="&THEME_PATH.assets/wmms.svg" aria-label="Symbol of the Government of Canada"></object-->',
'                    <img id="wmms" tabindex="-1" src="&THEME_PATH.assets/wmms.png" aria-label="Symbol of the Government of Canada" alt="Symbol of the Government of Canada">',
'                    #REGION_POSITION_02#',
'                </div>',
'            </div>',
'        </div>',
'        #TOP_GLOBAL_NAVIGATION_LIST#',
'        #SIDE_GLOBAL_NAVIGATION_LIST#',
'        #REGION_POSITION_03#',
'    </header>',
'    <main class="container">',
'        <div class="row">',
'            <div class="col-md-3 visible-md visible-lg">',
'                #REGION_POSITION_04#',
'            </div>',
'            <div class="col-md-9">',
'                <div role="main" property="mainContentOfPage">',
'                    <h1 id="wb-cont" property="name">#TITLE#</h1>',
'                    ',
'                    #GLOBAL_NOTIFICATION##NOTIFICATION_MESSAGE##SUCCESS_MESSAGE#',
'                    #BODY#',
'',
'                    <dl id="wb-dtmd">',
'                        <dt>Date de modification :&#32;</dt>',
'                        <dd>',
'                            <time property="dateModified">&APP_DATE_MODIFIED.</time>',
'                        </dd>',
'                    </dl>',
'                </div>',
'            </div>',
'        </div>',
'    </main>',
'    <footer id="wb-info" class="visible-sm visible-md visible-lg wb-navcurr">',
'        <div class="container">',
'            <nav>',
'                #REGION_POSITION_07#',
'            </nav>',
'        </div>',
'        #REGION_POSITION_08#',
'    </footer>',
'',
'#FORM_CLOSE#'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!-- Mandatory APEX JS -->',
'#DEVELOPER_TOOLBAR# ',
'#APEX_JAVASCRIPT#',
'',
'<!--[if gte IE 9 | !IE ]><!-->',
'    <script src="&WET_BOEW_PATH.js/wet-boew.min.js"></script>',
'<!--<![endif]-->',
'',
'<!--[if lt IE 9]>',
'    <script src="&WET_BOEW_PATH.js/ie8-wet-boew2.min.js"></script>',
'<![endif]-->',
'',
'<script src="&THEME_PATH.js/theme.min.js"></script>',
'',
'<!-- Your JS -->',
'#THEME_JAVASCRIPT# ',
'#TEMPLATE_JAVASCRIPT# ',
'#APPLICATION_JAVASCRIPT#',
'',
'<!-- Additionnal JS -->',
'#PAGE_JAVASCRIPT#',
'',
'<!-- Generated Stuff -->',
'#GENERATED_CSS# ',
'#GENERATED_JAVASCRIPT#',
'',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="alert alert-success">',
'<h2>#SUCCESS_MESSAGE_HEADING#</h2>',
'#SUCCESS_MESSAGE#',
'</section>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="alert alert-danger">',
'#MESSAGE#',
'</section>'))
,p_sidebar_def_reg_pos=>'REGION_POSITION_04'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_03'
,p_theme_class_id=>8
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div>',
'    #ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'    #COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col-xs-12 col-md-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#">',
'    #CONTENT#',
'</div>'))
,p_translate_this_template=>'Y'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(60181469874398470350)
,p_page_template_id=>wwv_flow_api.id(60181469539048470347)
,p_name=>'Item Container'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(60181470368368470351)
,p_page_template_id=>wwv_flow_api.id(60181469539048470347)
,p_name=>'Header Form'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(60181470947565470352)
,p_page_template_id=>wwv_flow_api.id(60181469539048470347)
,p_name=>'Breadcrumb'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(60181471439640470352)
,p_page_template_id=>wwv_flow_api.id(60181469539048470347)
,p_name=>'Footer 1'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(60181471965869470352)
,p_page_template_id=>wwv_flow_api.id(60181469539048470347)
,p_name=>'Footer 2'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(60181547173746502835)
,p_page_template_id=>wwv_flow_api.id(60181469539048470347)
,p_name=>'Secondary Menu'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(61284247641652054616)
,p_theme_id=>4023
,p_name=>'Page - Modal'
,p_is_popup=>true
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<head>',
'    <title>#TITLE#</title>',
'    ',
'    <!-- Meta -->',
'    <meta charset="utf-8">',
'    <meta name="author" content="Vincent Morneau">',
'    <meta name="description" content="APEX Theme Boilerplate">',
'    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0, user-scalable=no"/>',
'    ',
'    <!-- Mandatory APEX CSS Stuff -->',
'    #HEAD#',
'    #APEX_CSS#',
'    ',
'    <!-- Your CSS -->',
'    #THEME_CSS#',
'    #THEME_STYLE_CSS#',
'    #TEMPLATE_CSS#',
'    #APPLICATION_CSS#',
'    ',
'    <!-- Additionnal CSS (that needs a good reason to use) -->',
'    #PAGE_CSS#',
'</head>',
'<body class="#PAGE_CSS_CLASSES#" #ONLOAD#>'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_OPEN#',
'',
'<div class="modal #PAGE_CSS_CLASSES#">',
'    <div class="modal-content">',
'        #GLOBAL_NOTIFICATION##NOTIFICATION_MESSAGE##SUCCESS_MESSAGE#',
'        #BODY#',
'    </div>',
'    <div class="modal-footer">',
'        #REGION_POSITION_08#',
'    </div>',
'</div>',
'',
'#FORM_CLOSE#'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!-- Mandatory APEX JS Stuff -->',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'',
'<!-- Your JS -->',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'    ',
'<!-- Additionnal JS (that needs a good reason to use) -->',
'#PAGE_JAVASCRIPT#',
'',
'<!-- Generated Stuff -->',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="alert alert-success">',
'<h2>#SUCCESS_MESSAGE_HEADING#</h2>',
'#SUCCESS_MESSAGE#',
'</section>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="alert alert-danger">',
'<h2>#NOTIFICATION_MESSAGE_HEADER#</h2>',
'#MESSAGE#',
'</section>'))
,p_theme_class_id=>8
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>false
,p_grid_has_column_span=>true
,p_grid_always_emit=>false
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div>',
'    #ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div>',
'    #COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="#CSS_CLASSES#">',
'    #CONTENT#',
'</div>'))
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(61284248062231054623)
,p_page_template_id=>wwv_flow_api.id(61284247641652054616)
,p_name=>'Modal Footer'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(61284249006992054844)
,p_theme_id=>4023
,p_name=>'Page - Standard'
,p_is_popup=>false
,p_inline_css=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'fieldset {',
'    border: 0;',
'    margin: 0;',
'    padding: 0;',
'}',
'',
'.form-vertical .form-group .control-label {',
'  width: auto !important;',
'  float: none;',
'  display: block;',
'  text-align: left; }',
'',
'@media screen {',
'  #wb-sm .nvbar ul.menu {',
'    margin-left: 0;',
'    position: relative; }',
'  #wb-sm .nvbar ul.menu > li {',
'    float: left;',
'    margin: 0; } }',
'',
'@media screen and (min-width: 992px) {',
'  #wb-srch .btn {',
'    margin-left: 5px; } }',
'',
'@media screen and (min-width: 992px) {',
'  #canada-ca a {',
'    text-transform: none; } }',
'',
'@media screen and (min-width: 992px) {',
'  body > form > header + .container {',
'    background-color: #fff;',
'    border-left: 1px solid #ccc;',
'    border-right: 1px solid #ccc; } }',
'',
'main .form-group input[type="text"]',
', main .form-group input[type="date"]',
', main .form-group textarea',
', main .form-group select {',
'  display: block;',
'	padding: 6px 12px;',
'	font-size: 16px;',
'	line-height: 1.4375;',
'	color: #555;',
'	background-color: #fff;',
'	background-image: none;',
'	border: 1px solid #ccc;',
'	border-radius: 4px;',
'	-webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,.075);',
'	box-shadow: inset 0 1px 1px rgba(0,0,0,.075);',
'	-webkit-transition: border-color ease-in-out .15s,-webkit-box-shadow ease-in-out .15s;',
'	transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s; ',
'	max-width: 100%;',
'	width: auto;',
'	}',
'',
'@media (min-width: 768px) {',
'  .form-group input[type="text"], .form-group input[type="date"] {',
'    display: inline-block;',
'    width: auto;',
'    vertical-align: middle; } }',
'',
'fieldset.textarea, fieldset.checkbox_group, fieldset.radio_group {',
'  display: block;',
'  border-top: 0;',
'  padding-top: 0; }',
'',
'fieldset.checkbox_group label, fieldset.radio_group label {',
'  min-height: 23px;',
'  padding-left: 20px;',
'  margin-bottom: 0;',
'  font-weight: 400;',
'  cursor: pointer; }',
'',
'.form-input-lg input[type="text"], .form-input-lg input[type="date"] {',
'  height: 46px;',
'  padding: 10px 16px;',
'  font-size: 18px;',
'  line-height: 1.33;',
'  border-radius: 6px; }',
'',
'.form-input-sm input[type="text"], .form-input-sm input[type="date"] {',
'  height: 33px;',
'  padding: 5px 10px;',
'  font-size: 14px;',
'  line-height: 1.5;',
'  border-radius: 3px; }',
'',
'ul.pagination td.pagination a, ul.pagination td.pagination b {',
'  background-color: #eaebed;',
'border: 1px solid #dcdee1;',
'color: #335075;',
'cursor: pointer;',
'display: inline-block;',
'line-height: 1.4375;',
'margin-bottom: .5em;',
'margin-left: -1px;',
'padding: 10px 16px;',
'position: relative;',
'text-decoration: none; }',
'',
'ul.pagination td.pagination b {',
'background-color: #2572b4;',
'border-color: #2572b4;',
'color: #fff;',
'cursor: default;',
'z-index: 2;}'))
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<!--[if lt IE 9]>',
'    <html class="no-js lt-ie9" lang="fr" dir="ltr">',
'    <![endif]-->',
'    <!--[if gt IE 8]>',
'        <!-->',
'        <html class="no-js" lang="fr" dir="ltr">',
'        <!--<![endif]-->',
'        ',
'        <head>',
'            <meta charset="utf-8">',
'            <!-- Web Experience Toolkit (WET) / Boîte à outils de l''expérience Web (BOEW) wet-boew.github.io/wet-boew/License-en.html',
'            / wet-boew.github.io/wet-boew/Licence-fr.html -->',
'            <title>#TITLE#</title>',
'            <meta content="width=device-width,initial-scale=1" name="viewport">',
'            <!-- Meta data -->',
'            <meta name="description" content="Web Experience Toolkit (WET)">',
'            <!-- Meta data-->',
'            <!--[if gte IE 9 | !IE ]><!-->',
'                <link href="&THEME_PATH.assets/favicon.ico" rel="icon" type="image/x-icon">',
'                <!-- Mandatory APEX CSS -->',
'                #HEAD# ',
'                #APEX_CSS#',
'            ',
'                <link rel="stylesheet" href="&THEME_PATH.css/theme.min.css">',
'                ',
'                <!-- Your App CSS -->',
'                #THEME_CSS# ',
'                #THEME_STYLE_CSS# ',
'                #TEMPLATE_CSS# ',
'                #APPLICATION_CSS#',
'                ',
'                <!-- Additionnal CSS -->',
'                #PAGE_CSS#',
'            <!--<![endif]-->',
'            <!--[if lt IE 9]>',
'                <link href="&THEME_PATH.assets/favicon.ico" rel="shortcut icon" />',
'                <link rel="stylesheet" href="&THEME_PATH.css/ie8-theme.min.css" />',
'                <script src="&WET_BOEW_PATH.js/ie8-wet-boew.min.js"></script>',
'            <![endif]-->',
'            <noscript>',
'                <link rel="stylesheet" href="&WET_BOEW_PATH.css/noscript.min.css" />',
'            </noscript>',
'        </head>',
'        ',
'        <body id="#PAGE_STATIC_ID#" class="#PAGE_CSS_CLASSES#" #ONLOAD# vocab="http://schema.org/" typeof="WebPage">'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_OPEN#',
'',
'<!-- Item Container -->',
'#REGION_POSITION_01#',
'<!-- Header -->',
'    <header>',
'        <div id="wb-bnr">            ',
'            #NAVIGATION_BAR#',
'            <div class="container">',
'                <div class="row">',
'                    <div id="wb-sttl" class="col-md-6">',
'                        <a href="http://dec-ced.gc.ca/fra/index.html">',
'                            <span>#LOGO#</span>',
'                        </a>',
'                    </div>',
'                    <!--object id="wmms" type="image/svg+xml" tabindex="-1" role="img" data="&THEME_PATH.assets/wmms.svg" aria-label="Symbol of the Government of Canada"></object>-->',
'                    <img id="wmms" tabindex="-1" src="&THEME_PATH.assets/wmms.png" aria-label="Symbol of the Government of Canada" alt="Symbol of the Government of Canada">',
'                    #REGION_POSITION_02#',
'                </div>',
'            </div>',
'        </div>',
'        #TOP_GLOBAL_NAVIGATION_LIST#',
'        #SIDE_GLOBAL_NAVIGATION_LIST#',
'        #REGION_POSITION_03#',
'    </header>',
'    <main property="mainContentOfPage" class="container">',
'        <h1 id="wb-cont" property="name">#TITLE#</h1>',
'        ',
'        #GLOBAL_NOTIFICATION##NOTIFICATION_MESSAGE##SUCCESS_MESSAGE#',
'        #BODY#',
'        ',
'        <dl id="wb-dtmd">',
'            <dt>Date de modification :&#32;</dt>',
'            <dd>',
'                <time property="dateModified">&APP_DATE_MODIFIED.</time>',
'            </dd>',
'        </dl>',
'    </main>',
'    <footer id="wb-info" class="visible-sm visible-md visible-lg wb-navcurr">',
'        <div class="container">',
'            <nav>',
'                #REGION_POSITION_07#',
'            </nav>',
'        </div>',
'        #REGION_POSITION_08#',
'    </footer>',
'',
'#FORM_CLOSE#'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!-- Mandatory APEX JS -->',
'#DEVELOPER_TOOLBAR# ',
'#APEX_JAVASCRIPT#',
'',
'<!--[if gte IE 9 | !IE ]><!-->',
'    <script src="&WET_BOEW_PATH.js/wet-boew.min.js"></script>',
'<!--<![endif]-->',
'',
'<!--[if lt IE 9]>',
'    <script src="&WET_BOEW_PATH.js/ie8-wet-boew2.min.js"></script>',
'<![endif]-->',
'',
'<script src="&THEME_PATH.js/theme.min.js"></script>',
'',
'<!-- Your JS -->',
'#THEME_JAVASCRIPT# ',
'#TEMPLATE_JAVASCRIPT# ',
'#APPLICATION_JAVASCRIPT#',
'',
'<!-- Additionnal JS -->',
'#PAGE_JAVASCRIPT#',
'',
'<!-- Generated Stuff -->',
'#GENERATED_CSS# ',
'#GENERATED_JAVASCRIPT#',
'',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="alert alert-success">',
'<h2>#SUCCESS_MESSAGE_HEADING#</h2>',
'#SUCCESS_MESSAGE#',
'</section>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="alert alert-danger">',
'<h2>Attention</h2>',
'#MESSAGE#',
'</section>'))
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_03'
,p_theme_class_id=>8
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div>',
'    #ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'    #COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col-xs-12 col-md-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#">',
'    #CONTENT#',
'</div>'))
,p_translate_this_template=>'Y'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(60006177501024493293)
,p_page_template_id=>wwv_flow_api.id(61284249006992054844)
,p_name=>'Footer Top'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
end;
/
begin
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(60072958743367966022)
,p_page_template_id=>wwv_flow_api.id(61284249006992054844)
,p_name=>'Header'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(60072959119857966024)
,p_page_template_id=>wwv_flow_api.id(61284249006992054844)
,p_name=>'Breadcrumb'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(61284249427253054845)
,p_page_template_id=>wwv_flow_api.id(61284249006992054844)
,p_name=>'Item Container'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(61284251446355054846)
,p_page_template_id=>wwv_flow_api.id(61284249006992054844)
,p_name=>'Footer Bottom'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/button
begin
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(61284421324421147457)
,p_template_name=>'Button - Standard'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<button onclick="#JAVASCRIPT#" id="#BUTTON_ID#" type="button" class="btn #BUTTON_CSS_CLASSES# mrgn-tp-sm mrgn-bttm-sm" #BUTTON_ATTRIBUTES#><i class="#ICON_CSS_CLASSES#"></i>#LABEL#</button>',
''))
,p_theme_class_id=>6
,p_preset_template_options=>'btn-primary'
,p_theme_id=>4023
);
end;
/
prompt --application/shared_components/user_interface/templates/region
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(86632323218419858)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section id="#REGION_STATIC_ID#" class="panel #REGION_CSS_CLASSES#" #REGION_ATTRIBUTES#>',
'    <header class="panel-heading">',
'        <h5 class="panel-title">#TITLE#</h5>',
'    </header>',
'    <div class="panel-body">',
'        #EDIT##EXPAND##CREATE#    ',
'        #BODY#    ',
'        #CREATE2##CLOSE##COPY##DELETE##CHANGE##HELP#',
'    </div>',
'</section>'))
,p_page_plug_template_name=>'Region - Panel'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>4023
,p_theme_class_id=>21
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(60051181202307830201)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section id="#REGION_STATIC_ID#"  class="#REGION_CSS_CLASSES#" #REGION_ATTRIBUTES#>',
'    <h1 property="name" class="page-header">#TITLE#</h1>',
'    #CREATE#    ',
'    #BODY#    ',
'    #CREATE2#',
'</section>'))
,p_page_plug_template_name=>'Region - Section H1'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>4023
,p_theme_class_id=>21
,p_preset_template_options=>'form-horizontal'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(60181027847398974604)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section id="#REGION_STATIC_ID#" class="#REGION_CSS_CLASSES#" #REGION_ATTRIBUTES#>',
'    <h2 property="name" class="page-header">#TITLE#</h2>',
'    #CREATE#    ',
'    #BODY#    ',
'    #CREATE2#',
'</section>'))
,p_page_plug_template_name=>'Region - Section H2'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>4023
,p_theme_class_id=>21
,p_preset_template_options=>'form-horizontal'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(60181342512660349046)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section id="#REGION_STATIC_ID#" class="#REGION_CSS_CLASSES#" #REGION_ATTRIBUTES#>',
'    <h4 property="name" class="page-header">#TITLE#</h4>',
'    #CREATE#    ',
'    #BODY#    ',
'    #CREATE2#',
'</section>'))
,p_page_plug_template_name=>'Region - Section H4'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>4023
,p_theme_class_id=>21
,p_preset_template_options=>'form-horizontal'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(60181343188035351268)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section id="#REGION_STATIC_ID#" class="#REGION_CSS_CLASSES#" #REGION_ATTRIBUTES#>',
'    <h5 property="name" class="page-header">#TITLE#</h5>',
'    #CREATE#    ',
'    #BODY#    ',
'    #CREATE2#',
'</section>'))
,p_page_plug_template_name=>'Region - Section H5'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>4023
,p_theme_class_id=>21
,p_preset_template_options=>'form-horizontal'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(60181356333669519068)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section id="#REGION_STATIC_ID#" class="#REGION_CSS_CLASSES#" #REGION_ATTRIBUTES#>',
'    <h6 property="name" class="page-header">#TITLE#</h6>',
'    #CREATE#    ',
'    #BODY#    ',
'    #CREATE2#',
'</section>'))
,p_page_plug_template_name=>'Region - Section H6'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>4023
,p_theme_class_id=>21
,p_preset_template_options=>'form-horizontal'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(60181478509267611863)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<nav id="#REGION_STATIC_ID#" class="#REGION_CSS_CLASSES#" #REGION_ATTRIBUTES# typeof="SiteNavigationElement">',
'    <h2>#TITLE#</h2>',
'    #CREATE#    ',
'    #BODY#    ',
'    #CREATE2#',
'</nav>'))
,p_page_plug_template_name=>'Region - Navigation'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>4023
,p_theme_class_id=>21
,p_preset_template_options=>'form-horizontal'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(61284243535934046937)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section id="#REGION_STATIC_ID#" class="#REGION_CSS_CLASSES#" #REGION_ATTRIBUTES#>',
'    <h3 property="name" class="page-header">#TITLE#</h3>',
'    #CREATE#    ',
'    #BODY#    ',
'    #CREATE2#',
'</section>'))
,p_page_plug_template_name=>'Region - Section H3'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>4023
,p_theme_class_id=>21
,p_preset_template_options=>'form-horizontal'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(61783683972516892488)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section id="#REGION_STATIC_ID#" class="alert #REGION_CSS_CLASSES#" #REGION_ATTRIBUTES#>',
'        <h3>#TITLE#</h3>',
'        #BODY#',
'</section>'))
,p_page_plug_template_name=>'Region - Alert'
,p_theme_id=>4023
,p_theme_class_id=>21
,p_preset_template_options=>'alert-success'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(68848588049406109040)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<details id="#REGION_STATIC_ID#" class="print-none #REGION_CSS_CLASSES#" #REGION_ATTRIBUTES#>',
'    <summary>#TITLE#</summary>',
'    <div>#BODY#</div>',
'</details>'))
,p_page_plug_template_name=>'Region - Details Summary (Collapsible)'
,p_theme_id=>4023
,p_theme_class_id=>21
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(68986027045154803152)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" class="wb-tabs" #REGION_ATTRIBUTES# role="tablist">',
'    <div class="tabpanels">',
'        #SUB_REGIONS#',
'    </div>',
'</div>'))
,p_sub_plug_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<details id="#SUB_REGION_ID#" class="#REGION_CSS_CLASSES#">',
'			    <summary>#SUB_REGION_TITLE#</summary>',
'    #SUB_REGION#',
'</details>'))
,p_page_plug_template_name=>'Region - Tabbed Interface Container'
,p_theme_id=>4023
,p_theme_class_id=>21
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(68987772709442211181)
,p_plug_template_id=>wwv_flow_api.id(68986027045154803152)
,p_name=>'Tabbed Interface Items'
,p_placeholder=>'#SUB_REGIONS#'
,p_has_grid_support=>false
,p_glv_new_row=>false
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(68988506293064346334)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section id="#REGION_STATIC_ID#" class="#REGION_CSS_CLASSES#" #REGION_ATTRIBUTES#>',
'    #CREATE#    ',
'    #BODY#    ',
'    #CREATE2#',
'</section>'))
,p_page_plug_template_name=>'Region - Empty'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>4023
,p_theme_class_id=>21
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/list
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(60005977475235206287)
,p_list_template_current=>'<li id="#A01#"><a href="#LINK#"><span>#TEXT#</span></a></li>'
,p_list_template_noncurrent=>'<li id="#A01#"><a href="#LINK#"><span>#TEXT#</span></a></li>'
,p_list_template_name=>'List - Bottom Links'
,p_inline_css=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#canada-ca a span {',
'    text-transform: capitalize !important;',
'}'))
,p_theme_id=>4023
,p_theme_class_id=>9
,p_list_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="gc-info">',
'    <div class="container">',
'        <nav>',
'            <h2>#REGION_TITLE#</h2>',
'            <ul class="list-inline">'))
,p_list_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</ul>',
'</nav>',
'</div>',
'</div>'))
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(60006288801298365351)
,p_list_template_current=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_noncurrent=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_name=>'List - Dynamic Footer'
,p_theme_id=>4023
,p_theme_class_id=>9
,p_list_template_before_rows=>'<ul class="list-unstyled">'
,p_list_template_after_rows=>'</ul>'
,p_f_list_template_noncurrent=>'<li><h3><a href="#LINK#">#TEXT#</a></h3></li>'
,p_f_list_template_current=>'<li><h3><a href="#LINK#">#TEXT#</a></h3></li>'
,p_translate_this_template=>'Y'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(60015199812356456568)
,p_list_template_current=>'<li><a rel="#A01#" href="#LINK#">#TEXT#</a></li>'
,p_list_template_noncurrent=>'<li><a rel="#A01#" href="#LINK#">#TEXT#</a></li>'
,p_list_template_name=>'List - About this site'
,p_theme_id=>4023
,p_theme_class_id=>9
,p_list_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<h2>#REGION_TITLE#</h2>',
'<ul id="gc-tctr" class="list-inline">'))
,p_list_template_after_rows=>'</ul>'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(60035636046277513887)
,p_list_template_current=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_noncurrent=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_name=>'List - Section'
,p_theme_id=>4023
,p_theme_class_id=>9
,p_list_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section>',
'<h2>#REGION_TITLE#</h2>',
'<ul>'))
,p_list_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
' </ul>',
'</section>'))
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(60073035055687994806)
,p_list_template_current=>'<li><a href="#LINK#" class="item wb-navcurr" role="menuitem" aria-haspopup="true">#TEXT#</a></li>'
,p_list_template_noncurrent=>'<li><a href="#LINK#" class="item" role="menuitem" aria-haspopup="true">#TEXT#</a></li>'
,p_list_template_name=>'List - Navigation Menu'
,p_theme_id=>4023
,p_theme_class_id=>9
,p_list_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<nav role="navigation" id="wb-sm" data-ajax-replace="&APP_AJAX_MENU_FR." data-trgt="mb-pnl" class="wb-menu visible-md visible-lg" typeof="SiteNavigationElement">',
'    <div class="container nvbar">',
'        <h2>Menu</h2>',
'            <div class="row">',
'                <ul class="list-inline menu" role="menu">'))
,p_list_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</ul>',
'</div>',
'</div>',
'</nav>'))
,p_before_sub_list=>'<ul class="sm list-unstyled" role="menu" aria-expanded="false" aria-hidden="true">'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li><a href="#LINK#" role="menuitem">#TEXT#</a></li>'
,p_sub_list_item_noncurrent=>'<li><a href="#LINK#" role="menuitem">#TEXT#</a></li>'
,p_item_templ_curr_w_child=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li>',
'    <a href="#LINK#" class="item wb-navcurr" role="menuitem" aria-haspopup="true">',
'        #TEXT#',
'    </a>',
'</li>'))
,p_item_templ_noncurr_w_child=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li>',
'    <a href="#LINK#" class="item" role="menuitem" aria-haspopup="true">',
'        #TEXT#   ',
'    </a>',
'</li>'))
,p_translate_this_template=>'Y'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(60073819501559098937)
,p_list_template_current=>'<li><a href="#LINK#" class="#A01#" rel="external" data-lang="#A02#">#TEXT#</a></li>'
,p_list_template_noncurrent=>'<li><a href="#LINK#" class="#A01#" rel="external" data-lang="#A02#">#TEXT#</a></li>'
,p_list_template_name=>'List - Navigation Bar'
,p_theme_id=>4023
,p_theme_class_id=>9
,p_list_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="wb-bar">',
'    <div class="container">',
'        <div class="row">',
'            <!--object id="gcwu-sig" type="image/svg+xml" tabindex="-1" role="img" data="&THEME_PATH.assets/sig-fr.svg" aria-label="Government of Canada"></object-->',
'            <img id="gcwu-sig" tabindex="-1" src="&THEME_PATH.assets/sig-fr.svg" aria-label="Government of Canada" alt="Government of Canada">',
'            <ul id="gc-bar" class="list-inline">'))
,p_list_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'            </ul>',
'            <section class="wb-mb-links col-xs-12 visible-sm visible-xs" id="wb-glb-mn">',
'                <h2>Recherche et menu</h2>',
'                <ul class="pnl-btn list-inline text-right">',
'                    <li><a href="#mb-pnl" title="Search and menus" aria-controls="mb-pnl" class="overlay-lnk btn btn-sm btn-default"',
'                        role="button"><span class="glyphicon glyphicon-search"><span class="glyphicon glyphicon-th-list"><span class="wb-inv">Recherche et menu</span></span></span></a></li>',
'                </ul>',
'                <div id="mb-pnl"></div>',
'            </section>',
'        </div>',
'    </div>',
'</div>'))
,p_translate_this_template=>'Y'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(60181554247943531665)
,p_list_template_current=>'<li><a class="list-group-item" href="#LINK#">#TEXT#</a></li>'
,p_list_template_noncurrent=>'<li><a class="list-group-item" href="#LINK#">#TEXT#</a></li>'
,p_list_template_name=>'List - Secondary Menu'
,p_theme_id=>4023
,p_theme_class_id=>9
,p_list_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<ul class="list-group menu list-unstyled">',
'    <li>',
'        <h3 class="wb-navcurr">#REGION_TITLE#</h3>',
'            <ul class="list-group menu list-unstyled">'))
,p_list_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</ul>',
'</li>',
'</ul>'))
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(60478026716114552537)
,p_list_template_current=>'<li>#TEXT#</li>'
,p_list_template_noncurrent=>'<li>#TEXT#</li>'
,p_list_template_name=>'List - Unordered'
,p_theme_id=>4023
,p_theme_class_id=>9
,p_list_template_before_rows=>' <ul>'
,p_list_template_after_rows=>'</ul>'
,p_before_sub_list=>' <ul>'
,p_after_sub_list=>'</ul>'
,p_sub_list_item_current=>'<li>#TEXT#</li>'
,p_sub_list_item_noncurrent=>'<li>#TEXT#</li>'
,p_item_templ_curr_w_child=>'<li>#TEXT#</li>'
,p_item_templ_noncurr_w_child=>'<li>#TEXT#</li>'
,p_sub_templ_curr_w_child=>'<li>#TEXT#</li>'
,p_sub_templ_noncurr_w_child=>'<li>#TEXT#</li>'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(60478050998960575532)
,p_list_template_current=>'<li>#TEXT#</li>'
,p_list_template_noncurrent=>'<li>#TEXT#</li>'
,p_list_template_name=>'List - Ordered'
,p_theme_id=>4023
,p_theme_class_id=>9
,p_list_template_before_rows=>'<ol>'
,p_list_template_after_rows=>'</ol>'
,p_before_sub_list=>' <ol>'
,p_after_sub_list=>'</ol>'
,p_sub_list_item_current=>'<li>#TEXT#</li>'
,p_sub_list_item_noncurrent=>'<li>#TEXT#</li>'
,p_item_templ_curr_w_child=>'<li>#TEXT#</li>'
,p_item_templ_noncurr_w_child=>'<li>#TEXT#</li>'
,p_sub_templ_curr_w_child=>'<li>#TEXT#</li>'
,p_sub_templ_noncurr_w_child=>'<li>#TEXT#</li>'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(61284312335952080934)
,p_list_template_current=>'<li class="active"><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_noncurrent=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_name=>'List - Standard'
,p_theme_id=>4023
,p_theme_class_id=>9
,p_list_template_before_rows=>' <ul id="#LIST_ID#" class="#COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>' '
);
end;
/
prompt --application/shared_components/user_interface/templates/report
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(61284262352138058467)
,p_row_template_name=>'Report - Standard - Column'
,p_row_template1=>'<td headers="#COLUMN_HEADER_NAME#">#COLUMN_VALUE#</td>'
,p_row_template_before_rows=>'<table id="report_#REGION_STATIC_ID#" class="table #COMPONENT_CSS_CLASSES#">'
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</tbody>',
'</table>',
'<div>#EXTERNAL_LINK##CSV_LINK#</div>',
'<ul class="pagination"><li>#PAGINATION#</li></ul>',
'',
''))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_before_column_heading=>'<thead>'
,p_column_heading_template=>'<th id="#COLUMN_HEADER_NAME#" scope="col">#COLUMN_HEADER#</th>'
,p_after_column_heading=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</thead>',
'<tbody>'))
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span>#TEXT#</span>'
,p_next_page_template=>'<a href="#LINK#" rel="next">Next</a>'
,p_previous_page_template=>'<a href="#LINK#" rel="prev">Previous</a>'
,p_next_set_template=>'<a href="#LINK#" rel="next">Next Set</a>'
,p_previous_set_template=>'<a href="#LINK#" rel="prev">Previous Set</a>'
,p_theme_id=>4023
,p_theme_class_id=>7
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(61284262352138058467)
,p_row_template_before_first=>'<tr>'
,p_row_template_after_last=>'</tr>'
);
exception when others then null;
end;
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(68848688917569151551)
,p_row_template_name=>'Report - Details Summary (Collapsible)'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li>',
'    <details>',
'        <summary>#TITLE#</summary>',
'        #BODY#',
'    </details>',
'</li>'))
,p_row_template_before_rows=>'<ul id="#REGION_STATIC_ID#-report" class="list-unstyled #COMPONENT_CSS_CLASSES#">'
,p_row_template_after_rows=>'</ul>'
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_theme_id=>4023
,p_theme_class_id=>7
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(83644998370071595)
,p_template_name=>'Item - Required'
,p_template_body1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="required">',
'<span class="field-name">'))
,p_template_body2=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</span>',
'<strong class="required">(obligatoire)</strong>',
'</label>'))
,p_before_item=>'<div class="form-group #ITEM_CSS_CLASSES#">'
,p_after_item=>'</div>'
,p_before_element=>'<div class="">'
,p_after_element=>'</div>'
,p_on_error_after_label=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<br/><label><strong id="#CURRENT_ITEM_NAME#-error" class="error">',
'<span class="label label-danger">#ERROR_MESSAGE#</span>',
'</strong></label>'))
,p_theme_id=>4023
,p_theme_class_id=>5
,p_translate_this_template=>'Y'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(48010752718973090475)
,p_template_name=>'Item - Hidden Label'
,p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="col-xs-12 col-sm-#LABEL_COLUMN_SPAN_NUMBER# u-VisuallyHidden">'
,p_template_body2=>'</label>'
,p_before_item=>'<div class="form-group #ITEM_CSS_CLASSES#">'
,p_after_item=>'</div>'
,p_before_element=>'<div class="col-xs-12">'
,p_after_element=>'</div>'
,p_theme_id=>4023
,p_theme_class_id=>5
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(48013503838592356608)
,p_template_name=>'Item - No Label'
,p_template_body1=>'<div class="u-VisuallyHidden">'
,p_template_body2=>'</div>'
,p_before_item=>'<div class="form-group #ITEM_CSS_CLASSES#">'
,p_after_item=>'</div>'
,p_before_element=>'<div class="col-xs-12">'
,p_after_element=>'</div>'
,p_theme_id=>4023
,p_theme_class_id=>5
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(60508028679653405207)
,p_template_name=>'Item - Blockquote'
,p_template_body1=>'<div class="col-xs-12 col-sm-#LABEL_COLUMN_SPAN_NUMBER# u-VisuallyHidden">'
,p_template_body2=>'</div>'
,p_before_item=>'<div class="form-group #ITEM_CSS_CLASSES#">'
,p_after_item=>'</div>'
,p_before_element=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col-xs-12">',
'<blockquote>',
'<p>'))
,p_after_element=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</p>',
'</blockquote>',
'</div>'))
,p_theme_id=>4023
,p_theme_class_id=>5
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(61284310666615076290)
,p_template_name=>'Item - Optional'
,p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="">'
,p_template_body2=>'</label>'
,p_before_item=>'<div class="form-group #ITEM_CSS_CLASSES#">'
,p_after_item=>'</div>'
,p_before_element=>'<div class="">'
,p_after_element=>'</div>'
,p_on_error_after_label=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<br/><label><strong id="#CURRENT_ITEM_NAME#-error" class="error">',
'<span class="label label-danger">#ERROR_MESSAGE#</span>',
'</strong></label>'))
,p_theme_id=>4023
,p_theme_class_id=>5
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/breadcrumb
begin
wwv_flow_api.create_menu_template(
 p_id=>wwv_flow_api.id(61284424321405156113)
,p_name=>'Breadcrumb - Standard'
,p_before_first=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<nav id="wb-bc" property="breadcrumb" class="#COMPONENT_CSS_CLASSES#">',
'    <h2>#REGION_TITLE#You are here:</h2>',
'    <div class="container">',
'        <div class="row">',
'            <ol class="breadcrumb">'))
,p_current_page_option=>'<li>#NAME#</li>'
,p_non_current_page_option=>'<li><a href="#LINK#">#NAME#</a></li>'
,p_after_last=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</ol>',
'</div>',
'</div>',
'</nav>'))
,p_max_levels=>12
,p_start_with_node=>'PARENT_TO_LEAF'
,p_theme_id=>4023
,p_theme_class_id=>3
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/popuplov
begin
wwv_flow_api.create_popup_lov_template(
 p_id=>wwv_flow_api.id(61284425451697160131)
,p_page_name=>'Popup - Standard'
,p_theme_id=>4023
,p_theme_class_id=>1
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/calendar
begin
wwv_flow_api.create_calendar_template(
 p_id=>wwv_flow_api.id(61284387659155171386)
,p_cal_template_name=>'Calendar - Standard'
,p_day_of_week_format=>'<th>#IDAY#</th>'
,p_month_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table cellspacing="0" cellpadding="0" border="0" summary="">',
' <tr>',
'   <td align="center" style="font-weight:bold;">#IMONTH# #YYYY#</td>',
' </tr>',
' <tr>',
' <td>'))
,p_month_open_format=>'<table border="1" cellpadding="1" cellspacing="1" summary="0">'
,p_month_close_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</table></td>',
'</tr>',
'</table>',
''))
,p_day_title_format=>'<div>#DD#</div><br />'
,p_day_open_format=>'<td valign="top">'
,p_day_close_format=>'</td>'
,p_today_open_format=>'<td valign="top" bgcolor="#d3d3d3">'
,p_weekend_title_format=>'<div>#DD#</div>'
,p_weekend_open_format=>'<td valign="top">'
,p_weekend_close_format=>'</td>'
,p_nonday_title_format=>'<div>#DD#</div>'
,p_nonday_open_format=>'<td valign="top">'
,p_nonday_close_format=>'</td>'
,p_week_open_format=>'<tr>'
,p_week_close_format=>'</tr> '
,p_theme_id=>4023
,p_theme_class_id=>4
);
end;
/
prompt --application/shared_components/user_interface/themes
begin
wwv_flow_api.create_theme(
 p_id=>wwv_flow_api.id(61284171853185985305)
,p_theme_id=>4023
,p_theme_name=>'WET-BOEW'
,p_ui_type_name=>'DESKTOP'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_is_locked=>false
,p_default_page_template=>wwv_flow_api.id(61284249006992054844)
,p_default_dialog_template=>wwv_flow_api.id(61284247641652054616)
,p_default_button_template=>wwv_flow_api.id(61284421324421147457)
,p_default_region_template=>wwv_flow_api.id(61284243535934046937)
,p_default_chart_template=>wwv_flow_api.id(61284243535934046937)
,p_default_form_template=>wwv_flow_api.id(61284243535934046937)
,p_default_reportr_template=>wwv_flow_api.id(61284243535934046937)
,p_default_tabform_template=>wwv_flow_api.id(61284243535934046937)
,p_default_wizard_template=>wwv_flow_api.id(61284243535934046937)
,p_default_menur_template=>wwv_flow_api.id(61284243535934046937)
,p_default_listr_template=>wwv_flow_api.id(61284243535934046937)
,p_default_irr_template=>wwv_flow_api.id(61284243535934046937)
,p_default_report_template=>wwv_flow_api.id(61284262352138058467)
,p_default_label_template=>wwv_flow_api.id(61284310666615076290)
,p_default_menu_template=>wwv_flow_api.id(61284424321405156113)
,p_default_calendar_template=>wwv_flow_api.id(61284387659155171386)
,p_default_list_template=>wwv_flow_api.id(61284312335952080934)
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>wwv_flow_api.id(61284243535934046937)
,p_default_dialogr_template=>wwv_flow_api.id(61284243535934046937)
,p_default_option_label=>wwv_flow_api.id(61284310666615076290)
,p_default_required_label=>wwv_flow_api.id(61284310666615076290)
,p_default_page_transition=>'NONE'
,p_default_popup_transition=>'NONE'
,p_theme_description=>'This theme implements the requirements of the Standard on Web Usability and is recommended for use on all Government of Canada websites (except for Canada.ca).'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(4023),'')
,p_icon_library=>'FONTAWESOME'
);
end;
/
prompt --application/shared_components/user_interface/theme_style
begin
null;
end;
/
prompt --application/shared_components/user_interface/theme_files
begin
null;
end;
/
prompt --application/shared_components/user_interface/theme_display_points
begin
null;
end;
/
prompt --application/shared_components/user_interface/template_opt_groups
begin
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(60051306373993734293)
,p_theme_id=>4023
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(60492787183027825061)
,p_theme_id=>4023
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>1
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(60507936744317156606)
,p_theme_id=>4023
,p_name=>'FORM_POSITION'
,p_display_name=>'Form Position'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(61778820419075485552)
,p_theme_id=>4023
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(61781896923695330696)
,p_theme_id=>4023
,p_name=>'VALIDATION_STATE'
,p_display_name=>'Validation State'
,p_display_sequence=>1
,p_template_types=>'FIELD'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(61782155133916585143)
,p_theme_id=>4023
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>1
,p_template_types=>'FIELD'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(61783788906262107909)
,p_theme_id=>4023
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(65372666465960757070)
,p_theme_id=>101
,p_name=>'COLLAPSIBLE_BEHAVIOR'
,p_display_name=>'Collapsible Behavior'
,p_display_sequence=>1
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(65446560589592121830)
,p_theme_id=>101
,p_name=>'LANGUAGE_TYPE'
,p_display_name=>'Language Type'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(65522843822553927936)
,p_theme_id=>101
,p_name=>'ALIGNMENT'
,p_display_name=>'Alignment'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(65805708236378722474)
,p_theme_id=>101
,p_name=>'SHADOW'
,p_display_name=>'Shadow'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(66238089549888244056)
,p_theme_id=>101
,p_name=>'SECTION_HEADER_SIZE'
,p_display_name=>'Section Header Size'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(66241278470719293540)
,p_theme_id=>101
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(66241296890634295300)
,p_theme_id=>101
,p_name=>'TYPE'
,p_display_name=>'Type'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(66241298980775301434)
,p_theme_id=>101
,p_name=>'WAVE_COLOR'
,p_display_name=>'Wave Color'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_null_text=>'None'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(66932694597421507554)
,p_theme_id=>101
,p_name=>'SHADOW'
,p_display_name=>'Shadow'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(66944831831354007527)
,p_theme_id=>101
,p_name=>'BACKGROUND_COLOR'
,p_display_name=>'Background Color'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(66944832610661012177)
,p_theme_id=>101
,p_name=>'BACKGROUND_MODIFIER'
,p_display_name=>'Background Modifier'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(66944853320805023600)
,p_theme_id=>101
,p_name=>'TEXT_COLOR'
,p_display_name=>'Text Color'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
end;
/
prompt --application/shared_components/user_interface/template_options
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(83645279498071599)
,p_theme_id=>4023
,p_name=>'HAS_ERROR'
,p_display_name=>'Has Error'
,p_display_sequence=>1
,p_field_template_id=>wwv_flow_api.id(83644998370071595)
,p_css_classes=>'has-error'
,p_group_id=>wwv_flow_api.id(61781896923695330696)
,p_template_types=>'FIELD'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(83645701558071601)
,p_theme_id=>4023
,p_name=>'HAS_SUCCESS'
,p_display_name=>'Has Success'
,p_display_sequence=>1
,p_field_template_id=>wwv_flow_api.id(83644998370071595)
,p_css_classes=>'has-success'
,p_group_id=>wwv_flow_api.id(61781896923695330696)
,p_template_types=>'FIELD'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(83646155499071604)
,p_theme_id=>4023
,p_name=>'HAS_WARNING'
,p_display_name=>'Has Warning'
,p_display_sequence=>1
,p_field_template_id=>wwv_flow_api.id(83644998370071595)
,p_css_classes=>'has-warning'
,p_group_id=>wwv_flow_api.id(61781896923695330696)
,p_template_types=>'FIELD'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(83646502492071605)
,p_theme_id=>4023
,p_name=>'LARGE'
,p_display_name=>'Large'
,p_display_sequence=>1
,p_field_template_id=>wwv_flow_api.id(83644998370071595)
,p_css_classes=>'form-input-lg'
,p_group_id=>wwv_flow_api.id(61782155133916585143)
,p_template_types=>'FIELD'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(83646936948071606)
,p_theme_id=>4023
,p_name=>'SMALL'
,p_display_name=>'Small'
,p_display_sequence=>1
,p_field_template_id=>wwv_flow_api.id(83644998370071595)
,p_css_classes=>'form-input-sm'
,p_group_id=>wwv_flow_api.id(61782155133916585143)
,p_template_types=>'FIELD'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86633947014450842)
,p_theme_id=>4023
,p_name=>'PANEL_DEFAULT'
,p_display_name=>'Default'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(86632323218419858)
,p_css_classes=>'panel-default'
,p_group_id=>wwv_flow_api.id(61783788906262107909)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86634674747454046)
,p_theme_id=>4023
,p_name=>'PANEL_PRIMARY'
,p_display_name=>'Primary'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(86632323218419858)
,p_css_classes=>'panel-primary'
,p_group_id=>wwv_flow_api.id(61783788906262107909)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86635497838456363)
,p_theme_id=>4023
,p_name=>'PANEL_SUCCESS'
,p_display_name=>'Success'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(86632323218419858)
,p_css_classes=>'panel-success'
,p_group_id=>wwv_flow_api.id(61783788906262107909)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86635778717459497)
,p_theme_id=>4023
,p_name=>'PANEL_INFO'
,p_display_name=>'Info'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(86632323218419858)
,p_css_classes=>'panel-info'
,p_group_id=>wwv_flow_api.id(61783788906262107909)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86636061110462085)
,p_theme_id=>4023
,p_name=>'PANEL_WARNING'
,p_display_name=>'Warning'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(86632323218419858)
,p_css_classes=>'panel-warning'
,p_group_id=>wwv_flow_api.id(61783788906262107909)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86821694818493909)
,p_theme_id=>4023
,p_name=>'PANEL_DANGER'
,p_display_name=>'Danger'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(86632323218419858)
,p_css_classes=>'panel-danger'
,p_group_id=>wwv_flow_api.id(61783788906262107909)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48010753006818090480)
,p_theme_id=>4023
,p_name=>'HAS_ERROR'
,p_display_name=>'Has Error'
,p_display_sequence=>1
,p_field_template_id=>wwv_flow_api.id(48010752718973090475)
,p_css_classes=>'has-error'
,p_group_id=>wwv_flow_api.id(61781896923695330696)
,p_template_types=>'FIELD'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48010753396322090481)
,p_theme_id=>4023
,p_name=>'HAS_SUCCESS'
,p_display_name=>'Has Success'
,p_display_sequence=>1
,p_field_template_id=>wwv_flow_api.id(48010752718973090475)
,p_css_classes=>'has-success'
,p_group_id=>wwv_flow_api.id(61781896923695330696)
,p_template_types=>'FIELD'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48010753847294090481)
,p_theme_id=>4023
,p_name=>'HAS_WARNING'
,p_display_name=>'Has Warning'
,p_display_sequence=>1
,p_field_template_id=>wwv_flow_api.id(48010752718973090475)
,p_css_classes=>'has-warning'
,p_group_id=>wwv_flow_api.id(61781896923695330696)
,p_template_types=>'FIELD'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48010754229684090481)
,p_theme_id=>4023
,p_name=>'LARGE'
,p_display_name=>'Large'
,p_display_sequence=>1
,p_field_template_id=>wwv_flow_api.id(48010752718973090475)
,p_css_classes=>'form-input-lg'
,p_group_id=>wwv_flow_api.id(61782155133916585143)
,p_template_types=>'FIELD'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48010754622974090481)
,p_theme_id=>4023
,p_name=>'SMALL'
,p_display_name=>'Small'
,p_display_sequence=>1
,p_field_template_id=>wwv_flow_api.id(48010752718973090475)
,p_css_classes=>'form-input-sm'
,p_group_id=>wwv_flow_api.id(61782155133916585143)
,p_template_types=>'FIELD'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48013508032564356615)
,p_theme_id=>4023
,p_name=>'HAS_ERROR'
,p_display_name=>'Has Error'
,p_display_sequence=>1
,p_field_template_id=>wwv_flow_api.id(48013503838592356608)
,p_css_classes=>'has-error'
,p_group_id=>wwv_flow_api.id(61781896923695330696)
,p_template_types=>'FIELD'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48013511216653356615)
,p_theme_id=>4023
,p_name=>'HAS_SUCCESS'
,p_display_name=>'Has Success'
,p_display_sequence=>1
,p_field_template_id=>wwv_flow_api.id(48013503838592356608)
,p_css_classes=>'has-success'
,p_group_id=>wwv_flow_api.id(61781896923695330696)
,p_template_types=>'FIELD'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48013512548477356616)
,p_theme_id=>4023
,p_name=>'HAS_WARNING'
,p_display_name=>'Has Warning'
,p_display_sequence=>1
,p_field_template_id=>wwv_flow_api.id(48013503838592356608)
,p_css_classes=>'has-warning'
,p_group_id=>wwv_flow_api.id(61781896923695330696)
,p_template_types=>'FIELD'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48013513743454356616)
,p_theme_id=>4023
,p_name=>'LARGE'
,p_display_name=>'Large'
,p_display_sequence=>1
,p_field_template_id=>wwv_flow_api.id(48013503838592356608)
,p_css_classes=>'form-input-lg'
,p_group_id=>wwv_flow_api.id(61782155133916585143)
,p_template_types=>'FIELD'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48013514829298356616)
,p_theme_id=>4023
,p_name=>'SMALL'
,p_display_name=>'Small'
,p_display_sequence=>1
,p_field_template_id=>wwv_flow_api.id(48013503838592356608)
,p_css_classes=>'form-input-sm'
,p_group_id=>wwv_flow_api.id(61782155133916585143)
,p_template_types=>'FIELD'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60051307666955738544)
,p_theme_id=>4023
,p_name=>'PRIMARY'
,p_display_name=>'Primary'
,p_display_sequence=>1
,p_button_template_id=>wwv_flow_api.id(61284421324421147457)
,p_css_classes=>'btn-primary'
,p_group_id=>wwv_flow_api.id(60051306373993734293)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60051313254403747918)
,p_theme_id=>4023
,p_name=>'BTN_DEFAULT'
,p_display_name=>'Default'
,p_display_sequence=>1
,p_button_template_id=>wwv_flow_api.id(61284421324421147457)
,p_css_classes=>'btn-default'
,p_group_id=>wwv_flow_api.id(60051306373993734293)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60492789270331830630)
,p_theme_id=>4023
,p_name=>'TABLE_STRIPED'
,p_display_name=>'Striped'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_api.id(61284262352138058467)
,p_css_classes=>'table-striped'
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(61778710395807641016)
,p_theme_id=>4023
,p_name=>'LINK'
,p_display_name=>'Link'
,p_display_sequence=>1
,p_button_template_id=>wwv_flow_api.id(61284421324421147457)
,p_css_classes=>'btn-link'
,p_group_id=>wwv_flow_api.id(60051306373993734293)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(61778792203070467836)
,p_theme_id=>4023
,p_name=>'SUCCESS'
,p_display_name=>'Success'
,p_display_sequence=>1
,p_button_template_id=>wwv_flow_api.id(61284421324421147457)
,p_css_classes=>'btn-success'
,p_group_id=>wwv_flow_api.id(60051306373993734293)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(61778795414033468980)
,p_theme_id=>4023
,p_name=>'INFO'
,p_display_name=>'Info'
,p_display_sequence=>1
,p_button_template_id=>wwv_flow_api.id(61284421324421147457)
,p_css_classes=>'btn-info'
,p_group_id=>wwv_flow_api.id(60051306373993734293)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(61778801686201470561)
,p_theme_id=>4023
,p_name=>'WARNING'
,p_display_name=>'Warning'
,p_display_sequence=>1
,p_button_template_id=>wwv_flow_api.id(61284421324421147457)
,p_css_classes=>'btn-warning'
,p_group_id=>wwv_flow_api.id(60051306373993734293)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(61778804203207472784)
,p_theme_id=>4023
,p_name=>'DANGER'
,p_display_name=>'Danger'
,p_display_sequence=>1
,p_button_template_id=>wwv_flow_api.id(61284421324421147457)
,p_css_classes=>'btn-danger'
,p_group_id=>wwv_flow_api.id(60051306373993734293)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(61778847094399494249)
,p_theme_id=>4023
,p_name=>'LARGE'
,p_display_name=>'Large'
,p_display_sequence=>1
,p_button_template_id=>wwv_flow_api.id(61284421324421147457)
,p_css_classes=>'btn-lg'
,p_group_id=>wwv_flow_api.id(61778820419075485552)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(61778847510612495570)
,p_theme_id=>4023
,p_name=>'SMALL'
,p_display_name=>'Small'
,p_display_sequence=>1
,p_button_template_id=>wwv_flow_api.id(61284421324421147457)
,p_css_classes=>'btn-sm'
,p_group_id=>wwv_flow_api.id(61778820419075485552)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(61778847799209497862)
,p_theme_id=>4023
,p_name=>'EXTRA_SMALL'
,p_display_name=>'Extra Small'
,p_display_sequence=>1
,p_button_template_id=>wwv_flow_api.id(61284421324421147457)
,p_css_classes=>'btn-xs'
,p_group_id=>wwv_flow_api.id(61778820419075485552)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(61778890779436503363)
,p_theme_id=>4023
,p_name=>'FULL_WIDTH'
,p_display_name=>'Full width'
,p_display_sequence=>1
,p_button_template_id=>wwv_flow_api.id(61284421324421147457)
,p_css_classes=>'btn-block'
,p_template_types=>'BUTTON'
,p_help_text=>'Create block level buttons—those that span the full width of a parent— by adding btn-block.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(61782026438193351287)
,p_theme_id=>4023
,p_name=>'HAS_SUCCESS'
,p_display_name=>'Has Success'
,p_display_sequence=>1
,p_field_template_id=>wwv_flow_api.id(61284310666615076290)
,p_css_classes=>'has-success'
,p_group_id=>wwv_flow_api.id(61781896923695330696)
,p_template_types=>'FIELD'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(61782046094267356109)
,p_theme_id=>4023
,p_name=>'HAS_WARNING'
,p_display_name=>'Has Warning'
,p_display_sequence=>1
,p_field_template_id=>wwv_flow_api.id(61284310666615076290)
,p_css_classes=>'has-warning'
,p_group_id=>wwv_flow_api.id(61781896923695330696)
,p_template_types=>'FIELD'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(61782048967618359544)
,p_theme_id=>4023
,p_name=>'HAS_ERROR'
,p_display_name=>'Has Error'
,p_display_sequence=>1
,p_field_template_id=>wwv_flow_api.id(61284310666615076290)
,p_css_classes=>'has-error'
,p_group_id=>wwv_flow_api.id(61781896923695330696)
,p_template_types=>'FIELD'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(61782207095829433227)
,p_theme_id=>4023
,p_name=>'LARGE'
,p_display_name=>'Large'
,p_display_sequence=>1
,p_field_template_id=>wwv_flow_api.id(61284310666615076290)
,p_css_classes=>'form-input-lg'
,p_group_id=>wwv_flow_api.id(61782155133916585143)
,p_template_types=>'FIELD'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(61782217987907601026)
,p_theme_id=>4023
,p_name=>'SMALL'
,p_display_name=>'Small'
,p_display_sequence=>1
,p_field_template_id=>wwv_flow_api.id(61284310666615076290)
,p_css_classes=>'form-input-sm'
,p_group_id=>wwv_flow_api.id(61782155133916585143)
,p_template_types=>'FIELD'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(61782461337813745374)
,p_theme_id=>4023
,p_name=>'BORDERED'
,p_display_name=>'Bordered'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_api.id(61284262352138058467)
,p_css_classes=>'table-bordered'
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(61782483661447582486)
,p_theme_id=>4023
,p_name=>'HOVER_ROWS'
,p_display_name=>'Hover Rows'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_api.id(61284262352138058467)
,p_css_classes=>'table-hover'
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(61782723590965641183)
,p_theme_id=>4023
,p_name=>'CONDENSED'
,p_display_name=>'Condensed'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_api.id(61284262352138058467)
,p_css_classes=>'table-condensed'
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(61783802805331945936)
,p_theme_id=>4023
,p_name=>'SUCCESS'
,p_display_name=>'Success'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(61783683972516892488)
,p_css_classes=>'alert-success'
,p_group_id=>wwv_flow_api.id(61783788906262107909)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(61783843816620113832)
,p_theme_id=>4023
,p_name=>'INFO'
,p_display_name=>'Info'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(61783683972516892488)
,p_css_classes=>'alert-info'
,p_group_id=>wwv_flow_api.id(61783788906262107909)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(61783845184612115309)
,p_theme_id=>4023
,p_name=>'WARNING'
,p_display_name=>'Warning'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(61783683972516892488)
,p_css_classes=>'alert-warning'
,p_group_id=>wwv_flow_api.id(61783788906262107909)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(61783849077509117312)
,p_theme_id=>4023
,p_name=>'DANGER'
,p_display_name=>'Danger'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(61783683972516892488)
,p_css_classes=>'alert-danger'
,p_group_id=>wwv_flow_api.id(61783788906262107909)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(68832386807478731594)
,p_theme_id=>4023
,p_name=>'FORM_INLINE'
,p_display_name=>'Form Inline'
,p_display_sequence=>1
,p_css_classes=>'form-inline'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(68987754191072082502)
,p_theme_id=>4023
,p_name=>'DATATABLE_PLUGIN'
,p_display_name=>'DataTable Plugin'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_api.id(61284262352138058467)
,p_css_classes=>'wb-tables'
,p_template_types=>'REPORT'
);
end;
/
prompt --application/shared_components/logic/build_options
begin
null;
end;
/
prompt --application/shared_components/globalization/language
begin
wwv_flow_api.create_language_map(
 p_id=>wwv_flow_api.id(83140766538048857)
,p_translation_flow_id=>1998
,p_translation_flow_language_cd=>'en'
);
end;
/
prompt --application/shared_components/globalization/translations
begin
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(40313005085018653)
,p_translated_flow_id=>1998
,p_translate_to_id=>wwv_flow_api.id(40094782201981478.1998)
,p_translate_from_id=>wwv_flow_api.id(40094782201981478)
,p_translate_column_id=>23
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'Y'
,p_translate_to_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<!--[if lt IE 9]>',
'    <html class="no-js lt-ie9" lang="en" dir="ltr">',
'    <![endif]-->',
'    <!--[if gt IE 8]>',
'        <!-->',
'        <html class="no-js" lang="en" dir="ltr">',
'        <!--<![endif]-->',
'        ',
'        <head>',
'            <meta charset="utf-8">',
'            <!-- Web Experience Toolkit (WET) / Boîte à outils de l''expérience Web (BOEW) wet-boew.github.io/wet-boew/License-en.html',
'            / wet-boew.github.io/wet-boew/Licence-fr.html -->',
'            <title>#TITLE#</title>',
'            <meta content="width=device-width,initial-scale=1" name="viewport">',
'            <!-- Meta data -->',
'            <meta name="description" content="Web Experience Toolkit (WET)">',
'            <!-- Meta data-->',
'            <!--[if gte IE 9 | !IE ]><!-->',
'                <link href="&THEME_PATH.assets/favicon.ico" rel="icon" type="image/x-icon">',
'                <!-- Mandatory APEX CSS -->',
'                #HEAD# ',
'                #APEX_CSS#',
'            ',
'                <link rel="stylesheet" href="&THEME_PATH.css/theme.min.css">',
'                ',
'                <!-- Your App CSS -->',
'                #THEME_CSS# ',
'                #THEME_STYLE_CSS# ',
'                #TEMPLATE_CSS# ',
'                #APPLICATION_CSS#',
'                ',
'                <!-- Additionnal CSS -->',
'                #PAGE_CSS#',
'            <!--<![endif]-->',
'            <!--[if lt IE 9]>',
'                <link href="&THEME_PATH.assets/favicon.ico" rel="shortcut icon" />',
'                <link rel="stylesheet" href="&THEME_PATH.css/ie8-theme.min.css" />',
'                <script src="&WET_BOEW_PATH.js/ie8-wet-boew.min.js"></script>',
'            <![endif]-->',
'            <noscript>',
'                <link rel="stylesheet" href="&WET_BOEW_PATH.css/noscript.min.css" />',
'            </noscript>',
'        </head>',
'        ',
'        <body id="#PAGE_STATIC_ID#" class="#PAGE_CSS_CLASSES#" #ONLOAD# vocab="http://schema.org/" typeof="WebPage">'))
,p_translate_from_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<!--[if lt IE 9]>',
'    <html class="no-js lt-ie9" lang="fr" dir="ltr">',
'    <![endif]-->',
'    <!--[if gt IE 8]>',
'        <!-->',
'        <html class="no-js" lang="fr" dir="ltr">',
'        <!--<![endif]-->',
'        ',
'        <head>',
'            <meta charset="utf-8">',
'            <!-- Web Experience Toolkit (WET) / Boîte à outils de l''expérience Web (BOEW) wet-boew.github.io/wet-boew/License-en.html',
'            / wet-boew.github.io/wet-boew/Licence-fr.html -->',
'            <title>#TITLE#</title>',
'            <meta content="width=device-width,initial-scale=1" name="viewport">',
'            <!-- Meta data -->',
'            <meta name="description" content="Web Experience Toolkit (WET)">',
'            <!-- Meta data-->',
'            <!--[if gte IE 9 | !IE ]><!-->',
'                <link href="&THEME_PATH.assets/favicon.ico" rel="icon" type="image/x-icon">',
'                <!-- Mandatory APEX CSS -->',
'                #HEAD# ',
'                #APEX_CSS#',
'            ',
'                <link rel="stylesheet" href="&THEME_PATH.css/theme.min.css">',
'                ',
'                <!-- Your App CSS -->',
'                #THEME_CSS# ',
'                #THEME_STYLE_CSS# ',
'                #TEMPLATE_CSS# ',
'                #APPLICATION_CSS#',
'                ',
'                <!-- Additionnal CSS -->',
'                #PAGE_CSS#',
'            <!--<![endif]-->',
'            <!--[if lt IE 9]>',
'                <link href="&THEME_PATH.assets/favicon.ico" rel="shortcut icon" />',
'                <link rel="stylesheet" href="&THEME_PATH.css/ie8-theme.min.css" />',
'                <script src="&WET_BOEW_PATH.js/ie8-wet-boew.min.js"></script>',
'            <![endif]-->',
'            <noscript>',
'                <link rel="stylesheet" href="&WET_BOEW_PATH.css/noscript.min.css" />',
'            </noscript>',
'        </head>',
'        ',
'        <body id="#PAGE_STATIC_ID#" class="#PAGE_CSS_CLASSES#" #ONLOAD# vocab="http://schema.org/" typeof="WebPage">'))
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(40313487016018668)
,p_translated_flow_id=>1998
,p_translate_to_id=>wwv_flow_api.id(40094782201981478.1998)
,p_translate_from_id=>wwv_flow_api.id(40094782201981478)
,p_translate_column_id=>24
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'Y'
,p_translate_to_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!-- Mandatory APEX JS -->',
'#DEVELOPER_TOOLBAR# ',
'#APEX_JAVASCRIPT#',
'',
'<!--[if gte IE 9 | !IE ]><!-->',
'    <script src="&WET_BOEW_PATH.js/wet-boew.min.js"></script>',
'<!--<![endif]-->',
'',
'<!--[if lt IE 9]>',
'    <script src="&WET_BOEW_PATH.js/ie8-wet-boew2.min.js"></script>',
'<![endif]-->',
'',
'<script src="&THEME_PATH.js/theme.min.js"></script>',
'',
'<!-- Your JS -->',
'#THEME_JAVASCRIPT# ',
'#TEMPLATE_JAVASCRIPT# ',
'#APPLICATION_JAVASCRIPT#',
'',
'<!-- Additionnal JS -->',
'#PAGE_JAVASCRIPT#',
'',
'<!-- Generated Stuff -->',
'#GENERATED_CSS# ',
'#GENERATED_JAVASCRIPT#',
'',
'</body>',
'</html>'))
,p_translate_from_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!-- Mandatory APEX JS -->',
'#DEVELOPER_TOOLBAR# ',
'#APEX_JAVASCRIPT#',
'',
'<!--[if gte IE 9 | !IE ]><!-->',
'    <script src="&WET_BOEW_PATH.js/wet-boew.min.js"></script>',
'<!--<![endif]-->',
'',
'<!--[if lt IE 9]>',
'    <script src="&WET_BOEW_PATH.js/ie8-wet-boew2.min.js"></script>',
'<![endif]-->',
'',
'<script src="&THEME_PATH.js/theme.min.js"></script>',
'',
'<!-- Your JS -->',
'#THEME_JAVASCRIPT# ',
'#TEMPLATE_JAVASCRIPT# ',
'#APPLICATION_JAVASCRIPT#',
'',
'<!-- Additionnal JS -->',
'#PAGE_JAVASCRIPT#',
'',
'<!-- Generated Stuff -->',
'#GENERATED_CSS# ',
'#GENERATED_JAVASCRIPT#',
'',
'</body>',
'</html>'))
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(40313825800018675)
,p_translated_flow_id=>1998
,p_translate_to_id=>wwv_flow_api.id(40094782201981478.1998)
,p_translate_from_id=>wwv_flow_api.id(40094782201981478)
,p_translate_column_id=>25
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'Y'
,p_translate_to_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<main role="main" property="mainContentOfPage" class="container">',
'<h1 id="wb-cont" property="name">#TITLE#</h1>',
'#FORM_OPEN#',
'#GLOBAL_NOTIFICATION##NOTIFICATION_MESSAGE##SUCCESS_MESSAGE#',
'#BODY#',
'#FORM_CLOSE#',
'<dl id="wb-dtmd" class="print-none">',
'<dt>Modified date:&#32;</dt>',
'<dd><time property="dateModified">&APP_DATE_MODIFIED.</time></dd>',
'</dl>',
'</main>'))
,p_translate_from_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<main role="main" property="mainContentOfPage" class="container">',
'<h1 id="wb-cont" property="name">#TITLE#</h1>',
'#FORM_OPEN#',
'#GLOBAL_NOTIFICATION##NOTIFICATION_MESSAGE##SUCCESS_MESSAGE#',
'#BODY#',
'#FORM_CLOSE#',
'<dl id="wb-dtmd" class="print-none">',
'<dt>Date de modification&#160;:&#32;</dt>',
'<dd><time property="dateModified">&APP_DATE_MODIFIED.</time></dd>',
'</dl>',
'</main>'))
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(40333279834018850)
,p_translated_flow_id=>1998
,p_translate_to_id=>wwv_flow_api.id(60006288801298365351.1998)
,p_translate_from_id=>wwv_flow_api.id(60006288801298365351)
,p_translate_column_id=>53
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'Y'
,p_translate_to_text=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_translate_from_text=>'<li><a href="#LINK#">#TEXT#</a></li>'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(40334826204018858)
,p_translated_flow_id=>1998
,p_translate_to_id=>wwv_flow_api.id(60006288801298365351.1998)
,p_translate_from_id=>wwv_flow_api.id(60006288801298365351)
,p_translate_column_id=>54
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'Y'
,p_translate_to_text=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_translate_from_text=>'<li><a href="#LINK#">#TEXT#</a></li>'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(40336460746018867)
,p_translated_flow_id=>1998
,p_translate_to_id=>wwv_flow_api.id(60006288801298365351.1998)
,p_translate_from_id=>wwv_flow_api.id(60006288801298365351)
,p_translate_column_id=>55
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'Y'
,p_translate_to_text=>'<ul class="list-unstyled">'
,p_translate_from_text=>'<ul class="list-unstyled">'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(40338080559018875)
,p_translated_flow_id=>1998
,p_translate_to_id=>wwv_flow_api.id(60006288801298365351.1998)
,p_translate_from_id=>wwv_flow_api.id(60006288801298365351)
,p_translate_column_id=>56
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'Y'
,p_translate_to_text=>'</ul>'
,p_translate_from_text=>'</ul>'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(40343378947019006)
,p_translated_flow_id=>1998
,p_translate_to_id=>998.1998
,p_translate_from_id=>998
,p_translate_column_id=>83
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'/i/dec-ced/menu_fra_wet4.html'
,p_translate_from_text=>'/i/dec-ced/menu_fra_wet4.html'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(40343402013019010)
,p_translated_flow_id=>1998
,p_translate_to_id=>998.1998
,p_translate_from_id=>998
,p_translate_column_id=>84
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'/i/dec-ced/menu_eng_wet4.html'
,p_translate_from_text=>'/i/dec-ced/menu_eng_wet4.html'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(40377957846019375)
,p_translated_flow_id=>1998
,p_translate_to_id=>wwv_flow_api.id(40094782201981478.1998)
,p_translate_from_id=>wwv_flow_api.id(40094782201981478)
,p_translate_column_id=>161
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'Y'
,p_translate_to_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="alert alert-danger">',
'<h2>Warning</h2>',
'#MESSAGE#',
'</section>'))
,p_translate_from_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="alert alert-danger">',
'<h2>Attention</h2>',
'#MESSAGE#',
'</section>'))
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(40383076626019458)
,p_translated_flow_id=>1998
,p_translate_to_id=>wwv_flow_api.id(40094782201981478.1998)
,p_translate_from_id=>wwv_flow_api.id(40094782201981478)
,p_translate_column_id=>168
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'Y'
,p_translate_to_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="alert alert-success">',
'<h2>#SUCCESS_MESSAGE_HEADING#</h2>',
'#SUCCESS_MESSAGE#',
'</section>'))
,p_translate_from_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="alert alert-success">',
'<h2>#SUCCESS_MESSAGE_HEADING#</h2>',
'#SUCCESS_MESSAGE#',
'</section>'))
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(45348610276302625)
,p_page_id=>0
,p_translated_flow_id=>1998
,p_translate_to_id=>.1998
,p_translate_from_id=>0
,p_translate_column_id=>5
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Global Page'
,p_translate_from_text=>'Global Page'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(45348797257302632)
,p_page_id=>1
,p_translated_flow_id=>1998
,p_translate_to_id=>1.1998
,p_translate_from_id=>1
,p_translate_column_id=>5
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Index EN'
,p_translate_from_text=>'Index'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(45348848365302637)
,p_page_id=>0
,p_translated_flow_id=>1998
,p_translate_to_id=>.1998
,p_translate_from_id=>0
,p_translate_column_id=>6
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Global Page - Desktop'
,p_translate_from_text=>'Global Page - Desktop'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(45349093051302648)
,p_page_id=>1
,p_translated_flow_id=>1998
,p_translate_to_id=>1.1998
,p_translate_from_id=>1
,p_translate_column_id=>6
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Index EN'
,p_translate_from_text=>'Index'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(45351035166302676)
,p_page_id=>1
,p_translated_flow_id=>1998
,p_translate_to_id=>1.1998
,p_translate_from_id=>1
,p_translate_column_id=>12
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'No help is available for this page.'
,p_translate_from_text=>'No help is available for this page.'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(45353631657302728)
,p_page_id=>0
,p_translated_flow_id=>1998
,p_translate_to_id=>wwv_flow_api.id(60005968423267198024.1998)
,p_translate_from_id=>wwv_flow_api.id(60005968423267198024)
,p_translate_column_id=>20
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'Y'
,p_translate_to_text=>'{bottom links}'
,p_translate_from_text=>'{bottom links}'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(45353726006302729)
,p_page_id=>0
,p_translated_flow_id=>1998
,p_translate_to_id=>wwv_flow_api.id(60005324611432003175.1998)
,p_translate_from_id=>wwv_flow_api.id(60005324611432003175)
,p_translate_column_id=>20
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'Y'
,p_translate_to_text=>'{about this site}'
,p_translate_from_text=>'{about this site}'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(45353970387302730)
,p_page_id=>0
,p_translated_flow_id=>1998
,p_translate_to_id=>wwv_flow_api.id(60005324793564003177.1998)
,p_translate_from_id=>wwv_flow_api.id(60005324793564003177)
,p_translate_column_id=>20
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'Y'
,p_translate_to_text=>'{contact us}'
,p_translate_from_text=>'{contact us}'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(45354188864302730)
,p_page_id=>0
,p_translated_flow_id=>1998
,p_translate_to_id=>wwv_flow_api.id(60005324867411003178.1998)
,p_translate_from_id=>wwv_flow_api.id(60005324867411003178)
,p_translate_column_id=>20
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'Y'
,p_translate_to_text=>'{about}'
,p_translate_from_text=>'{about}'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(45354338170302730)
,p_page_id=>0
,p_translated_flow_id=>1998
,p_translate_to_id=>wwv_flow_api.id(60005325000132003179.1998)
,p_translate_from_id=>wwv_flow_api.id(60005325000132003179)
,p_translate_column_id=>20
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'Y'
,p_translate_to_text=>'{news}'
,p_translate_from_text=>'{news}'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(45354564348302731)
,p_page_id=>0
,p_translated_flow_id=>1998
,p_translate_to_id=>wwv_flow_api.id(60005325091298003180.1998)
,p_translate_from_id=>wwv_flow_api.id(60005325091298003180)
,p_translate_column_id=>20
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'Y'
,p_translate_to_text=>'{stay connected}'
,p_translate_from_text=>'{stay connected}'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(45354719062302731)
,p_page_id=>0
,p_translated_flow_id=>1998
,p_translate_to_id=>wwv_flow_api.id(60005325841446003187.1998)
,p_translate_from_id=>wwv_flow_api.id(60005325841446003187)
,p_translate_column_id=>20
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'Y'
,p_translate_to_text=>'{breadcrumb}'
,p_translate_from_text=>'{breadcrumb}'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(45354916796302732)
,p_page_id=>1
,p_translated_flow_id=>1998
,p_translate_to_id=>wwv_flow_api.id(83202057744152016.1998)
,p_translate_from_id=>wwv_flow_api.id(83202057744152016)
,p_translate_column_id=>20
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'Y'
,p_translate_to_text=>'Region'
,p_translate_from_text=>'Region'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(45356968966302747)
,p_translated_flow_id=>1998
,p_translate_to_id=>wwv_flow_api.id(60181469539048470347.1998)
,p_translate_from_id=>wwv_flow_api.id(60181469539048470347)
,p_translate_column_id=>23
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'Y'
,p_translate_to_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<!--[if lt IE 9]>',
'    <html class="no-js lt-ie9" lang="en" dir="ltr">',
'    <![endif]-->',
'    <!--[if gt IE 8]>',
'        <!-->',
'        <html class="no-js" lang="en" dir="ltr">',
'        <!--<![endif]-->',
'        ',
'        <head>',
'            <meta charset="utf-8">',
'            <!-- Web Experience Toolkit (WET) / Boîte à outils de l''expérience Web (BOEW) wet-boew.github.io/wet-boew/License-en.html',
'            / wet-boew.github.io/wet-boew/Licence-fr.html -->',
'            <title>#TITLE#</title>',
'            <meta content="width=device-width,initial-scale=1" name="viewport">',
'            <!-- Meta data -->',
'            <meta name="description" content="Web Experience Toolkit (WET) includes reusable components for building and maintaining innovative Web sites that are accessible, usable, and interoperable. These reusable components are open source softwa'
||'re and free for use by departments and external Web communities">',
'            <!-- Meta data-->',
'            <!--[if gte IE 9 | !IE ]><!-->',
'                <link href="&THEME_PATH.assets/favicon.ico" rel="icon" type="image/x-icon">',
'                <!-- Mandatory APEX CSS -->',
'                #HEAD# ',
'                #APEX_CSS#            ',
'            ',
'                <link rel="stylesheet" href="&THEME_PATH.css/theme.min.css">',
'                ',
'                <!-- Your App CSS -->',
'                #THEME_CSS# ',
'                #THEME_STYLE_CSS# ',
'                #TEMPLATE_CSS# ',
'                #APPLICATION_CSS#',
'                ',
'                <!-- Additionnal CSS -->',
'                #PAGE_CSS#',
'            <!--<![endif]-->',
'            <!--[if lt IE 9]>',
'                <link href="&THEME_PATH.assets/favicon.ico" rel="shortcut icon" />',
'                <link rel="stylesheet" href="&THEME_PATH.css/ie8-theme.min.css" />',
'                <script src="&WET_BOEW_PATH.js/ie8-wet-boew.min.js"></script>',
'            <![endif]-->',
'            <noscript>',
'                <link rel="stylesheet" href="&WET_BOEW_PATH.css/noscript.min.css" />',
'            </noscript>',
'        </head>',
'',
'        <body id="#PAGE_STATIC_ID#" class="#PAGE_CSS_CLASSES#" #ONLOAD# vocab="http://schema.org/" typeof="WebPage">'))
,p_translate_from_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<!--[if lt IE 9]>',
'    <html class="no-js lt-ie9" lang="fr" dir="ltr">',
'    <![endif]-->',
'    <!--[if gt IE 8]>',
'        <!-->',
'        <html class="no-js" lang="fr" dir="ltr">',
'        <!--<![endif]-->',
'        ',
'        <head>',
'            <meta charset="utf-8">',
'            <!-- Web Experience Toolkit (WET) / Boîte à outils de l''expérience Web (BOEW) wet-boew.github.io/wet-boew/License-en.html',
'            / wet-boew.github.io/wet-boew/Licence-fr.html -->',
'            <title>#TITLE#</title>',
'            <meta content="width=device-width,initial-scale=1" name="viewport">',
'            <!-- Meta data -->',
'            <meta name="description" content="Web Experience Toolkit (WET) includes reusable components for building and maintaining innovative Web sites that are accessible, usable, and interoperable. These reusable components are open source softwa'
||'re and free for use by departments and external Web communities">',
'            <!-- Meta data-->',
'            <!--[if gte IE 9 | !IE ]><!-->',
'                <link href="&THEME_PATH.assets/favicon.ico" rel="icon" type="image/x-icon">',
'                <!-- Mandatory APEX CSS -->',
'                #HEAD# ',
'                #APEX_CSS#            ',
'            ',
'                <link rel="stylesheet" href="&THEME_PATH.css/theme.min.css">',
'                ',
'                <!-- Your App CSS -->',
'                #THEME_CSS# ',
'                #THEME_STYLE_CSS# ',
'                #TEMPLATE_CSS# ',
'                #APPLICATION_CSS#',
'                ',
'                <!-- Additionnal CSS -->',
'                #PAGE_CSS#',
'            <!--<![endif]-->',
'            <!--[if lt IE 9]>',
'                <link href="&THEME_PATH.assets/favicon.ico" rel="shortcut icon" />',
'                <link rel="stylesheet" href="&THEME_PATH.css/ie8-theme.min.css" />',
'                <script src="&WET_BOEW_PATH.js/ie8-wet-boew.min.js"></script>',
'            <![endif]-->',
'            <noscript>',
'                <link rel="stylesheet" href="&WET_BOEW_PATH.css/noscript.min.css" />',
'            </noscript>',
'        </head>',
'',
'        <body id="#PAGE_STATIC_ID#" class="#PAGE_CSS_CLASSES#" #ONLOAD# vocab="http://schema.org/" typeof="WebPage">'))
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(45357191170302755)
,p_translated_flow_id=>1998
,p_translate_to_id=>wwv_flow_api.id(61284249006992054844.1998)
,p_translate_from_id=>wwv_flow_api.id(61284249006992054844)
,p_translate_column_id=>23
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'Y'
,p_translate_to_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<!--[if lt IE 9]>',
'    <html class="no-js lt-ie9" lang="en" dir="ltr">',
'    <![endif]-->',
'    <!--[if gt IE 8]>',
'        <!-->',
'        <html class="no-js" lang="en" dir="ltr">',
'        <!--<![endif]-->',
'        ',
'        <head>',
'            <meta charset="utf-8">',
'            <!-- Web Experience Toolkit (WET) / Boîte à outils de l''expérience Web (BOEW) wet-boew.github.io/wet-boew/License-en.html',
'            / wet-boew.github.io/wet-boew/Licence-fr.html -->',
'            <title>#TITLE#</title>',
'            <meta content="width=device-width,initial-scale=1" name="viewport">',
'            <!-- Meta data -->',
'            <meta name="description" content="Web Experience Toolkit (WET)">',
'            <!-- Meta data-->',
'            <!--[if gte IE 9 | !IE ]><!-->',
'                <link href="&THEME_PATH.assets/favicon.ico" rel="icon" type="image/x-icon">',
'                <!-- Mandatory APEX CSS -->',
'                #HEAD# ',
'                #APEX_CSS#',
'            ',
'                <link rel="stylesheet" href="&THEME_PATH.css/theme.min.css">',
'                ',
'                <!-- Your App CSS -->',
'                #THEME_CSS# ',
'                #THEME_STYLE_CSS# ',
'                #TEMPLATE_CSS# ',
'                #APPLICATION_CSS#',
'                ',
'                <!-- Additionnal CSS -->',
'                #PAGE_CSS#',
'            <!--<![endif]-->',
'            <!--[if lt IE 9]>',
'                <link href="&THEME_PATH.assets/favicon.ico" rel="shortcut icon" />',
'                <link rel="stylesheet" href="&THEME_PATH.css/ie8-theme.min.css" />',
'                <script src="&WET_BOEW_PATH.js/ie8-wet-boew.min.js"></script>',
'            <![endif]-->',
'            <noscript>',
'                <link rel="stylesheet" href="&WET_BOEW_PATH.css/noscript.min.css" />',
'            </noscript>',
'        </head>',
'        ',
'        <body id="#PAGE_STATIC_ID#" class="#PAGE_CSS_CLASSES#" #ONLOAD# vocab="http://schema.org/" typeof="WebPage">'))
,p_translate_from_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<!--[if lt IE 9]>',
'    <html class="no-js lt-ie9" lang="fr" dir="ltr">',
'    <![endif]-->',
'    <!--[if gt IE 8]>',
'        <!-->',
'        <html class="no-js" lang="fr" dir="ltr">',
'        <!--<![endif]-->',
'        ',
'        <head>',
'            <meta charset="utf-8">',
'            <!-- Web Experience Toolkit (WET) / Boîte à outils de l''expérience Web (BOEW) wet-boew.github.io/wet-boew/License-en.html',
'            / wet-boew.github.io/wet-boew/Licence-fr.html -->',
'            <title>#TITLE#</title>',
'            <meta content="width=device-width,initial-scale=1" name="viewport">',
'            <!-- Meta data -->',
'            <meta name="description" content="Web Experience Toolkit (WET)">',
'            <!-- Meta data-->',
'            <!--[if gte IE 9 | !IE ]><!-->',
'                <link href="&THEME_PATH.assets/favicon.ico" rel="icon" type="image/x-icon">',
'                <!-- Mandatory APEX CSS -->',
'                #HEAD# ',
'                #APEX_CSS#',
'            ',
'                <link rel="stylesheet" href="&THEME_PATH.css/theme.min.css">',
'                ',
'                <!-- Your App CSS -->',
'                #THEME_CSS# ',
'                #THEME_STYLE_CSS# ',
'                #TEMPLATE_CSS# ',
'                #APPLICATION_CSS#',
'                ',
'                <!-- Additionnal CSS -->',
'                #PAGE_CSS#',
'            <!--<![endif]-->',
'            <!--[if lt IE 9]>',
'                <link href="&THEME_PATH.assets/favicon.ico" rel="shortcut icon" />',
'                <link rel="stylesheet" href="&THEME_PATH.css/ie8-theme.min.css" />',
'                <script src="&WET_BOEW_PATH.js/ie8-wet-boew.min.js"></script>',
'            <![endif]-->',
'            <noscript>',
'                <link rel="stylesheet" href="&WET_BOEW_PATH.css/noscript.min.css" />',
'            </noscript>',
'        </head>',
'        ',
'        <body id="#PAGE_STATIC_ID#" class="#PAGE_CSS_CLASSES#" #ONLOAD# vocab="http://schema.org/" typeof="WebPage">'))
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(45357563179302762)
,p_translated_flow_id=>1998
,p_translate_to_id=>wwv_flow_api.id(60181469539048470347.1998)
,p_translate_from_id=>wwv_flow_api.id(60181469539048470347)
,p_translate_column_id=>24
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'Y'
,p_translate_to_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!-- Mandatory APEX JS -->',
'#DEVELOPER_TOOLBAR# ',
'#APEX_JAVASCRIPT#',
'',
'<!--[if gte IE 9 | !IE ]><!-->',
'    <script src="&WET_BOEW_PATH.js/wet-boew.min.js"></script>',
'<!--<![endif]-->',
'',
'<!--[if lt IE 9]>',
'    <script src="&WET_BOEW_PATH.js/ie8-wet-boew2.min.js"></script>',
'<![endif]-->',
'',
'<script src="&THEME_PATH.js/theme.min.js"></script>',
'',
'<!-- Your JS -->',
'#THEME_JAVASCRIPT# ',
'#TEMPLATE_JAVASCRIPT# ',
'#APPLICATION_JAVASCRIPT#',
'',
'<!-- Additionnal JS -->',
'#PAGE_JAVASCRIPT#',
'',
'<!-- Generated Stuff -->',
'#GENERATED_CSS# ',
'#GENERATED_JAVASCRIPT#',
'',
'</body>',
'</html>'))
,p_translate_from_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!-- Mandatory APEX JS -->',
'#DEVELOPER_TOOLBAR# ',
'#APEX_JAVASCRIPT#',
'',
'<!--[if gte IE 9 | !IE ]><!-->',
'    <script src="&WET_BOEW_PATH.js/wet-boew.min.js"></script>',
'<!--<![endif]-->',
'',
'<!--[if lt IE 9]>',
'    <script src="&WET_BOEW_PATH.js/ie8-wet-boew2.min.js"></script>',
'<![endif]-->',
'',
'<script src="&THEME_PATH.js/theme.min.js"></script>',
'',
'<!-- Your JS -->',
'#THEME_JAVASCRIPT# ',
'#TEMPLATE_JAVASCRIPT# ',
'#APPLICATION_JAVASCRIPT#',
'',
'<!-- Additionnal JS -->',
'#PAGE_JAVASCRIPT#',
'',
'<!-- Generated Stuff -->',
'#GENERATED_CSS# ',
'#GENERATED_JAVASCRIPT#',
'',
'</body>',
'</html>'))
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(45357726568302762)
,p_translated_flow_id=>1998
,p_translate_to_id=>wwv_flow_api.id(61284249006992054844.1998)
,p_translate_from_id=>wwv_flow_api.id(61284249006992054844)
,p_translate_column_id=>24
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'Y'
,p_translate_to_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!-- Mandatory APEX JS -->',
'#DEVELOPER_TOOLBAR# ',
'#APEX_JAVASCRIPT#',
'',
'<!--[if gte IE 9 | !IE ]><!-->',
'    <script src="&WET_BOEW_PATH.js/wet-boew.min.js"></script>',
'<!--<![endif]-->',
'',
'<!--[if lt IE 9]>',
'    <script src="&WET_BOEW_PATH.js/ie8-wet-boew2.min.js"></script>',
'<![endif]-->',
'',
'<script src="&THEME_PATH.js/theme.min.js"></script>',
'',
'<!-- Your JS -->',
'#THEME_JAVASCRIPT# ',
'#TEMPLATE_JAVASCRIPT# ',
'#APPLICATION_JAVASCRIPT#',
'',
'<!-- Additionnal JS -->',
'#PAGE_JAVASCRIPT#',
'',
'<!-- Generated Stuff -->',
'#GENERATED_CSS# ',
'#GENERATED_JAVASCRIPT#',
'',
'</body>',
'</html>'))
,p_translate_from_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!-- Mandatory APEX JS -->',
'#DEVELOPER_TOOLBAR# ',
'#APEX_JAVASCRIPT#',
'',
'<!--[if gte IE 9 | !IE ]><!-->',
'    <script src="&WET_BOEW_PATH.js/wet-boew.min.js"></script>',
'<!--<![endif]-->',
'',
'<!--[if lt IE 9]>',
'    <script src="&WET_BOEW_PATH.js/ie8-wet-boew2.min.js"></script>',
'<![endif]-->',
'',
'<script src="&THEME_PATH.js/theme.min.js"></script>',
'',
'<!-- Your JS -->',
'#THEME_JAVASCRIPT# ',
'#TEMPLATE_JAVASCRIPT# ',
'#APPLICATION_JAVASCRIPT#',
'',
'<!-- Additionnal JS -->',
'#PAGE_JAVASCRIPT#',
'',
'<!-- Generated Stuff -->',
'#GENERATED_CSS# ',
'#GENERATED_JAVASCRIPT#',
'',
'</body>',
'</html>'))
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(45358112509302770)
,p_translated_flow_id=>1998
,p_translate_to_id=>wwv_flow_api.id(60181469539048470347.1998)
,p_translate_from_id=>wwv_flow_api.id(60181469539048470347)
,p_translate_column_id=>25
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'Y'
,p_translate_to_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_OPEN#',
'',
'<!-- Item Container -->',
'#REGION_POSITION_01#',
'<!-- Header -->',
'    <header>',
'        <div id="wb-bnr">            ',
'            #NAVIGATION_BAR#',
'            <div class="container">',
'                <div class="row">',
'                    <div id="wb-sttl" class="col-md-6">',
'                        <a href="http://dec-ced.gc.ca/eng/index.html">',
'                            <span>#LOGO#</span>',
'                        </a>',
'                    </div>',
'                    <!--object id="wmms" type="image/svg+xml" tabindex="-1" role="img" data="&THEME_PATH.assets/wmms.svg" aria-label="Symbol of the Government of Canada"></object-->',
'                    <img id="wmms" tabindex="-1" src="&THEME_PATH.assets/wmms.png" aria-label="Symbol of the Government of Canada" alt="Symbol of the Government of Canada">',
'                    #REGION_POSITION_02#',
'                </div>',
'            </div>',
'        </div>',
'        #TOP_GLOBAL_NAVIGATION_LIST#',
'        #SIDE_GLOBAL_NAVIGATION_LIST#',
'        #REGION_POSITION_03#',
'    </header>',
'    <main class="container">',
'        <div class="row">',
'            <div class="col-md-3 visible-md visible-lg">',
'                #REGION_POSITION_04#',
'            </div>',
'            <div class="col-md-9">',
'                <div role="main" property="mainContentOfPage">',
'                    <h1 id="wb-cont" property="name">#TITLE#</h1>',
'                    ',
'                    #GLOBAL_NOTIFICATION##NOTIFICATION_MESSAGE##SUCCESS_MESSAGE#',
'                    #BODY#',
'',
'                    <dl id="wb-dtmd">',
'                        <dt>Modified date:&#32;</dt>',
'                        <dd>',
'                            <time property="dateModified">&APP_DATE_MODIFIED.</time>',
'                        </dd>',
'                    </dl>',
'                </div>',
'            </div>',
'        </div>',
'    </main>',
'    <footer id="wb-info" class="visible-sm visible-md visible-lg wb-navcurr">',
'        <div class="container">',
'            <nav>',
'                #REGION_POSITION_07#',
'            </nav>',
'        </div>',
'        #REGION_POSITION_08#',
'    </footer>',
'',
'#FORM_CLOSE#'))
,p_translate_from_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_OPEN#',
'',
'<!-- Item Container -->',
'#REGION_POSITION_01#',
'<!-- Header -->',
'    <header>',
'        <div id="wb-bnr">            ',
'            #NAVIGATION_BAR#',
'            <div class="container">',
'                <div class="row">',
'                    <div id="wb-sttl" class="col-md-6">',
'                        <a href="http://dec-ced.gc.ca/fra/index.html">',
'                            <span>#LOGO#</span>',
'                        </a>',
'                    </div>',
'                    <!--object id="wmms" type="image/svg+xml" tabindex="-1" role="img" data="&THEME_PATH.assets/wmms.svg" aria-label="Symbol of the Government of Canada"></object-->',
'                    <img id="wmms" tabindex="-1" src="&THEME_PATH.assets/wmms.png" aria-label="Symbol of the Government of Canada" alt="Symbol of the Government of Canada">',
'                    #REGION_POSITION_02#',
'                </div>',
'            </div>',
'        </div>',
'        #TOP_GLOBAL_NAVIGATION_LIST#',
'        #SIDE_GLOBAL_NAVIGATION_LIST#',
'        #REGION_POSITION_03#',
'    </header>',
'    <main class="container">',
'        <div class="row">',
'            <div class="col-md-3 visible-md visible-lg">',
'                #REGION_POSITION_04#',
'            </div>',
'            <div class="col-md-9">',
'                <div role="main" property="mainContentOfPage">',
'                    <h1 id="wb-cont" property="name">#TITLE#</h1>',
'                    ',
'                    #GLOBAL_NOTIFICATION##NOTIFICATION_MESSAGE##SUCCESS_MESSAGE#',
'                    #BODY#',
'',
'                    <dl id="wb-dtmd">',
'                        <dt>Date de modification :&#32;</dt>',
'                        <dd>',
'                            <time property="dateModified">&APP_DATE_MODIFIED.</time>',
'                        </dd>',
'                    </dl>',
'                </div>',
'            </div>',
'        </div>',
'    </main>',
'    <footer id="wb-info" class="visible-sm visible-md visible-lg wb-navcurr">',
'        <div class="container">',
'            <nav>',
'                #REGION_POSITION_07#',
'            </nav>',
'        </div>',
'        #REGION_POSITION_08#',
'    </footer>',
'',
'#FORM_CLOSE#'))
);
end;
/
begin
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(45358356937302774)
,p_translated_flow_id=>1998
,p_translate_to_id=>wwv_flow_api.id(61284249006992054844.1998)
,p_translate_from_id=>wwv_flow_api.id(61284249006992054844)
,p_translate_column_id=>25
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'Y'
,p_translate_to_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_OPEN#',
'',
'<!-- Item Container -->',
'#REGION_POSITION_01#',
'<!-- Header -->',
'    <header>',
'        <div id="wb-bnr">            ',
'            #NAVIGATION_BAR#',
'            <div class="container">',
'                <div class="row">',
'                    <div id="wb-sttl" class="col-md-6">',
'                        <a href="http://dec-ced.gc.ca/eng/index.html">',
'                            <span>#LOGO#</span>',
'                        </a>',
'                    </div>',
'                    <!--object id="wmms" type="image/svg+xml" tabindex="-1" role="img" data="&THEME_PATH.assets/wmms.svg" aria-label="Symbol of the Government of Canada"></object>-->',
'                    <img id="wmms" tabindex="-1" src="&THEME_PATH.assets/wmms.png" aria-label="Symbol of the Government of Canada" alt="Symbol of the Government of Canada">',
'                    #REGION_POSITION_02#',
'                </div>',
'            </div>',
'        </div>',
'        #TOP_GLOBAL_NAVIGATION_LIST#',
'        #SIDE_GLOBAL_NAVIGATION_LIST#',
'        #REGION_POSITION_03#',
'    </header>',
'    <main property="mainContentOfPage" class="container">',
'        <h1 id="wb-cont" property="name">#TITLE#</h1>',
'        ',
'        #GLOBAL_NOTIFICATION##NOTIFICATION_MESSAGE##SUCCESS_MESSAGE#',
'        #BODY#',
'        ',
'        <dl id="wb-dtmd">',
'            <dt>Modified date:&#32;</dt>',
'            <dd>',
'                <time property="dateModified">&APP_DATE_MODIFIED.</time>',
'            </dd>',
'        </dl>',
'    </main>',
'    <footer id="wb-info" class="visible-sm visible-md visible-lg wb-navcurr">',
'        <div class="container">',
'            <nav>',
'                #REGION_POSITION_07#',
'            </nav>',
'        </div>',
'        #REGION_POSITION_08#',
'    </footer>',
'',
'#FORM_CLOSE#'))
,p_translate_from_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_OPEN#',
'',
'<!-- Item Container -->',
'#REGION_POSITION_01#',
'<!-- Header -->',
'    <header>',
'        <div id="wb-bnr">            ',
'            #NAVIGATION_BAR#',
'            <div class="container">',
'                <div class="row">',
'                    <div id="wb-sttl" class="col-md-6">',
'                        <a href="http://dec-ced.gc.ca/fra/index.html">',
'                            <span>#LOGO#</span>',
'                        </a>',
'                    </div>',
'                    <!--object id="wmms" type="image/svg+xml" tabindex="-1" role="img" data="&THEME_PATH.assets/wmms.svg" aria-label="Symbol of the Government of Canada"></object>-->',
'                    <img id="wmms" tabindex="-1" src="&THEME_PATH.assets/wmms.png" aria-label="Symbol of the Government of Canada" alt="Symbol of the Government of Canada">',
'                    #REGION_POSITION_02#',
'                </div>',
'            </div>',
'        </div>',
'        #TOP_GLOBAL_NAVIGATION_LIST#',
'        #SIDE_GLOBAL_NAVIGATION_LIST#',
'        #REGION_POSITION_03#',
'    </header>',
'    <main property="mainContentOfPage" class="container">',
'        <h1 id="wb-cont" property="name">#TITLE#</h1>',
'        ',
'        #GLOBAL_NOTIFICATION##NOTIFICATION_MESSAGE##SUCCESS_MESSAGE#',
'        #BODY#',
'        ',
'        <dl id="wb-dtmd">',
'            <dt>Date de modification :&#32;</dt>',
'            <dd>',
'                <time property="dateModified">&APP_DATE_MODIFIED.</time>',
'            </dd>',
'        </dl>',
'    </main>',
'    <footer id="wb-info" class="visible-sm visible-md visible-lg wb-navcurr">',
'        <div class="container">',
'            <nav>',
'                #REGION_POSITION_07#',
'            </nav>',
'        </div>',
'        #REGION_POSITION_08#',
'    </footer>',
'',
'#FORM_CLOSE#'))
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(45370409950302871)
,p_translated_flow_id=>1998
,p_translate_to_id=>wwv_flow_api.id(83644998370071595.1998)
,p_translate_from_id=>wwv_flow_api.id(83644998370071595)
,p_translate_column_id=>37
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'Y'
,p_translate_to_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="required">',
'<span class="field-name">'))
,p_translate_from_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="required">',
'<span class="field-name">'))
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(45371402634302877)
,p_translated_flow_id=>1998
,p_translate_to_id=>wwv_flow_api.id(83644998370071595.1998)
,p_translate_from_id=>wwv_flow_api.id(83644998370071595)
,p_translate_column_id=>38
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'Y'
,p_translate_to_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</span>',
'<strong class="required">(required)</strong>',
'</label>'))
,p_translate_from_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</span>',
'<strong class="required">(obligatoire)</strong>',
'</label>'))
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(45373431717302894)
,p_translated_flow_id=>1998
,p_translate_to_id=>wwv_flow_api.id(83644998370071595.1998)
,p_translate_from_id=>wwv_flow_api.id(83644998370071595)
,p_translate_column_id=>40
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'Y'
,p_translate_to_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<br/><label><strong id="#CURRENT_ITEM_NAME#-error" class="error">',
'<span class="label label-danger">#ERROR_MESSAGE#</span>',
'</strong></label>'))
,p_translate_from_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<br/><label><strong id="#CURRENT_ITEM_NAME#-error" class="error">',
'<span class="label label-danger">#ERROR_MESSAGE#</span>',
'</strong></label>'))
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(45382207729303044)
,p_translated_flow_id=>1998
,p_translate_to_id=>wwv_flow_api.id(60073819501559098937.1998)
,p_translate_from_id=>wwv_flow_api.id(60073819501559098937)
,p_translate_column_id=>53
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'Y'
,p_translate_to_text=>'<li><a href="#LINK#" class="#A01#" rel="external" data-lang="#A02#">#TEXT#</a></li>'
,p_translate_from_text=>'<li><a href="#LINK#" class="#A01#" rel="external" data-lang="#A02#">#TEXT#</a></li>'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(45382499013303045)
,p_translated_flow_id=>1998
,p_translate_to_id=>wwv_flow_api.id(60073035055687994806.1998)
,p_translate_from_id=>wwv_flow_api.id(60073035055687994806)
,p_translate_column_id=>53
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'Y'
,p_translate_to_text=>'<li><a href="#LINK#" class="item wb-navcurr" role="menuitem" aria-haspopup="true">#TEXT#</a></li>'
,p_translate_from_text=>'<li><a href="#LINK#" class="item wb-navcurr" role="menuitem" aria-haspopup="true">#TEXT#</a></li>'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(45384283065303058)
,p_translated_flow_id=>1998
,p_translate_to_id=>wwv_flow_api.id(60073819501559098937.1998)
,p_translate_from_id=>wwv_flow_api.id(60073819501559098937)
,p_translate_column_id=>54
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'Y'
,p_translate_to_text=>'<li><a href="#LINK#" class="#A01#" rel="external" data-lang="#A02#">#TEXT#</a></li>'
,p_translate_from_text=>'<li><a href="#LINK#" class="#A01#" rel="external" data-lang="#A02#">#TEXT#</a></li>'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(45384424310303058)
,p_translated_flow_id=>1998
,p_translate_to_id=>wwv_flow_api.id(60073035055687994806.1998)
,p_translate_from_id=>wwv_flow_api.id(60073035055687994806)
,p_translate_column_id=>54
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'Y'
,p_translate_to_text=>'<li><a href="#LINK#" class="item" role="menuitem" aria-haspopup="true">#TEXT#</a></li>'
,p_translate_from_text=>'<li><a href="#LINK#" class="item" role="menuitem" aria-haspopup="true">#TEXT#</a></li>'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(45386289923303077)
,p_translated_flow_id=>1998
,p_translate_to_id=>wwv_flow_api.id(60073819501559098937.1998)
,p_translate_from_id=>wwv_flow_api.id(60073819501559098937)
,p_translate_column_id=>55
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'Y'
,p_translate_to_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="wb-bar">',
'    <div class="container">',
'        <div class="row">',
'            <!--object id="gcwu-sig" type="image/svg+xml" tabindex="-1" role="img" data="&THEME_PATH.assets/sig-en.svg" aria-label="Government of Canada"></object-->',
'            <img id="gcwu-sig" tabindex="-1" src="&THEME_PATH.assets/sig-en.svg" aria-label="Government of Canada" alt="Government of Canada">',
'            <ul id="gc-bar" class="list-inline">'))
,p_translate_from_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="wb-bar">',
'    <div class="container">',
'        <div class="row">',
'            <!--object id="gcwu-sig" type="image/svg+xml" tabindex="-1" role="img" data="&THEME_PATH.assets/sig-fr.svg" aria-label="Government of Canada"></object-->',
'            <img id="gcwu-sig" tabindex="-1" src="&THEME_PATH.assets/sig-fr.svg" aria-label="Government of Canada" alt="Government of Canada">',
'            <ul id="gc-bar" class="list-inline">'))
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(45386491994303077)
,p_translated_flow_id=>1998
,p_translate_to_id=>wwv_flow_api.id(60073035055687994806.1998)
,p_translate_from_id=>wwv_flow_api.id(60073035055687994806)
,p_translate_column_id=>55
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'Y'
,p_translate_to_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<nav role="navigation" id="wb-sm" data-ajax-replace="&APP_AJAX_MENU_EN." data-trgt="mb-pnl" class="wb-menu visible-md visible-lg" typeof="SiteNavigationElement">',
'    <div class="container nvbar">',
'        <h2>Menu</h2>',
'            <div class="row">',
'                <ul class="list-inline menu" role="menu">'))
,p_translate_from_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<nav role="navigation" id="wb-sm" data-ajax-replace="&APP_AJAX_MENU_FR." data-trgt="mb-pnl" class="wb-menu visible-md visible-lg" typeof="SiteNavigationElement">',
'    <div class="container nvbar">',
'        <h2>Menu</h2>',
'            <div class="row">',
'                <ul class="list-inline menu" role="menu">'))
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(45388294642303087)
,p_translated_flow_id=>1998
,p_translate_to_id=>wwv_flow_api.id(60073819501559098937.1998)
,p_translate_from_id=>wwv_flow_api.id(60073819501559098937)
,p_translate_column_id=>56
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'Y'
,p_translate_to_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'            </ul>',
'            <section class="wb-mb-links col-xs-12 visible-sm visible-xs" id="wb-glb-mn">',
'                <h2>Search and menu</h2>',
'                <ul class="pnl-btn list-inline text-right">',
'                    <li><a href="#mb-pnl" title="Search and menus" aria-controls="mb-pnl" class="overlay-lnk btn btn-sm btn-default"',
'                        role="button"><span class="glyphicon glyphicon-search"><span class="glyphicon glyphicon-th-list"><span class="wb-inv">Search and menu</span></span></span></a></li>',
'                </ul>',
'                <div id="mb-pnl"></div>',
'            </section>',
'        </div>',
'    </div>',
'</div>'))
,p_translate_from_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'            </ul>',
'            <section class="wb-mb-links col-xs-12 visible-sm visible-xs" id="wb-glb-mn">',
'                <h2>Recherche et menu</h2>',
'                <ul class="pnl-btn list-inline text-right">',
'                    <li><a href="#mb-pnl" title="Search and menus" aria-controls="mb-pnl" class="overlay-lnk btn btn-sm btn-default"',
'                        role="button"><span class="glyphicon glyphicon-search"><span class="glyphicon glyphicon-th-list"><span class="wb-inv">Recherche et menu</span></span></span></a></li>',
'                </ul>',
'                <div id="mb-pnl"></div>',
'            </section>',
'        </div>',
'    </div>',
'</div>'))
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(45388497986303087)
,p_translated_flow_id=>1998
,p_translate_to_id=>wwv_flow_api.id(60073035055687994806.1998)
,p_translate_from_id=>wwv_flow_api.id(60073035055687994806)
,p_translate_column_id=>56
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'Y'
,p_translate_to_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</ul>',
'</div>',
'</div>',
'</nav>'))
,p_translate_from_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</ul>',
'</div>',
'</div>',
'</nav>'))
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(45393660584303254)
,p_translated_flow_id=>1998
,p_translate_to_id=>998.1998
,p_translate_from_id=>998
,p_translate_column_id=>80
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'/i/wet-boew/'
,p_translate_from_text=>'/i/wet-boew/'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(45393889640303259)
,p_translated_flow_id=>1998
,p_translate_to_id=>998.1998
,p_translate_from_id=>998
,p_translate_column_id=>81
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'/i/theme-gcwu-fegc/'
,p_translate_from_text=>'/i/theme-gcwu-fegc/'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(45394006234303264)
,p_translated_flow_id=>1998
,p_translate_to_id=>998.1998
,p_translate_from_id=>998
,p_translate_column_id=>82
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'2017-01-19'
,p_translate_from_text=>'2017-01-19'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(45397507127303407)
,p_translated_flow_id=>1998
,p_translate_to_id=>wwv_flow_api.id(60180988362472092742.1998)
,p_translate_from_id=>wwv_flow_api.id(60180988362472092742)
,p_translate_column_id=>100
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Accueil'
,p_translate_from_text=>'Accueil'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(45404185632303547)
,p_translated_flow_id=>1998
,p_translate_to_id=>wwv_flow_api.id(60073035055687994806.1998)
,p_translate_from_id=>wwv_flow_api.id(60073035055687994806)
,p_translate_column_id=>115
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'Y'
,p_translate_to_text=>'<ul class="sm list-unstyled" role="menu" aria-expanded="false" aria-hidden="true">'
,p_translate_from_text=>'<ul class="sm list-unstyled" role="menu" aria-expanded="false" aria-hidden="true">'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(45406166586303562)
,p_translated_flow_id=>1998
,p_translate_to_id=>wwv_flow_api.id(60073035055687994806.1998)
,p_translate_from_id=>wwv_flow_api.id(60073035055687994806)
,p_translate_column_id=>116
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'Y'
,p_translate_to_text=>'</ul></li>'
,p_translate_from_text=>'</ul></li>'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(45410138822303583)
,p_translated_flow_id=>1998
,p_translate_to_id=>wwv_flow_api.id(60073035055687994806.1998)
,p_translate_from_id=>wwv_flow_api.id(60073035055687994806)
,p_translate_column_id=>118
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'Y'
,p_translate_to_text=>'<li><a href="#LINK#" role="menuitem">#TEXT#</a></li>'
,p_translate_from_text=>'<li><a href="#LINK#" role="menuitem">#TEXT#</a></li>'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(45412117277303594)
,p_translated_flow_id=>1998
,p_translate_to_id=>wwv_flow_api.id(60073035055687994806.1998)
,p_translate_from_id=>wwv_flow_api.id(60073035055687994806)
,p_translate_column_id=>119
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'Y'
,p_translate_to_text=>'<li><a href="#LINK#" role="menuitem">#TEXT#</a></li>'
,p_translate_from_text=>'<li><a href="#LINK#" role="menuitem">#TEXT#</a></li>'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(45414121300303604)
,p_translated_flow_id=>1998
,p_translate_to_id=>wwv_flow_api.id(60073035055687994806.1998)
,p_translate_from_id=>wwv_flow_api.id(60073035055687994806)
,p_translate_column_id=>120
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'Y'
,p_translate_to_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li>',
'    <a href="#LINK#" class="item wb-navcurr" role="menuitem" aria-haspopup="true">',
'        #TEXT#',
'    </a>',
'</li>'))
,p_translate_from_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li>',
'    <a href="#LINK#" class="item wb-navcurr" role="menuitem" aria-haspopup="true">',
'        #TEXT#',
'    </a>',
'</li>'))
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(45416130360303621)
,p_translated_flow_id=>1998
,p_translate_to_id=>wwv_flow_api.id(60073035055687994806.1998)
,p_translate_from_id=>wwv_flow_api.id(60073035055687994806)
,p_translate_column_id=>121
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'Y'
,p_translate_to_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li>',
'    <a href="#LINK#" class="item" role="menuitem" aria-haspopup="true">',
'        #TEXT#   ',
'    </a>',
'</li>'))
,p_translate_from_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li>',
'    <a href="#LINK#" class="item" role="menuitem" aria-haspopup="true">',
'        #TEXT#   ',
'    </a>',
'</li>'))
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(45429347810303792)
,p_translated_flow_id=>1998
,p_translate_to_id=>wwv_flow_api.id(60181469539048470347.1998)
,p_translate_from_id=>wwv_flow_api.id(60181469539048470347)
,p_translate_column_id=>161
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'Y'
,p_translate_to_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="alert alert-danger">',
'#MESSAGE#',
'</section>'))
,p_translate_from_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="alert alert-danger">',
'#MESSAGE#',
'</section>'))
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(45429562346303792)
,p_translated_flow_id=>1998
,p_translate_to_id=>wwv_flow_api.id(61284249006992054844.1998)
,p_translate_from_id=>wwv_flow_api.id(61284249006992054844)
,p_translate_column_id=>161
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'Y'
,p_translate_to_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="alert alert-danger">',
'<h2>Warning</h2>',
'#MESSAGE#',
'</section>'))
,p_translate_from_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="alert alert-danger">',
'<h2>Attention</h2>',
'#MESSAGE#',
'</section>'))
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(45433470227303832)
,p_translated_flow_id=>1998
,p_translate_to_id=>wwv_flow_api.id(60181469539048470347.1998)
,p_translate_from_id=>wwv_flow_api.id(60181469539048470347)
,p_translate_column_id=>168
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'Y'
,p_translate_to_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="alert alert-success">',
'<h2>#SUCCESS_MESSAGE_HEADING#</h2>',
'#SUCCESS_MESSAGE#',
'</section>'))
,p_translate_from_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="alert alert-success">',
'<h2>#SUCCESS_MESSAGE_HEADING#</h2>',
'#SUCCESS_MESSAGE#',
'</section>'))
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(45433646775303833)
,p_translated_flow_id=>1998
,p_translate_to_id=>wwv_flow_api.id(61284249006992054844.1998)
,p_translate_from_id=>wwv_flow_api.id(61284249006992054844)
,p_translate_column_id=>168
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'Y'
,p_translate_to_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="alert alert-success">',
'<h2>#SUCCESS_MESSAGE_HEADING#</h2>',
'#SUCCESS_MESSAGE#',
'</section>'))
,p_translate_from_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="alert alert-success">',
'<h2>#SUCCESS_MESSAGE_HEADING#</h2>',
'#SUCCESS_MESSAGE#',
'</section>'))
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(45458078636304469)
,p_page_id=>0
,p_translated_flow_id=>1998
,p_translate_to_id=>wwv_flow_api.id(83127847200765820.1998)
,p_translate_from_id=>wwv_flow_api.id(83127847200765820)
,p_translate_column_id=>288
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'apex.navigation.redirect(',
'    "f?p=" + $("#pFlowId").val() ',
'    + ":" + $("#pFlowStepId").val() ',
'    + ":" + $("#pInstance").val() ',
'    + "&" + "p_lang" + "=" + $(this.triggeringElement).data("lang")',
');'))
,p_translate_from_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'apex.navigation.redirect(',
'    "f?p=" + $("#pFlowId").val() ',
'    + ":" + $("#pFlowStepId").val() ',
'    + ":" + $("#pInstance").val() ',
'    + "&" + "p_lang" + "=" + $(this.triggeringElement).data("lang")',
');'))
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(45459902307304524)
,p_translated_flow_id=>1998
,p_translate_to_id=>wwv_flow_api.id(66395262588964495227.1998)
,p_translate_from_id=>wwv_flow_api.id(66395262588964495227)
,p_translate_column_id=>298
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(45460378808304525)
,p_translated_flow_id=>1998
,p_translate_to_id=>wwv_flow_api.id(66235174796095132399.1998)
,p_translate_from_id=>wwv_flow_api.id(66235174796095132399)
,p_translate_column_id=>298
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(45461036336304537)
,p_translated_flow_id=>1998
,p_translate_to_id=>wwv_flow_api.id(66395262588964495227.1998)
,p_translate_from_id=>wwv_flow_api.id(66395262588964495227)
,p_translate_column_id=>300
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(45467285428304587)
,p_page_id=>1
,p_translated_flow_id=>1998
,p_translate_to_id=>wwv_flow_api.id(83202057744152016.1998)
,p_translate_from_id=>wwv_flow_api.id(83202057744152016)
,p_translate_column_id=>308
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(45468851095304596)
,p_page_id=>1
,p_translated_flow_id=>1998
,p_translate_to_id=>wwv_flow_api.id(83202057744152016.1998)
,p_translate_from_id=>wwv_flow_api.id(83202057744152016)
,p_translate_column_id=>309
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'HTML'
,p_translate_from_text=>'HTML'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(45580470053305225)
,p_translated_flow_id=>1998
,p_translate_to_id=>wwv_flow_api.id(66395273484302495254.1998)
,p_translate_from_id=>wwv_flow_api.id(66395273484302495254)
,p_translate_column_id=>397
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Responsive'
,p_translate_from_text=>'Responsive'
);
end;
/
prompt --application/shared_components/globalization/messages
begin
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(85931124480234348)
,p_name=>'APEX.PAGE_ITEM_IS_REQUIRED'
,p_message_language=>'fr'
,p_message_text=>'#LABEL# - Ce champ est obligatoire.'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(85931285913235665)
,p_name=>'FLOW.VALIDATION_ERROR'
,p_message_language=>'fr'
,p_message_text=>'<h2>Le formulaire n''a pu être soumis car %0 erreurs ont été trouvées.</h2>'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(85931550296236516)
,p_name=>'FLOW.SINGLE_VALIDATION_ERROR'
,p_message_language=>'fr'
,p_message_text=>'<h2>Le formulaire n''a pu être soumis car 1 erreur a été trouvée.</h2>'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(88800060655073804)
,p_name=>'APEX.PAGE_ITEM_IS_REQUIRED'
,p_message_text=>'#LABEL# - This field is required.'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(88800166880073808)
,p_name=>'FLOW.VALIDATION_ERROR'
,p_message_text=>'<h2>The form could not be submitted because %0 errors were found</h2>'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(88800312421073808)
,p_name=>'FLOW.SINGLE_VALIDATION_ERROR'
,p_message_text=>'<h2>The form could not be submitted because one error was found.</h2>'
);
end;
/
prompt --application/shared_components/globalization/dyntranslations
begin
null;
end;
/
prompt --application/shared_components/user_interface/shortcuts
begin
null;
end;
/
prompt --application/shared_components/security/authentications
begin
wwv_flow_api.create_authentication(
 p_id=>wwv_flow_api.id(83208348240165357)
,p_name=>'No Authentication'
,p_scheme_type=>'NATIVE_DAD'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
);
end;
/
prompt --application/ui_types
begin
null;
end;
/
prompt --application/user_interfaces
begin
wwv_flow_api.create_user_interface(
 p_id=>wwv_flow_api.id(66395273484302495254)
,p_ui_type_name=>'DESKTOP'
,p_display_name=>'Responsive'
,p_display_seq=>10
,p_use_auto_detect=>false
,p_is_default=>true
,p_theme_id=>4023
,p_home_url=>'f?p=&APP_ID.:1:&SESSION.'
,p_login_url=>'f?p=&APP_ID.:LOGIN_DESKTOP:&SESSION.'
,p_global_page_id=>0
,p_navigation_list_id=>wwv_flow_api.id(83180872480203164)
,p_navigation_list_position=>'TOP'
,p_navigation_list_template_id=>wwv_flow_api.id(60073035055687994806)
,p_nav_list_template_options=>'#DEFAULT#'
,p_nav_bar_type=>'LIST'
,p_nav_bar_list_id=>wwv_flow_api.id(42538673870101065)
,p_nav_bar_list_template_id=>wwv_flow_api.id(60073819501559098937)
,p_nav_bar_template_options=>'#DEFAULT#'
);
end;
/
prompt --application/user_interfaces/combined_files
begin
null;
end;
/
prompt --application/pages/page_00000
begin
wwv_flow_api.create_page(
 p_id=>0
,p_user_interface_id=>wwv_flow_api.id(66395273484302495254)
,p_name=>'Global Page'
,p_page_mode=>'NORMAL'
,p_step_title=>'Global Page - Desktop'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_step_template=>wwv_flow_api.id(61284249006992054844)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_protection_level=>'D'
,p_cache_mode=>'NOCACHE'
,p_last_updated_by=>'BELANMA0'
,p_last_upd_yyyymmddhh24miss=>'20170126104446'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(60005324611432003175)
,p_plug_name=>'{about this site}'
,p_component_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_07'
,p_list_id=>wwv_flow_api.id(83156768897374704)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(60015199812356456568)
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(60005324793564003177)
,p_plug_name=>'{contact us}'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(68988506293064346334)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>3
,p_plug_display_point=>'REGION_POSITION_07'
,p_list_id=>wwv_flow_api.id(83123400967726554)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(60006288801298365351)
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(60005324867411003178)
,p_plug_name=>'{about}'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(68988506293064346334)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>3
,p_plug_display_point=>'REGION_POSITION_07'
,p_list_id=>wwv_flow_api.id(83123249581723934)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(60006288801298365351)
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(60005325000132003179)
,p_plug_name=>'{news}'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(68988506293064346334)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>3
,p_plug_display_point=>'REGION_POSITION_07'
,p_list_id=>wwv_flow_api.id(83120708126656274)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(60006288801298365351)
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(60005325091298003180)
,p_plug_name=>'{stay connected}'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(68988506293064346334)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>3
,p_plug_display_point=>'REGION_POSITION_07'
,p_list_id=>wwv_flow_api.id(83122976294717313)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(60006288801298365351)
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(60005325841446003187)
,p_plug_name=>'{breadcrumb}'
,p_component_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_03'
,p_menu_id=>wwv_flow_api.id(66395274797595495262)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(61284424321405156113)
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(60005968423267198024)
,p_plug_name=>'{bottom links}'
,p_component_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_08'
,p_list_id=>wwv_flow_api.id(42528039400043742)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(60005977475235206287)
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(83127594376765818)
,p_name=>'onClick .switch-language'
,p_event_sequence=>10
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.switch-language'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(83127847200765820)
,p_event_id=>wwv_flow_api.id(83127594376765818)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'apex.navigation.redirect(',
'    "f?p=" + $("#pFlowId").val() ',
'    + ":" + $("#pFlowStepId").val() ',
'    + ":" + $("#pInstance").val() ',
'    + "&" + "p_lang" + "=" + $(this.triggeringElement).data("lang")',
');'))
,p_stop_execution_on_error=>'Y'
);
end;
/
prompt --application/pages/page_00001
begin
wwv_flow_api.create_page(
 p_id=>1
,p_user_interface_id=>wwv_flow_api.id(66395273484302495254)
,p_name=>'Index'
,p_page_mode=>'NORMAL'
,p_step_title=>'Index'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_step_template=>wwv_flow_api.id(61284249006992054844)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'Y'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'BELANMA0'
,p_last_upd_yyyymmddhh24miss=>'20170120090100'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(83202057744152016)
,p_plug_name=>'Region'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(61284243535934046937)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
end;
/
prompt --application/deployment/definition
begin
null;
end;
/
prompt --application/deployment/install
begin
null;
end;
/
prompt --application/deployment/checks
begin
null;
end;
/
prompt --application/deployment/buildoptions
begin
null;
end;
/
prompt --application/end_environment
begin
wwv_flow_api.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false));
commit;
end;
/
set verify on feedback on define on
prompt  ...done
