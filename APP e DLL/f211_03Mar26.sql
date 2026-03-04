prompt --application/set_environment
set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- Oracle APEX export file
--
-- You should run this script using a SQL client connected to the database as
-- the owner (parsing schema) of the application or as a database user with the
-- APEX_ADMINISTRATOR_ROLE role.
--
-- This export file has been automatically generated. Modifying this file is not
-- supported by Oracle and can lead to unexpected application and/or instance
-- behavior now or in the future.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_imp.import_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.1'
,p_default_workspace_id=>912265847025819243
,p_default_application_id=>211
,p_default_id_offset=>999945036995514803
,p_default_owner=>'WS_20260113125800'
);
end;
/
 
prompt APPLICATION 211 - RNCH_v1
--
-- Application Export:
--   Application:     211
--   Name:            RNCH_v1
--   Date and Time:   12:44 Terça-Feira Março 3, 2026
--   Exported By:     JONAS.SPINDLER@MJ.GOV.BR
--   Flashback:       0
--   Export Type:     Application Export
--     Pages:                     33
--       Items:                   52
--       Validations:              2
--       Processes:               24
--       Regions:                 84
--       Buttons:                 49
--       Dynamic Actions:         16
--     Shared Components:
--       Logic:
--         App Settings:           2
--         Build Options:          9
--       Navigation:
--         Lists:                  9
--         Breadcrumbs:            1
--           Entries:              6
--       Security:
--         Authentication:         1
--         Authorization:          3
--         ACL Roles:              3
--       User Interface:
--         Themes:                 1
--         Templates:
--         LOVs:                   8
--       PWA:
--       Globalization:
--       Reports:
--       E-Mail:
--     Supporting Objects:  Included
--   Version:         24.2.1
--   Instance ID:     2466218400519644
--

prompt --application/delete_application
begin
wwv_flow_imp.remove_flow(wwv_flow.g_flow_id);
end;
/
prompt --application/create_application
begin
wwv_imp_workspace.create_flow(
 p_id=>wwv_flow.g_flow_id
,p_owner=>nvl(wwv_flow_application_install.get_schema,'WS_20260113125800')
,p_name=>nvl(wwv_flow_application_install.get_application_name,'RNCH_v1')
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'RNCH211')
,p_page_view_logging=>'YES'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt=>'A4AD030F6325B27BE47708F615A0F6E1A22F86BF3B79788F00B3909E183402F5'
,p_bookmark_checksum_function=>'SH512'
,p_compatibility_mode=>'24.2'
,p_flow_language=>'pt-br'
,p_flow_language_derived_from=>'FLOW_PRIMARY_LANGUAGE'
,p_allow_feedback_yn=>'Y'
,p_date_format=>'DS'
,p_timestamp_format=>'DS'
,p_timestamp_tz_format=>'DS'
,p_flow_image_prefix => nvl(wwv_flow_application_install.get_image_prefix,'')
,p_authentication_id=>wwv_flow_imp.id(1966541048338857012)
,p_application_tab_set=>1
,p_logo_type=>'T'
,p_logo_text=>'RNCH'
,p_proxy_server=>nvl(wwv_flow_application_install.get_proxy,'')
,p_no_proxy_domains=>nvl(wwv_flow_application_install.get_no_proxy_domains,'')
,p_flow_version=>'Release 1.0'
,p_flow_status=>'AVAILABLE_W_EDIT_LINK'
,p_flow_unavailable_text=>unistr('Este aplicativo n\00E3o est\00E1 dispon\00EDvel no momento.')
,p_exact_substitutions_only=>'Y'
,p_browser_cache=>'N'
,p_browser_frame=>'D'
,p_runtime_api_usage=>'T'
,p_security_scheme=>wwv_flow_imp.id(1966548403394857028)
,p_rejoin_existing_sessions=>'N'
,p_csv_encoding=>'Y'
,p_auto_time_zone=>'N'
,p_substitution_string_01=>'APP_NAME'
,p_substitution_value_01=>'RNCH'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_files_version=>11
,p_version_scn=>247154112
,p_print_server_type=>'NATIVE'
,p_file_storage=>'DB'
,p_is_pwa=>'Y'
,p_pwa_is_installable=>'Y'
,p_pwa_manifest_display=>'standalone'
,p_pwa_manifest_orientation=>'any'
,p_pwa_apple_status_bar_style=>'default'
,p_pwa_is_push_enabled=>'Y'
,p_pwa_push_credential_id=>wwv_flow_imp.id(966815090739342687)
);
end;
/
prompt --application/user_interfaces
begin
wwv_flow_imp_shared.create_user_interface(
 p_id=>wwv_flow_imp.id(211)
,p_theme_id=>42
,p_home_url=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_login_url=>'f?p=&APP_ID.:LOGIN:&APP_SESSION.::&DEBUG.:::'
,p_theme_style_by_user_pref=>false
,p_built_with_love=>false
,p_global_page_id=>0
,p_navigation_list_id=>wwv_flow_imp.id(1966541908385857013)
,p_navigation_list_position=>'SIDE'
,p_navigation_list_template_id=>2467739217141810545
,p_nav_list_template_options=>'#DEFAULT#:t-TreeNav--styleA:js-navCollapsed--hidden'
,p_nav_bar_type=>'LIST'
,p_nav_bar_list_id=>wwv_flow_imp.id(1966543102810857018)
,p_nav_bar_list_template_id=>2847543055748234966
,p_nav_bar_template_options=>'#DEFAULT#'
);
end;
/
prompt --workspace/credentials/credenciais_de_notificações_por_push_do_aplicativo_318
begin
wwv_imp_workspace.create_credential(
 p_id=>wwv_flow_imp.id(966815090739342687)
,p_name=>unistr('Credenciais de Notifica\00E7\00F5es por Push do Aplicativo 318')
,p_static_id=>'Credenciais_de_Notifica_es_por_Push_do_Aplicativo_318'
,p_authentication_type=>'KEY_PAIR'
,p_prompt_on_install=>false
);
end;
/
prompt --application/shared_components/navigation/lists/menu_de_navegação
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(1966541908385857013)
,p_name=>unistr('Menu de Navega\00E7\00E3o')
,p_list_status=>'PUBLIC'
,p_version_scn=>231802590
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(1966556964630857040)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>unistr('In\00EDcio')
,p_list_item_link_target=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-home'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(1966804515003906607)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>unistr('Relat\00F3rio de Aprovados')
,p_list_item_link_target=>'f?p=&APP_ID.:3:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'3'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(1967067364748125874)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Consulta de CPF (Busca Unificada)'
,p_list_item_link_target=>'f?p=&APP_ID.:7:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-file-o'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'7'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(1968010824073641196)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'Dashboard'
,p_list_item_link_target=>'f?p=&APP_ID.:9:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-file-o'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'9'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(1972303002891150426)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>unistr('Assistente de Transmiss\00E3o')
,p_list_item_link_target=>'f?p=&APP_ID.:10:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-magic'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'10'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(1972766035739946592)
,p_list_item_display_sequence=>80
,p_list_item_link_text=>unistr('Hist\00F3rico de Processamento')
,p_list_item_link_target=>'f?p=&APP_ID.:13:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'13'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(1966733970004857385)
,p_list_item_display_sequence=>10000
,p_list_item_link_text=>unistr('Administra\00E7\00E3o')
,p_list_item_link_target=>'f?p=&APP_ID.:10000:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-user-wrench'
,p_security_scheme=>wwv_flow_imp.id(1966548326246857028)
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/barra_de_navegação
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(1966543102810857018)
,p_name=>unistr('Barra de Navega\00E7\00E3o')
,p_list_status=>'PUBLIC'
,p_version_scn=>227958820
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(1966730224602857382)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Instalar Aplicativo'
,p_list_item_link_target=>'#action$a-pwa-install'
,p_list_item_icon=>'fa-cloud-download'
,p_list_text_02=>'a-pwaInstall'
,p_list_item_current_type=>'NEVER'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(1966730621910857383)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Feedback'
,p_list_item_link_target=>'f?p=&APP_ID.:10050:&APP_SESSION.::&DEBUG.:RP,10050:P10050_PAGE_ID:&APP_PAGE_ID.'
,p_list_item_icon=>'fa-comment-o'
,p_list_item_disp_cond_type=>'EXPRESSION'
,p_list_item_disp_condition=>'apex_util.feedback_enabled'
,p_list_item_disp_condition2=>'PLSQL'
,p_list_text_02=>'icon-only'
,p_required_patch=>wwv_flow_imp.id(1966545788512857026)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(1966730879898857383)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Sobre'
,p_list_item_icon=>'fa-question-circle-o'
,p_list_text_02=>'icon-only'
,p_required_patch=>wwv_flow_imp.id(1966546262077857026)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(1966731385987857383)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>unistr('Ajuda da P\00E1gina')
,p_list_item_link_target=>'f?p=&APP_ID.:10061:&APP_SESSION.::&DEBUG.::P10061_PAGE_ID:&APP_PAGE_ID.'
,p_list_item_icon=>'fa-question-circle-o'
,p_parent_list_item_id=>wwv_flow_imp.id(1966730879898857383)
,p_list_text_02=>'icon-only'
,p_required_patch=>wwv_flow_imp.id(1966546262077857026)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(1966731794289857384)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'---'
,p_list_item_link_target=>'separator'
,p_parent_list_item_id=>wwv_flow_imp.id(1966730879898857383)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(1966732141444857384)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>unistr('P\00E1gina Sobre')
,p_list_item_link_target=>'f?p=&APP_ID.:10060:&APP_SESSION.::&DEBUG.:10060::'
,p_list_item_icon=>'fa-info-circle-o'
,p_parent_list_item_id=>wwv_flow_imp.id(1966730879898857383)
,p_required_patch=>wwv_flow_imp.id(1966546262077857026)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(1966732454873857384)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>'&APP_USER.'
,p_list_item_link_target=>'#'
,p_list_item_icon=>'fa-user'
,p_list_text_02=>'has-username'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(1966759805832857489)
,p_list_item_display_sequence=>1
,p_list_item_link_text=>unistr('Defini\00E7\00F5es')
,p_list_item_link_target=>'f?p=&APP_ID.:20000:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-gear'
,p_parent_list_item_id=>wwv_flow_imp.id(1966732454873857384)
,p_required_patch=>wwv_flow_imp.id(1966753419157857481)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(1966732987154857384)
,p_list_item_display_sequence=>80
,p_list_item_link_text=>'---'
,p_list_item_link_target=>'separator'
,p_list_item_disp_cond_type=>'USER_IS_NOT_PUBLIC_USER'
,p_parent_list_item_id=>wwv_flow_imp.id(1966732454873857384)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(1966733415857857385)
,p_list_item_display_sequence=>90
,p_list_item_link_text=>'Sair'
,p_list_item_link_target=>'&LOGOUT_URL.'
,p_list_item_icon=>'fa-sign-out'
,p_list_item_disp_cond_type=>'USER_IS_NOT_PUBLIC_USER'
,p_parent_list_item_id=>wwv_flow_imp.id(1966732454873857384)
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/configuração_do_aplicativo
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(1966735105275857387)
,p_name=>unistr('Configura\00E7\00E3o do Aplicativo')
,p_list_status=>'PUBLIC'
,p_required_patch=>wwv_flow_imp.id(1966545961323857026)
,p_version_scn=>227958805
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(1966735444647857387)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>unistr('Op\00E7\00F5es de Configura\00E7\00E3o')
,p_list_item_link_target=>'f?p=&APP_ID.:10010:&APP_SESSION.::&DEBUG.:10010::'
,p_list_item_icon=>'fa-sliders'
,p_list_text_01=>'Ativar ou desativar funcionalidades do aplicativo'
,p_required_patch=>wwv_flow_imp.id(1966545961323857026)
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/interface_do_usuário
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(1966735742782857387)
,p_name=>unistr('Interface do Usu\00E1rio')
,p_list_status=>'PUBLIC'
,p_required_patch=>wwv_flow_imp.id(1966546373383857026)
,p_version_scn=>227958805
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(1966736138972857388)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>unistr('Sele\00E7\00E3o de Estilo do Tema')
,p_list_item_link_target=>'f?p=&APP_ID.:10020:&APP_SESSION.::&DEBUG.:10020::'
,p_list_item_icon=>'fa-paint-brush'
,p_list_text_01=>unistr('Define a apar\00EAncia e a funcionalidade do aplicativo padr\00E3o')
,p_required_patch=>wwv_flow_imp.id(1966546373383857026)
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/relatórios_de_atividades
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(1966736457159857388)
,p_name=>unistr('Relat\00F3rios de Atividades')
,p_list_status=>'PUBLIC'
,p_required_patch=>wwv_flow_imp.id(1966545641652857026)
,p_version_scn=>227958805
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(1966736892739857388)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Painel de Controle'
,p_list_item_link_target=>'f?p=&APP_ID.:10030:&APP_SESSION.::&DEBUG.:10030::'
,p_list_item_icon=>'fa-area-chart'
,p_list_text_01=>unistr('Exibir m\00E9tricas de atividade do aplicativo')
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(1966737264145857388)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>unistr('Principais Usu\00E1rios')
,p_list_item_link_target=>'f?p=&APP_ID.:10031:&APP_SESSION.::&DEBUG.:10031::'
,p_list_item_icon=>'fa-user-chart'
,p_list_text_01=>unistr('Relat\00F3rio de views de p\00E1gina agregadas por usu\00E1rio')
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(1966737651168857388)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Log de Erros do Aplicativo'
,p_list_item_link_target=>'f?p=&APP_ID.:10032:&APP_SESSION.::&DEBUG.:10032::'
,p_list_item_icon=>'fa-exclamation'
,p_list_text_01=>unistr('Relat\00F3rio de erros registrados por este aplicativo')
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(1966738113392857389)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>unistr('Desempenho da P\00E1gina')
,p_list_item_link_target=>'f?p=&APP_ID.:10033:&APP_SESSION.::&DEBUG.:10033::'
,p_list_item_icon=>'fa-file-chart'
,p_list_text_01=>unistr('Relat\00F3rio de atividade e desempenho por p\00E1gina do aplicativo')
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(1966738443908857389)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>unistr('Views de P\00E1gina')
,p_list_item_link_target=>'f?p=&APP_ID.:10034:&APP_SESSION.::&DEBUG.:RR,10034::'
,p_list_item_icon=>'fa-file-search'
,p_list_text_01=>unistr('Relat\00F3rio de cada visualiza\00E7\00E3o de p\00E1gina por usu\00E1rio, incluindo a data de acesso e o tempo decorrido')
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(1966738934463857389)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>unistr('Log de Automa\00E7\00F5es')
,p_list_item_link_target=>'f?p=&APP_ID.:10035:&APP_SESSION.::&DEBUG.:RR,10035::'
,p_list_item_icon=>'fa-gears'
,p_list_item_disp_cond_type=>'EXISTS'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from apex_appl_automations a, apex_automation_log l',
'where a.automation_id = l.automation_id',
'and l.application_id = :APP_ID'))
,p_list_text_01=>unistr('Relat\00F3rio de execu\00E7\00F5es de automa\00E7\00E3o e mensagens registradas em log por este aplicativo')
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/controle_de_acesso
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(1966739191999857389)
,p_name=>'Controle de Acesso'
,p_list_status=>'PUBLIC'
,p_required_patch=>wwv_flow_imp.id(1966545603817857026)
,p_version_scn=>227958805
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(1966739601048857389)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>unistr('Usu\00E1rios')
,p_list_item_link_target=>'f?p=&APP_ID.:10041:&APP_SESSION.::&DEBUG.:RP::'
,p_list_item_icon=>'fa-users'
,p_list_text_01=>unistr('Defina o n\00EDvel de acesso dos usu\00E1rios autenticados deste aplicativo')
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(1966739949791857390)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Controle de Acesso'
,p_list_item_link_target=>'f?p=&APP_ID.:10040:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-key'
,p_list_text_01=>unistr('Altere as defini\00E7\00F5es de controle de acesso e desative o controle de acesso')
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/feedback
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(1966740324381857390)
,p_name=>'Feedback'
,p_list_status=>'PUBLIC'
,p_required_patch=>wwv_flow_imp.id(1966545788512857026)
,p_version_scn=>227958805
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(1966740696645857390)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>unistr('Feedback do Usu\00E1rio')
,p_list_item_link_target=>'f?p=&APP_ID.:10053:&APP_SESSION.::&DEBUG.:10053::'
,p_list_item_icon=>'fa-comment-o'
,p_list_text_01=>unistr('Relat\00F3rio de todo o feedback enviado pelos usu\00E1rios do aplicativo')
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/definições_do_usuário
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(1966756979474857485)
,p_name=>unistr('Defini\00E7\00F5es do Usu\00E1rio')
,p_list_status=>'PUBLIC'
,p_required_patch=>wwv_flow_imp.id(1966753419157857481)
,p_version_scn=>227958818
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(1966757426285857486)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>unistr('Notifica\00E7\00F5es de Envio')
,p_list_item_link_target=>'f?p=&APP_ID.:20010:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-bell-o'
,p_list_text_01=>unistr('Configure se deseja receber notifica\00E7\00F5es por push neste dispositivo.')
,p_list_text_02=>'<span class="a-pwaPush--state"></span>'
,p_required_patch=>wwv_flow_imp.id(1966753089609857481)
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/assistente_de_transmissão
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(1972302509173150423)
,p_name=>unistr('Assistente de Transmiss\00E3o')
,p_list_status=>'PUBLIC'
,p_version_scn=>228899064
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(1972303920888150427)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Gera&#xE7;&#xE3;o do Arquivo'
,p_list_item_link_target=>'f?p=&APP_ID.:10:&APP_SESSION.::&DEBUG.:::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(1972306998292150430)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Retorno SERPRO'
,p_list_item_link_target=>'f?p=&APP_ID.:11:&APP_SESSION.::&DEBUG.:::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(1972310816557150432)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Relat&#xF3;rio de Atividade'
,p_list_item_link_target=>'f?p=&APP_ID.:12:&APP_SESSION.::&DEBUG.:::'
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/listentry
begin
null;
end;
/
prompt --application/shared_components/files/icons_app_icon_32_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7AF400000264494441547801EC93CD4F134118C61F97B2B5A5742B65FB05A4C5354488D220297010308468E2510F1EE5A6F1ECD583373D4B34FE011A3586C418E5E441690C';
wwv_flow_imp.g_varchar2_table(2) := '1A7B30805142DA2010B7946E3F96F4634BB77637D99A1E9AD96D3444D2CDCECECEFBCECCFB9B27F350C9BB5395C36C140EF96901B4146829D0B4025259C6AE6452DBBE546EDACC86017851C20EC5420E8CA377FC92DA4CDC047EC9362839A3248601E01B';
wwv_flow_imp.g_varchar2_table(3) := '04E30BD4D531570A386EB3A3CCF4D4C5F50C0C0374714178AFDC8673E63AB24519DBEB2BA0B9107CD3D7AA607E3D35EBE61806D056530C0BFB4008AED32198AC8C1636DC370D60B8528305FF0F8072C395DB9FDFFE0EE1E302E44CA276A6835C06A9B530';
wwv_flow_imp.g_varchar2_table(4) := '0EB249C36E202AA01416CC6E78C72EA23F3806B6AF1FE6920861E919F8F002F636BE22F96D1976A70B2E6E08FED16978829310AD1E5DB6240258CE5C80953B87CCDE2E2A525E3DB52C2691E3A3904B05B43B5C908B79E4527F14C98A22F2C7685DB62403';
wwv_flow_imp.g_varchar2_table(5) := '9CF0809D9D83F7F22D14CC0EC4562390DA6DAAEDBA4F05C18ECCA26FEE1E4C81116CFE58859088C3393401FFD4555DB62402A847AE7E14DB39CE57BDEEEE057372B81AA97F3B8767E01C18057B76D2902D7503D497FB7B2322403EC537AC26EDA721A5E3';
wwv_flow_imp.g_varchar2_table(6) := '0DF37A1244004B348CD8FC0D243F3CAFEDA7D88E5F7E03E1CB2284B7F3E05F3F40F1E75A2D9F5859C2C6AB8740F4532DD6E8870840B751E896D340E425761EDDC456E43DE28B8FC1A4D6E1E9A4D1656D47472C0CFEE91D6CBD7B82D88BFBA0373FA3872E';
wwv_flow_imp.g_varchar2_table(7) := 'C246B781F41001B40D14107B29854177875A548B6BBD02C2392D2A9432578B937A8A34E15FE75B002D058EBE022417FD060000FFFF7EA6365200000006494441540300762812B07DFD40290000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(1966544143685857024)
,p_file_name=>'icons/app-icon-32.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/shared_components/files/icons_app_icon_144_rounded_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000090000000900806000000E746E2B800000ED6494441547801EC9D6B6C1C5715C7CFAC63A77612C7895F6969937593906EDAC43C92B60979473C445F9FA02A42B401890F48940F48202A81D7205502C40740';
wwv_flow_imp.g_varchar2_table(2) := 'E203124A400854F854D282404DEC246D027940E2362FDA602729288EED3C6DA75E677738FF9BBD9B8DBD8E77E7DE7DCCCC89F67AC6B333F7DCFB3FBF39E7EE7A4E1B21F9270A1828200019882797120940428191020290917C72B100240C1829200019C9';
wwv_flow_imp.g_varchar2_table(3) := '27170B40C28091029E0132B22A17074601012830AE2CCF4404A0F2E81E18AB0250605C599E890840E5D13D305605A0C0B8B23C131180CAA37B60AC961EA069A4BBF6F2D6C66BF1751F461B8A6F587BA973E353BA0D76AC7F212C0D73C6FCD1A0856AACCD';
wwv_flow_imp.g_varchar2_table(4) := '34F295FCEDB2037439BE293AD4B9213EF8FDF55DBC75C7C7C707C79DC8693472E82D97DC3FE9E6449CED61699833E68F062D54636D58A3DEA1F8C6EDBC8D0FC4376D2A3931130C9605204C3C2D829B7252BD3CA60EC775CA2E068FC30FAF2839EE0B3CD0';
wwv_flow_imp.g_varchar2_table(5) := '8E8893C24DD7CB30F5F20D88637CB8B4AF9202C4138D73EBC5C4D3229476B6C1B416E56945F9064454024C71FEBD64AF9200C4D0001C9767D5C10D13E68DBC8AA000B4ED60BD4B0652D101E2D0DAC542011CDEC8AB440A68908A1E8D8A061016C7808743';
wwv_flow_imp.g_varchar2_table(6) := 'ABAC6D4A444D0E332A1AC11739DEB372A8280061918CC5B15D78ACCC378C9D44D9175D7C331765916D1D20D0AE16C9617455E5CE198BEC0EF8C6F610AD03948C24B7DB1EA4F46745011589ACF494D5895580384C7649DACA52B7F276A3F8FECDE6B0AC01';
wwv_flow_imp.g_varchar2_table(7) := 'C41F1DE3028F4DD714A92FFE12926F746BEB216B00F1749FE7262F1F28C037BAB5AF55AC0094261ADF3DF8403E19222B104DFB8C77CD5E5600B249B4D974725E2D07732860CB67C600A54996E893C349157E288AEFEB4CC7680C100F40D63E2C821F5F4E';
wwv_flow_imp.g_varchar2_table(8) := '2469BC1632068843A1FCA9C28FF4F098D977C699C308A074FAE2A1C8CBA70A18A73123807C2A9A0C3B4B01FEB39351063102C8494536668D45767DA880EBB8463E3402881CD788DE4AD73B0CE3335D0799014464BC0823F9576E05A2A884F13A08CF00A1';
wwv_flow_imp.g_varchar2_table(9) := 'CCC4AB51B9AEC214488C357A1D916780C629D2E4D5A85C171C053C03141C09642626C14000127E8C14F00C90E3389EF3A6D188E562EB0A98F8D23340A9544A009ACA95213AEE19A030689448A66838910CFC544D82810094038F0BD71374B27F84DB289D';
wwv_flow_imp.g_varchar2_table(10) := '19BCC1DB11BA343A9EE34C392400A51940B40138C7FE374CFD0C5022E952FDBD8B685E732B61FFFC95310512CE495F221B5620F40025384D018A93FDA30A1CD6841E685B4CEDEBB6D2B28F3D4E4B1EDDA4F6712C39A3569D83E874EECA07A1486FD0E36E';
wwv_flow_imp.g_varchar2_table(11) := '2DB400616D736608E96954415153E5505BFBA3B4EA934FD382E5ABA866EEEDEF49B18F632BB73C498B1E5A415533EBE8F2E84D496F4C56A800BA1D6D4694F387C792347B7EB302A7FD339FA7A6FBDBC8A9A9655972BF66441C6A59BC9C1EDAF8042D7B6C';
wwv_flow_imp.g_varchar2_table(12) := 'B3A4379629340065A7A904AF6F909290A6626BB62870588BBC5F00A9BEA92593DE5A162CA089E92DEFCEEE38D17FBF8402207C82C2C258BB67F9AA3593D2947EAFD02DD2DBA28F6FA4A5CB9612D220E0447A83CD42FBF2E3F9A100483B667663ABDA3D71';
wwv_flow_imp.g_varchar2_table(13) := 'F8009D3CB09B06DFEF253771431DF3F2E366CA557DBCD3F51A9DEA39A63EAD79E9C7CFD7840AA0C59FFE22ADFDCE0E8AAEF9140D5F1AA0DE6307A967F74EBA78E6048D7F3092B71F01CE851387E95F7FF983EAE3C6E8884A83ED4F3D4FB1CDCFE4DD4F10';
wwv_flow_imp.g_varchar2_table(14) := '4E0C15407058646E33DDFFCC371448B1CF7E49458DB3A7DEA613DDAFD3D9237B68F4F2004ECBD9125707D53900E77CEF19AAAB6FA0C5FC317FD5732FD21286B3B66561CEEB827C307400696702A4C60DCF2A90DABFF04D9AB764255DBC70818EEFDF3D29';
wwv_flow_imp.g_varchar2_table(15) := 'BD21D521E51D7B73973A4783B3F2735FA7E615EB6946DD5CDD6DE8B6A105487B1A20CD59B985966E7B99567FED47D4BAAC3D93DE8EBFB58BFEF9C64E95A690F2000E52940647F711E66DE801CA76FECC850F2B90B04E427AC3DA2639369A49530067EE83';
wwv_flow_imp.g_varchar2_table(16) := '2BB32FA994FDB28D4300CA213DA212D21B3EB521EA843D4DE59028734800CA48213B5E141080BCA826D7641410803252C88E170504202FAAC935190504A08C14B2E3450101C88B6A01BAC6742A0290A98221BF5E000A3900A6D317804C150CF9F50250C8';
wwv_flow_imp.g_varchar2_table(17) := '01309D7EE0014A245374F9C64DA5D385236FD0D8B9E36ABF183F6E8E5EA581777B54D7B08907F7D52F01FE1158806E3D033D4228D7C1C3F378DCB4FFF4313AF48B6FD1D11F7FD92A4800E7BDBFFE960EFFFE67EA0945D8824D5D9488B10495A140018468';
wwv_flow_imp.g_varchar2_table(18) := '03674D2C0E440505AA2EB045A1E0F0507F06A4EB3DBB3DFB76E0ED7DD4F3C79F67C04185076CC0D6C36BB7101EB64F245D5536845A328C2DC111D1B3C14ABA303D96400004A7C0398836FAE179545D7C64EB93AA38B0BEA9454D175B5D2808E702A463BF';
wwv_flow_imp.g_varchar2_table(19) := 'FB898A48437B5F51E7E4F3438373E660378D5EBBA22A58010C2A3C60037DD4CD6B263C6C8FCA0F8C45576D202A9D0B5051A2AF01C21A0377B60607A903C581AB9F7856555D54DF330BBE9CD47425059CBB60D1837463F83A9DFCF36FEE0A12D214C0F9FB';
wwv_flow_imp.g_varchar2_table(20) := 'AF7E401A1C80813E50C10A602619E203B015E4A244DF01743BDADC2A0E4C708A40EA58FAD1C708A903C581ECB7BC5E70EE038FACA64756AF51E5CC53810470B0BE0138E818E020BA010CF48163D335D49205B128D15700DD8A38A36A4D0170E0484400A4';
wwv_flow_imp.g_varchar2_table(21) := '8E86FBA2D3F970CAF701016058B16ECB1D2021C52145011C44379435AF4A973E4F15DDA634927E032021CDE9548A08A8D31BA2A9DFEAC97C05905EDFC017B575B3A8AE652155D7E64E5338A7D00628E67F284AF5F573265DDAD0DC4A73EE5D74D7D2E749';
wwv_flow_imp.g_varchar2_table(22) := '174D7300E0D6363451EDAC5B73C04D818FFFD35C56516FFB0A20AD1C1E7CC7F3CAA7FFD145A78E1C501F9D4D0A04D1EFD8C0397AEF6037A1F2E2F240BF2AD9C17134D843C5060A08519D71B7D21F9C3F5D435D192A3D263EB03FDD7595F8BE2F01420585';
wwv_flow_imp.g_varchar2_table(23) := '7EF01DD512BA40F0FC3B8708601522341C09287A0E1E200D8EAEBCC0F3D0782E1AF650FA0390604F97FE5C1BBC5850652B8A17B30B1293131ED82F64DC95726EE10055C8C8F583EF1AA49A8616BA70F63F84288148325D9400383817F0010AC082CAD2A9';
wwv_flow_imp.g_varchar2_table(24) := '2A2F74E90FEC45D395ADA7F38C80886E285A3CBAEB35CA2E487CFC2BDFF57D5D996F01D21C6B90567EF587A4A30422898E120045A737A48E8B674E646ABD10AD746529C0C9A7B214F67465AB060910A2862CDB16C687DF0129A21B522020853DD842A507';
wwv_flow_imp.g_varchar2_table(25) := 'CEF17BF33D40DA01706CAE2801E7A2FE1DE90D25C928634E66A50E38D24B6529EC6990740D99B675F6C81E3AF4FA2BAA201190E2AB8555CFBD48410227A3BBDE09D276A273F1E906E94D47009BA903B6504386D40690602B3BDA001CD4CD7B81D40F3E09';
wwv_flow_imp.g_varchar2_table(26) := '4C04CA25B6762E521BDEC79F161071B06FBB4D652BA8E068FD020D909EA46C8BA78000543C6D43D17309010A859EA19BA400143A97DB9DB0006457CFD0F5260085CEE576272C00D9D53374BD0940A173B9DD090B4076F50C5D6F7E006892538A59DBA58D';
wwv_flow_imp.g_varchar2_table(27) := 'E11968BD9FBA3AF57FFA579F63BACDB667DA5729AFF71540B36AAA9436BAB6CBA424477594E3071C797EFF4E55AA83C759F1586BCF2FBF4DEFBFFA53ABB564DA349EB7EE499706E1587595838D6F9AAF005A30A7861E689849B36756111CEBA524672ACF';
wwv_flow_imp.g_varchar2_table(28) := '001C5D1CF8DF9347D5FFF7A2356D8F8607A9EFC0DF32B564A61110B6004E7685470D8383B92D6CB867AA2156E4715F010405E7D755D3E2C65A8AB5D6111C0C9074498E97280147EA0880E777B42363ADB308C06A7B70AE06D76B04D4E0645778600E319E';
wwv_flow_imp.g_varchar2_table(29) := '4B8CEDC116E6E8A7E63B80B4B8355511E5E0188B0F2724AE5CCC448977B7BF346DBAD1E0A0E202A90AE02C6E0298B3289723714C833BAF6E0601DC7C2320C0D16911F6600B636EBF6FB69A03E6423EFD17F1E9B833C386F8881470BE8E12D935F0D915A7';
wwv_flow_imp.g_varchar2_table(30) := '8991AB0470B253071C0908631C0166D7DC5A63653ACFB1037B483331065783A42360B62D5C0A5B3ABA65A7C518DBC298718EDF9BEF01D20E806373450938179102E7E1EE47C3BE06078EC4B5385648C3351A24F48588946DEB64D7AB990A56A4BE180317';
wwv_flow_imp.g_varchar2_table(31) := '0B10385AABC000A42784AD766E8C9D06E7E2185A0D2F54F1BBCDD4015B80702A5B388ED487F33086A0B54002A49D04A769E722C5C58A1801A6B285E37A3C41DC7A062812890CF9451038319FF58D8DF994D2968DF19AF6E1192053C3727DE52860120C3C';
wwv_flow_imp.g_varchar2_table(32) := '03E4BAAE6F2250E5B8AA324762E24BCF0055A61432AA522BE019A06A4A0D967AB062AF380A98F8D23340C5994A85F42AC3C85B01EF00D5CC943550DE3257F88906BEF40C50FD4BBB04A00AE722DFE199F8D23340189CEBB8DDD84AF3B102AEB3C364F446';
wwv_flow_imp.g_varchar2_table(33) := '0039AEB3C7C4B85C5B7E05DC48CAC8874600A5DC8844A0F233603482AA5495910F2326D66710F591FCF3B502F3E2DD463E340208C6651D94CD8FCFF60DD73F98AD1140E8C04D5575622BCD7F0AA4C8F9B5E9A88D016A8E77774B1432754359AEEF83EF4C';
wwv_flow_imp.g_varchar2_table(34) := '2D1B03941E8031C9E97E64532205F8A6B79239AC00945EC9F79568EE62C682024DDFDB67F4FD8F1E821580D28B692B44EB81C9B6A80A58F3951580305545B485553DFA92563C053875753776EC8DDBB2600D200C28424E2706887D69052950AA93FBF846';
wwv_flow_imp.g_varchar2_table(35) := 'DF6CD358C466674865BC1EDA66B34FE9CB9E02FC9703EBBEB10A10A60A88380A591F28FA96E65D018667B38D8FED1347601D2018E030B923E246DA785F3E99B108657EF5150B1ECCAB2800A16344228608F9D6DA8A1FFD4ACB5F01CE045830B71523F2E8';
wwv_flow_imp.g_varchar2_table(36) := '51140D20180044E9153F20926804514AD3A075276702DCC045B5585480F4C80111A211DF11DBB875EBE3B2B5AE800287F56EE366EDA3FADD4659128030004423BE237670DBCC10094810C5424B77D1074D199A928193B64B2503481BC49621522071546A';
wwv_flow_imp.g_varchar2_table(37) := 'C3020F9327F91212D2E4D3000BA27827B463681C6E6DD0349F8B6D9F531680F4241095B0C0C3E41BE37BB6B1104E75757553B59B5A86462E7D02CD21E76937E56E0B4BC37C75C3FCA1051AF4E1065836F3360EEDB496E5DA9615A05C934685407DFCCD7F';
wwv_flow_imp.g_varchar2_table(38) := 'A335C6F7EE479BDFB1676753E7BE1D616998AF6E983FB440CBA557B98F551C40E51644EC17A6800054985E72F6040504A00982C8AF8529200015A65770CEB6341301C8929061ED46000AABE72DCD5B00B2246458BB1180C2EA794BF316802C0919D66E04';
wwv_flow_imp.g_varchar2_table(39) := 'A0B07ADED2BC05204B4286A79B3B672A00DDA987FC56A00202508182C9E9772AF07F000000FFFFAC86724600000006494441540300485E399909B7BE5C0000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(1966544462850857024)
,p_file_name=>'icons/app-icon-144-rounded.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/shared_components/files/icons_app_icon_192_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D49484452000000C0000000C0080600000052DC6C0700001000494441547801EC5D6B8C55D5155E3C1C64181EC3C3A12882F2D0EB00230AF8A822A0B1BE88E547056D6D5A4362A2117FD8629AF8A76953A33169A9B5F14FB5';
wwv_flow_imp.g_varchar2_table(2) := 'A1A695FA8368901A1A198B53154174861946501EC358641098611806E7C240EF7764DFD9E7DC73EEF3DC7BCF3EE7339C7BF7397B9FB5D7FED6FAF65E7B8FB96BF0B15F2F3CCF8B1844D507060BFF23021146800488B0F139741112805E1069044880489B';
wwv_flow_imp.g_varchar2_table(3) := '9F838F3001687C22C010883E107104B80244DC01A23E7C1220EA1E10F1F19300117780A80F9F0488A20770CC4904488024142C44110112208A56E79893089000492858882202244014ADCE31271120019250B01005049C6324019C88F03E520890009132';
wwv_flow_imp.g_varchar2_table(4) := '3707EB4480047022C2FB4821400244CADC1CAC130112C08908EF23854084081029BB72B0592240026409149B85130112209C76E5A8B2448004C81228360B2702244038EDCA51658900099025504637A3F29E0890009ED0B0220A08900051B032C7E88900';
wwv_flow_imp.g_varchar2_table(5) := '09E0090D2BA280000910052B738C9E0890009ED0B0220C08641A0309900921D6871A011220D4E6E5E032214002644288F5A146800408B57939B84C0890009910627DA811083101426D370ECE270448009F80A41833112001CCB41BB5F6090112C0272029';
wwv_flow_imp.g_varchar2_table(6) := 'C64C04480033ED46AD7D428004F009C84089A13259234002640D151B86110112208C56E598B2468004C81A2A360C2302244018ADCA31658D00099035546C680202B9EA4802E48A98CFEDE3FDE77C964871B9204002E482964F6D8FF79E91BDC74E4BE3A1';
wwv_flow_imp.g_varchar2_table(7) := '1E69EDE8B5CA3DF17E9FA4534C2E089000B9A055605B387E6BC72969EFEA939EBE01874779EFD1D31611D086AB428140E7F03A09900358F93485331FECFAD69AEDE1F8F1FEF3363115430625EF4104B4C1AA8077E20C8F92D814AB4002140959CCE40873';
wwv_flow_imp.g_varchar2_table(8) := 'E0CC9DBD676DBD0C1956299366D6CADCBB1F90990BEFB5CA3A11D018EFE05DC8607804448A73858800C5012857A9707CB7300772468F1A29D36BE7C875772C954B67CC92A18307C9F0CA115679CE92A53263EE0D523576029A262FAC0A0C8F9270F85E20';
wwv_flow_imp.g_varchar2_table(9) := '017C8214210B36B50861E28E30675CF528B966DE4D32F3D67BA47A6ACCB5C74115C365CCA4A912BB6989D4DEBC44C65F7685AD1D8800D958150E9F8C4B9CE1910D9F7C6F48807C914BBC87D044393E4296C4A3E43F15E65C7BFB7D72E5CD77CB889ACB93';
wwv_flow_imp.g_varchar2_table(10) := '75990A95D513E48ABA05326BF17DAEE1514782002002C3A34C4866AE2701326394D202610E9C0FA189D3F111D2E861CE45178F48793FDB0790855009E11164E25E7F17AB0274802ED089AB828E4E766512203B9CAC56083DBCE27B15E660D6AEF608732C';
wwv_flow_imp.g_varchar2_table(11) := '21797C203C824CC84628553DA1C626054440780432404712C1064FDA1B12202D3C62C5DA2ACC41E81177C4F738CDC927CCC9D0AD673542A9E90B16D9C3A30BADA11B744478049DE3DC275C40C6FB8B04F0C6C6AA813339C31CC4F70849E6DFBBDC3AC129';
wwv_flow_imp.g_varchar2_table(12) := '24CCB13AC9E303E1900A8FA65C3DDB3A4DD2C54067AC08FA3396531120015231C9F8A46AD810ABCDD973F63F6A590FCBF07151E28F69FD7DBD293DC71DAB554A033E1012200F2738D17D52BE6C6992A6CD1BA4BD799BC44F1CCD434A61AF9CEE3D25FFFB';
wwv_flow_imp.g_varchar2_table(13) := 'A259B6FFFB2D4B173A7B7E78920039E036E3AE87A56ADCC00614B3EEE1B67DD2D8F0AEEC797FA39CEA389883B4FC9A761F3D22FB1B3F96E6FA0D72684F8B4DC8452346CBB4C4FEC0F6903769112001D2C263AFAC59B442EA1E7D4EEA1E7A4AC64D9F63AB';
wwv_flow_imp.g_varchar2_table(14) := 'C4AAB06BFB8716113A0FB48A9FE1D1F9F869814C38FDEEADF572F4ABFDB6BEC78C1D2B57DDB858AE5FB14A26CCBED55617F69B42C74702E488E0A0511364E49C25125BF9ACDCF8AB5765F20D778AFEFFF180082A3C428872E6DB5339F630D01CEF42860A';
wwv_flow_imp.g_varchar2_table(15) := '7310F60CD48A5C1ABB56E62E7F42AE5EF6B854D7DEA257B19C250224409640B9351B3AFA1299B2EC49B96EF52B82F04827427F62538A10E5B3773758214B6FE7376E225C9FF59C3C69BD837721436F843067CABCDB64C123CFC8E49B97CAB0AA317A35CB';
wwv_flow_imp.g_varchar2_table(16) := '39224002E408985B731001E1D1FCA75F750D8F10B2B47CB0396378A4C29CD62D1BD38639DFAB5B2883070D725385CF72448004C811B074CDF5F068FE63CF5BE191DE5E0F8F8EECDD25087110DF23CCD9F6F63AEB34C719E68C1F3F4E66DFF14386393A90';
wwv_flow_imp.g_varchar2_table(17) := '3E9649001FC1D4450DBBBCD60A8FB04F700B8FDA3EDF293B1B365BC7985E61CEBC0757C9F4FB1F93115366EBA259F611018309E0230A4514A58747B3EEFB69CA31AADE75E5A831C9D31C8439432B47EBD52C17010112A008A0BA89447834E696E572ED2F';
wwv_flow_imp.g_varchar2_table(18) := '5F91EB7EF20B1B11708C893067CE8F9EE0698E1B78457C460214115C2FD195B31627F6073F4856E36F0A0C73927094B4400294146E761634044880A05984FA94140112A0A470FBD419C5F8860009E01B941464220224808956A3CEBE214002F806250599';
wwv_flow_imp.g_varchar2_table(19) := '88000960A2D5A8B36F089000BE414941A540C0EF3E4800BF11A53CA31020018C321795F51B0112C06F4429CF28044800A3CC4565FD468004F01B51CA330A0183086014AE54D610044800430C45358B830009501C5C29D510044800430C45358B83000990';
wwv_flow_imp.g_varchar2_table(20) := '0BAEC1F82DDC5C34B67EDE3DA71722D69804703178BCFF9C1CBC90DA54AFDEF6FC23D2D5B04ECE9DC8FE47AEF4F7F32E67F1E2F9D3DDF2CDCEF7E5A3BFFCC6D61A3FEF8EB1604CB60ADE58089000160CDF7D20CD10D20DC169F0FBFADF3D1DF8ECEBEC90';
wwv_flow_imp.g_varchar2_table(21) := 'E60D6BE593979F968EF75E0F0411E0F85F376E91AD7F5F237B3F7E6F4059AD84B1604C181BF29A6955912F9200091780E37BA53E426A5367020A10E18B77FE6611E1AB37D7C89976FBAF34274416FD5F5F4F9728C76FDBFE1F5B7F489E019D9972D5068B';
wwv_flow_imp.g_varchar2_table(22) := 'EB4DA409807C5ACAF1E38E64122AE717529B5E32ED1AA9FDFEED56AA53DDA94084031F6E92AD2FAD96B6F56BA4EF60F18900C7DFDFF0967CBAEE45713A3EC88A5CC3C825069D91721565A65C75F57DEB61E408801000313172FA229F96EEF84386555A69';
wwv_flow_imp.g_varchar2_table(23) := '49DD727E21511DF27329A77226AA6BDFBA49B6FD79B5ECFAFD4AE96DAEB7C0F5F3A3E7709B7CBEFE25CBF13B7637DA44C3F1913C0F6445AE61BD12AB4136295781493CB1F7D1DF8D42393204409883181879B31013EBC685E323E797CAE09E29E7179C4A';
wwv_flow_imp.g_varchar2_table(24) := '25AAC3ECAAFF2AF4F18EAF65C76B2F5844C08659CEEB3DE55EEE6C6990A6375E94E6B7D74AD7F1E33601974C9C6825CB83E3839CB64AC70D74CE94534CDF2704850C8E61F87E1B7A02C0F15598D3D3D76F031033274206387EF5D498AD2E9B1B381566D7';
wwv_flow_imp.g_varchar2_table(25) := '990BEFB5560E2711B061DEF58795D6C951AE4480E3EFF8EB6F65F747F5D2DBDD655367D2CC5AC12A35E5FADB5292E3D91ABADC60254378A4423AE74A068C3049B477F509B00B3B11424900180D4B3AC21C1832EE88EFE140888D31733A4306179FC9F808';
wwv_flow_imp.g_varchar2_table(26) := '44C0EC7ACD226F22A823D47444C0898E3ACA84E3EB7A639582DE73EF7EC097CC942002560DB5924D9C72A52DD1078800ECB02A00CB7848C3A35011003316C21C18CD2DCCC1C9887220386D46CFCEB10142271061CE92A582BEF43EB061C68A0022E008F5';
wwv_flow_imp.g_varchar2_table(27) := '74E7E1A4F4FE53DDC9131DE751261C5F0FCF860EF63F2F00F49C3C6BBEB811184A024B600A6CB187C2B3B05CA120001C3F5D98A31C084B7F311CC8E90C985DD117C20C84587030D50644C0112A4E8FD4B3032D3B524E74F08ED23B9FF04CC9CEE55B2730';
wwv_flow_imp.g_varchar2_table(28) := 'F4D64FBC2007AB02C223100198876155309E00589EB154C71D618E7E8C592A078293E8178880100B44C0298DD3A1F4B6AAACF62508D1CAADB73AF1C2465FE9876F100198E31819F7265F01264076B0627976B6C4C6EEB2DAF98218D759578E7B1001BA20';
wwv_flow_imp.g_varchar2_table(29) := '3CC2CCEEA50336D197CE9C25208D579B523F87BE1367D4CAA8EF4D49E9DA0DFB9446017F603C01DCF0EDFCA6431A1BDEB572729DEA382867CF157816E9D6490ECF3A0FB44A73FD06D9BDB55E9C2990743158C5766DFFD0D21BEF945BEFAE43072C5DA07B';
wwv_flow_imp.g_varchar2_table(30) := 'F7D76DBAAAA129878A003557D5D90C839C5C70A87DFFFD9794C3A1D067E33BFF74CDFDA5CFA855E36A6C2730D01BA956CBA1377296416F38FD179F6E15E8A2838A641EFABDE9E5501160C6CF7F67E5EE9D7A9377EEDEF6E66D5672BA62190E0E8404782A';
wwv_flow_imp.g_varchar2_table(31) := 'E91D6675D5979EE274C2E42BD4632B59C6BCD5AFA6A45A85F381084D9B37149DC048D887647D5E3989919A55E5244E2A1E8242A808007B2027D765F73F296E0ED5DFD72B87DBF609F2EFEE6FFC587A73C8DD0BD9E92E38BE722024C0D3DBC2F1A72D5824';
wwv_flow_imp.g_varchar2_table(32) := 'D7AF5825C8FD35D825C5E9E0D113A466D10A41AAD5D83DA9B9C41411D0079C55975F4839534E62E8BDE091672CBDC3989338740450CEA03B54DD434F09D210A93A7C679BBB176DD35D88E9E19498399DD91EF5A4771366DF9A4E4CB20EB9C4C62D5C2E75';
wwv_flow_imp.g_varchar2_table(33) := '8F3E27D01BE191AA0481D1C7CE86CD82952C7EE2A8AACAF95B8539AD5B360AB0D00520CCB9EAC6C51661A1B71B61F5F62697434B00651438D4C8394B24B6F2592B3C9A7CC39DAACAFAD6C30C842ED9CEAE707CAC228895E19496B00B1F70A0D8E2FBA590';
wwv_flow_imp.g_varchar2_table(34) := 'A4774A6F100149F57402830858C9B0D1870ED9AE6458A53046AF7D09FE1A8C647D572F7B3C32C9FA424F800B3E697D213C9AB2EC498B0833EE7AD8B6F184532174C934BB761F3D923C19719B3995038DBE728ED567A11F200292EA29023B37FAD0A1E583';
wwv_flow_imp.g_varchar2_table(35) := 'CD964E38F172EB0F6455AB14C6E8B62F99F7E02A997AC78F256AC9FA224500E51C20828AB7DD72F7AAD975CFFB1B054E85E3481532EC4E1C6562D550B2F08D99536D108BE940D05B6DF4DD56329C784167E80A9DF5634CE72A857D890A73B02F896A4EE2';
wwv_flow_imp.g_varchar2_table(36) := '4812004E8B0BB32B72F7AA30C339BBC2D1E1542D9BDE703DCAC4C9889A394BB9410411BC5632E88C0D3374F63AC6C42A850D7975ED2D8021D257A409A02C0F2220CC50B3EB54C731AA5BC8A04E46CA3973820858C9DC4EBC749D314E90B514AB14FA2AE4';
wwv_flow_imp.g_varchar2_table(37) := '2AF5BB2480037138957E8CAA57E3481033274286209D8CE8275E384275EAACC85ACA554AD721C86512C0C33ACAA9F46A1C09EAF7412B63251BB770B94D2DE81C24B2DA940BC00D091000235085F2214002940F7BF61C000448800018812A940F810011A0';
wwv_flow_imp.g_varchar2_table(38) := '7C20B0E7E822400244D7F61C79020112200102FF4517011220BAB6E7C8130890000910F82FBA08900041B03D75281B022440D9A067C741408004088215A843D9102001CA063D3B0E0202244010AC401DCA8600095036E8D9311028F7450294DB02ECBFAC';
wwv_flow_imp.g_varchar2_table(39) := '08900065859F9D971B815011E0D8967581485D9AC9A8487477E2D0C06F6D1ED9F3594912EC65D22B53BD4AE091A99D49F5C61300BFA8AC006FDDB8B6ACA94B951E5EDF3D5AA23BFC9C896A77ECCBA6A226D853FDE4FB0DC2AA94AC7A020F1DFB7C6597FB';
wwv_flow_imp.g_varchar2_table(40) := '3DE3095033B2C2F6FB3E484081E413485D9ACCD858DE1F8716E4FB6AF24874A73B91DF09F60A75AE13FB9A9299299D2959217B72F5C5F832FA2A2301FCC16D6CE54512AB1921D3C60F97AA61436C42930E9567A23A9BB03C6EE0F85E89EEAA2B8726F4AE';
wwv_flow_imp.g_varchar2_table(41) := '143811CA4E22209D52BE09F6F25035F90AC21CE80DC2B6D6BF295DC78F27EB5000C693C70C93BA4955525561C71BF5A65DC61340010E634C1B37DC22829743213FD7576FAE29EA3E010EE495E80EBA42B7584DA55C3EE6E2C4CA35D87222944160D4550C';
wwv_flow_imp.g_varchar2_table(42) := '19C80106028308D0BBAB619DA44BB007D9855C677B4F24F39421419F33332574838EC01893DA4EBC22000003C0494441544E217D05E9DDD01040810A227839940A8F3E78F667D2B67E8DAF1B4F38BE5B9CACF452B32674AB18920A3B9EA12E9658CDDCC2';
wwv_flow_imp.g_varchar2_table(43) := '3A45848EF75EF795C0BDDD9DB2BFE12DD9FE8F3F8A5B98035D6217080B6CD578C2F29D6A89908C4C7728389F3EB36288ED5B3725379E85CCAEFA06D1E940E8137D235CC865D69C38B222111E8D10BC0B19D01717088C047B9FBCFCB460253BD3DE82C779';
wwv_flow_imp.g_varchar2_table(44) := '5D2ACC697AE34FD2B1BBD126430F73A00BB0B43508D14D6809A0DB08CE174BCCAC58C2615CBD4E0F3372394685E363E6FC74DD8B293327FA80F3A24FF4ADF7974B19EF4206F47612416DF47359C9B04A213C4BB72F415F610B73D2611E09022800AA2A86';
wwv_flow_imp.g_varchar2_table(45) := '088C0B2323A6ADD0E26DCCAED91CA3EA47996E332764A30F38AFEA37E53BC707D05B1101E4D25FD757B2DEE67ABD2A590659F5F0CCF9B389C02216E2302709844B21520450E38743A58BB7D5EC8A6354F50EBE7132D2FCF6DA9493113890727CC846DB62';
wwv_flow_imp.g_varchar2_table(46) := '5C900D72A12F1041273056B21DAFBD204E9D3F5FFF92B8AD52D00FAB14C2336011E6300763F5BA2249001D0CC4B8B134E191DED6ED64245686995311C1EB0855D739DD31A69FAB94DEA749E5C81340194B39156657CCE8FAECAADAA86FD42BC72FE7CC09';
wwv_flow_imp.g_varchar2_table(47) := '9D317B67AB33DA6105A1E32B4B8A9000035858A5744E15D490012404116289950CC7963A79711F2BC32A658169C00709E06124DDA9E04088954D98395548A774C63DC6E231CC923F0E5A872440161631D1814CD4390B53F8DE8404F01D520A34090112C0';
wwv_flow_imp.g_varchar2_table(48) := '246B5157DF1120017C8794024D42800430C95AD4D577044A4800DF75A740225030022440C1105280C9089000265B8FBA178C0009503084146032022480C9D6A3EE05234002140C611602D824B008900081350D152B050224402950661F8145800408AC69';
wwv_flow_imp.g_varchar2_table(49) := 'A858291020014A8132FB082C022440604D130EC5823E0A1220E816A27E45458004282ABC141E74044880A05B88FA15150112A0A8F05278D0112001826E21EA5754048A4880A2EA4DE144C0170448005F60A410531120014CB51CF5F6050112C0171829C4';
wwv_flow_imp.g_varchar2_table(50) := '54044800532D47BD7D418004F005468710DE1A830009608CA9A868311020018A812A651A830009608CA9A868311020018A812A651A830009608CA9CC50D4342D4900D32C467D7D458004F0154E0A330D0112C0348B515F5F1120017C8593C24C43800430';
wwv_flow_imp.g_varchar2_table(51) := 'CD62D4D757047C2480AF7A5118112809022440496066274145800408AA65A857491020014A02333B092A022440502D43BD4A820009E007CC94612C022480B1A6A3E27E204002F8812265188B000960ACE9A8B81F0890007EA04819C6224002186BBA6028';
wwv_flow_imp.g_varchar2_table(52) := '6EBA16FF070000FFFFAAA71388000000064944415403002FADE648EFB087FD0000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(1966544759703857024)
,p_file_name=>'icons/app-icon-192.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/shared_components/files/icons_app_icon_256_rounded_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D49484452000001000000010008060000005C72A86600001000494441547801EC9D7B9015D59DC77FF70E8C323C86E1A9203228A0571EA30651A320A09B4A7C94F18F44934DE263AD4A5552EA1FC9626537BB0CD93C2A9655';
wwv_flow_imp.g_varchar2_table(2) := '89714DE59F0DAE954A8AF887A5419335A520E20321EA20308AE8F0107114980166066760E6EEF9367386EE9E7BE73EA6FBF4E9DB5FEAF6DCEEBEDDE7FC7E9F737EDFF33BA7EF3069E13F122081C412A00024B6E9E93809885000D80B4820C1042800096E';
wwv_flow_imp.g_varchar2_table(3) := '7CBA9E6C02F09E02000ADC4820A1042800096D78BA4D0220400100056E24905002148084363CDD4E3601ED3D054093E03B092490000520818D4E97494013A00068127C27810412A00024B0D1E972B209B8BDA700B869709F041246800290B006A7BB24E0';
wwv_flow_imp.g_varchar2_table(4) := '26400170D3E03E09248C000520610D4E77934DC0EF3D05C04F84C72490200214800435365D25013F010A809F088F492041042800096A6CBA9A6C02B9BCA700E4A2C273249010021480843434DD24815C042800B9A8F01C092484000520210D4D37934D20';
wwv_flow_imp.g_varchar2_table(5) := '9FF714807C64789E041240800290A3913F5B79CD586C9D3F5B72AEDE8E355E3B975B7C18E876D3EF68CF1C4D9DF853891580B6C665F5877EB2E4AEC3AB97361E6EBC6E8DDA5FAFF65BD4964D8FAE3A86EDF353A98FF57632957E8F5B7C18E876D3EF684F';
wwv_flow_imp.g_varchar2_table(6) := 'B4ADDA5A9CB6566DDEDFEE777DD6B86C595295201102E00E76A7F1572FCDF6A5FA5A52D9D41AD5F0AB2495BD2B954DA113D4AB63BE2A9B40BDD3D6AACDFBDB7D4D3AD5A7C5BF458B42252118CA978A150004BD52FB4604BC3BD89DC61F8A083F4B2A0188';
wwv_flow_imp.g_varchar2_table(7) := '7FBD1605D577B26A6B515B632567081525003AE855A3B520E8554F5EC5805714F82A9740BDBA71952B436854C715F5AA080170025FCDE974D0AB1642C3A937BE48203002E853AB30B8609A50295941AC050081AF537CA46E8135350B2281FC04EAD1D790';
wwv_flow_imp.g_varchar2_table(8) := '15A0EFD92E04F9DD38FD492C0500810F15C688CF14FF7443F2A77902E87B1002F445F449F3160CBFC6D809804AC11A11F850E1E1BBCF1248200002EA8982EA93789210BB3582D80800141629976AAE556AE38B046C2350AF0C72D608D057D57E2C5EB110';
wwv_flow_imp.g_varchar2_table(9) := '00CCB394C2E2B93D9ED5C7022C8D4C2C817AD557ADC8068A6901EB05408DFA77619E558C33BC86042C21A0B301EBA704560B001657D4420BBEAD6749BBD20C12288900A604568B80B502A046FEF55CE82BA9B3F1623B09ACC24066A76922560A0080A991';
wwv_flow_imp.g_varchar2_table(10) := '9FF37D5B7B0DED2A8D807A4A80A757A5DD34BCAB8BBDDB3A0170402960C53AC0EB4820260456397DDB3263AD1200ACF62B3E7CCCA720F0559104AC13016B0400CF4EB9DA5F919D9E4E7909DC89BEEE3D15DD913502D09BEEE56A7F74FD80359B23501F76';
wwv_flow_imp.g_varchar2_table(11) := '5F2FC5152B040073232EFA95D26CBC36CE04D0D7D1E76DF0217201E84F8738EFB7A137D0069304EEEC5FF33259E7A0BA2217009BD2A14174788204C223509F4AF7463EF0452A005040A443E13166C924602F01F47DC4409016965A56A402608302960A8C';
wwv_flow_imp.g_varchar2_table(12) := 'D793409004A28E81C80400CA07050C1226CB2281B811400C2016A2B23B3201484BF6CEA89C66BD2460138128B380C80480BFE8635317A42D51125059007E7D78D826945340240270E8274BEE2AC758DE4302154AA03EAAEF054422004AF1227FFC51A11D';
wwv_flow_imp.g_varchar2_table(13) := '896EC59740245362E302D03FFA4796F2C4B77FD0F20A27501FC562A0710150A33F83BFC27B32DD2B8F403AD557F6FF81515E8DD1FC872091A43AE502E27D24608A403695BDCE545DBA1EE31980AA98198082C01709F809A8ECB8B23380FEF9BFDF6F1E93';
wwv_flow_imp.g_varchar2_table(14) := '0009F41330BD0E60340348F5A58DA738FD5CF94602B12050CE978286E39851019054D6788A331C38BC97044C1350D300A35364B3022062D439E13F1220812109181380FEFFF8634863F82109908018FD3E803101E84DF732FD67EF268180090CB7386302';
wwv_flow_imp.g_varchar2_table(15) := 'C005C0E13615EF4F0A01935F0832260049693CFA4902C32560F20B41C604209BEEE302E0707B06EF27818009181300D38F3702E6C4E248C0188162632508838C09803296198082C017091441C058AC98148022FCE62524400220F0D9CA6BC6E23DECCD88';
wwv_flow_imp.g_varchar2_table(16) := '0074FE6CC9B9613BC2F249A09208D4D4A6C798F0C78800987084759040920804E52B052028922C87046248800210C346A3C9241014012302D07B326B64412328282C8704A226602A668C0840D430593F09541281207DA100044993659140CC08500062D6';
wwv_flow_imp.g_varchar2_table(17) := '60419ADBD1D32BD87A7AFB822C9665C588000520468D1594A947BA4E4A736BA77C70E884B3ED6FEF169CA3100445383EE55000E2D356C3B21423FDBEF6CFA5E9E30E41C0F7F46607CAEBE8EE75CE35B77609AEE9614630C0C6B69DA0EDA100044DD4B2F2';
wwv_flow_imp.g_varchar2_table(18) := '30B27F70F8F448DFD675AAA075B80642807B201A056FE005B12640018875F3E5371E818F341FA33D4678FF95D3E6CE934BAFBF59E62FBF59B05F5D95F25C827B9C2982120F94C5ACC083A7620E280015D394220852A4F0B9D27CB85975568DCC9EB750AE';
wwv_flow_imp.g_varchar2_table(19) := 'B8E976993E67BE8C3C7BB48CAA19EDEC2F5C718BCCBC7881738C6BF506218088202B40D9A8437FC6F7F813A000C4BF0D9D053CA4EC0852A4F07E976AC78D9539975D2997DF708BD4D567FC1F3BC7A9EA5132E5C24B64DE35D7CB258BAE96BAC9539DF3EE';
wwv_flow_imp.g_varchar2_table(20) := '1F281B75A02E4E0FDC64CCEC87514B3A8C4259A6190248CD0BA5F9F3558A3F77C98D327E5A71BF620E21183DF57C99BD7899333D3867E605C2E98199F68CA2160A4014D487592752711DF83DAED57C148B341FA9FC655FF9BA93DA23C5C7F97236DC3B63';
wwv_flow_imp.g_varchar2_table(21) := 'FE1572C9B29B0A4E0F3E39DEE34C41CAA987F744478002101DFB926A46CA8DC0C7FC1EA9B83FF091E6637E8F341FA9FC88B47751AFA4CA7C1763AD0065627A80A9C49809937D5788B42A01E0F4601016EB4F50002C6F22A4F9987363451E81EF371729BA';
wwv_flow_imp.g_varchar2_table(22) := '4EF3F3CDEFFDF7947B8CE901A61299AB5738D38349E7CDE2F4A05C9825DE17D6E51480B0C80EB35C8CF83ACDC74ABCBB38A4F9787487341F293A5275F7E726F651E7AC86C53277E94D791F23E2E901840BBE98B08975944E8002503A33237760E4F7A7F9';
wwv_flow_imp.g_varchar2_table(23) := 'A878FAF4739DD57C3CC60B32CD9732FF4108600B1E234294FCC5C007F8E23FCF633B085000EC6887A2AD3870E0A0EC7AF939E96CDD27A7FACE7C9DB7E80242B8B0FDE33DF2FEE6F5F2F1AE1D2194CE22C324400108936E48651F3D765C766E7D4D3E7CE5';
wwv_flow_imp.g_varchar2_table(24) := 'AFD2B6A7391221C8F69C70EADEBE7E9DBCFFD666814D21B99BF862C304400108936E40654FCF5C2AF36FFE8E8C99E8FD720E826EF78E6DB2EDC575B27FFB16E9397A28A01AF31773F2F34E39F0FE76D9FAF76704759FE8EAF45C5C336EBC5C74D57281CD';
wwv_flow_imp.g_varchar2_table(25) := '9E0F786025010A8095CDE2356AE4F82932FEDADBE5D27FFDBD5CFEAD1FCAD48B1A3C17F47677C9277B3F94A64D2FC8EE373638D303CF05011C741C3F2E2D4D6FC8DB2FACCB99EA4F9A345116DCF05559F8B5FBA46EDEB501D4C8224C10A00098A01C601D';
wwv_flow_imp.g_varchar2_table(26) := '35F397CB9CBB7F2E57FD688DCCF9F2B7073D866BFBACD5991E609D60B8D303779ADFBCF13939F451CB204F662EBA4E167DE37E997DEBF764F4CC05833EE709BB095000EC6E9FBCD68DA89D225397DD21573CB84632370E3D3D40CA8ED43D6F61BE0F702D';
wwv_flow_imp.g_varchar2_table(27) := 'EEC997E68F1C5DEBA4F957FDCB7FC8B90D4B65444DADAF041E064520EC72280061130EB9FCD4B8C93271E9EDD2F0DD5FE69D1E6075FE9D4D2F3A297C57DB67792D2A94E68F9F304132CB6F952FDC713FD3FCBC14E3F50105205EED95D75A08817B7A507F';
wwv_flow_imp.g_varchar2_table(28) := 'F5973CD303AC132085DFF1EA8BCE6344F7F400FB58CD1F2ACDBFECF6FBE4E2DBBE2FB5172CCC6B033F881F010A40FCDAACA0C5981E9C77EB03B26865E1E941D3DFFE9C73351F69FE858B97C9E27B7EECA4F9678D195FB05E5E103F021480F8B559D116A7';
wwv_flow_imp.g_varchar2_table(29) := '6BCF4C0F1ABEF9039938DB3B7A232BC037F5DC0522CDC7633CA4F993172C91742AB85F2A72D7C3FDC2044C5C4101304139E23A303D18BB708564EEFD85F3F460C695DEE901CC9B9EB954749A5FC7C7784092888D029088663EE324A607336F7B40A62DFE';
wwv_flow_imp.g_varchar2_table(30) := 'A7819308FE195FBC4598E60F2049CC0E0520314D4D47496030010AC060263C4302911330650005C01469D643021612A00058D8283489044C11A0009822CD7A48C0420214000B1B8526259B8049EF29002669B32E12B08C0005C0B206A1392460920005C0';
wwv_flow_imp.g_varchar2_table(31) := '246DD645029611A00058D6203427D9044C7B4F01304D9CF59180450428001635064D2101D3042800A689B33E12B0880005C0A2C6A029C9261085F7148028A8B34E12B0840005C09286A019241005010A4014D459270958428002604943D08C641388CA7B';
wwv_flow_imp.g_varchar2_table(32) := '0A4054E4592F0958408002604123F84DE8E8E995CEEEDE81D3877635C9C9FD3B068E6DDFE9EE6897E3ED6D0366C217F83470823BD610A00058D3142247BA4ECA07874FC807874E88FBBFEBEE38DC2A9B1F5B293B7F75AF74EFB3570810F8BBFFEF0FF2D6';
wwv_flow_imp.g_varchar2_table(33) := 'DA47E5D8C1BD0364E10B7C826FF0B1A7B76FE033EE444B8002102D7FA7F64F8EF748736BA7EC6FEF960ED7C8EF7CE8FA71A4F5A06CF9ED6921E8DABE5E24EBFA30C2DDA31F6E93779F7ACC097CFCF5A17CA6C037F80831A0109CA114E51E052022FA4889';
wwv_flow_imp.g_varchar2_table(34) := 'F7B57F2E4D1F7748AB12809E5E6F34D78E1B2BB3E72D9439975D29A36A467BAC8410BCF9878765E7AFEF95F64D6B231382B61D9B64DB938F4AF3FAA7A5FDC8118F8DB059DB3F66C264CF67F01542D0DCDA2560D0C38CC0C3C7E40105C0246D5517463EA4';
wwv_flow_imp.g_varchar2_table(35) := 'C21805DBBA4EA933DED79473CE91F9CB6F96B94B6E94BAFA8C8C9F562FF3AEB95E2E5974B5F8030942B07DDD13F2F6C3F7181382EC896382C07FF3F19FCA7BAFAF97AE63ED1E07205C102DF8A0EDCF5CBDC2F169D279B33C7FAF1037820184004C208A14';
wwv_flow_imp.g_varchar2_table(36) := '035031B751000CB146E0E74BF3ABCEAA916973E7C9A5D7DF2C33BF70DDA0113F553D4A464F3D5F7420D54D9EEAB11A6B0410822D0FDD238737AE95BEA3F9FF02B0E7C6120E10F8079B36CAE63F3EE2047E4F8E8C052205E18268F98B464630AB61B1CC5D';
wwv_flow_imp.g_varchar2_table(37) := '7A93E36B7595F74F8E617A0051446600563DCC0AFC084339A6008482F574A1E8C4487191E6A363F7F88206418134F9F21B6E91E973E6CBC8B3BDA9FEE952BC3F9D7B162FCB39A276B7B54AF3734FC83F7EF7A07CF4F4238108C1A9AEA3A2037FEFD697BC';
wwv_flow_imp.g_varchar2_table(38) := 'C6A82377C6029152A7867CC17EF8BA70C52DCE1407C7EE1B20046085AC00EC7A2A5C08DCBE47B14F0108813A5259A4B4E8C44871FD554CAC1BE7A4F43A4DF67F5ECC310227DF880A21D8F3DAF38E10EC7DEA91B21E2162457FFFAB7F91AD7FFA8DE40AFC';
wwv_flow_imp.g_varchar2_table(39) := 'A1329662EC475653A7A6386080CCC19FD5A00CB00343B004539CE3162C010A40803C91BAA2B32295C548E62F1A41830E7FC117BFE2A4F4FECFCB3986106044BD64D9E0D41A42B07FF3F3253D4244E0B76C7AC659D13FD0FCB6C7243D55B9EC2B5F2F3A63';
wwv_flow_imp.g_varchar2_table(40) := 'F11490E70099C3ECFEAC068CF24D0FC0168C9915E40159C6690A4019D0FCB70CF5180F4133F3E205A2830601EBBF3F88634C1F200448AD519FBF1E2C18BA1F21FA33EB8E4FF60E3CCA6B7DAFC963127C704F5546A4BDF377CFC5C33880CDF0016296CB07';
wwv_flow_imp.g_varchar2_table(41) := '882AA60710580AC13040BB6EA500B86094B28B94147354CCEF877A8C87F9FD940B2F91B082C66F33526BD4872707588D4750B9AF8110E0112232037D1E23FDF6679FC8FB280F3E205DD7D787FD0E3173FBE07FFAD1A3D6522004981EA00D7AFC6A16B681';
wwv_flow_imp.g_varchar2_table(42) := '01956F43311480325A01A9284621CC51FDB7BB17C54C068DDF0E080156E321049863FB83C8A341048E00000F16494441547FBDFBD8FF28CFFD99C97DED837EFA31D463446461266DAB94BA280025B624461BA4A2FEDB30D2627E9FEB319EFF5A93C70822';
wwv_flow_imp.g_varchar2_table(43) := 'CCB11144F3BEB8A260D548F5F33DCA2B7873881780AF5EF4C4BEBFAAD35918BF62ECE752E89802508890EFF31E957EFA4E398727BA3AE583CDEBA56D4FB39CEAF37EABCFB920C21F273FEF9403EF6F971DAFBE58D08A96DDBB65FFF62D827B0A5E6CF082';
wwv_flow_imp.g_varchar2_table(44) := '6CCF0987EDAE8DCF0A58E7AA3A5FDBE4BA96E74E13A0009CE610C84F74CCDD3BB6C9B617D73941D473F45020E5965B08EC4130BFFDC23AF978D78EA28AE9EDEE924FF67E28EF6C7A515A9ADE101B7C80786DFDFB3302B69512E4453586818B2800C3847C';
wwv_flow_imp.g_varchar2_table(45) := 'D58FD6C88C2BBFE429450751D3A61764F71B1BA4B3759FE7F3B00F10F808DEEDEBD739C1ECAE6FE4E85A99B9E83A999EB954F4BFA91735C89C2F7FDBF3355DF8805FEC810FBB5E7E4EBADA82FF76A1AE3FD77BC7F1E38E00C1875CE23569D2445970C357';
wwv_flow_imp.g_varchar2_table(46) := '73DDCA732510A00094002BD7A5236AA7C8CCDB1E1008813F88707DDB67ADB273EB6B82200A7B7A70ECD0A74E3D081A042FEAD71B02FFA2AB96CB17EEB85FCE6D58AA4F3BEFA3264C95A9CBEE902B1E5C23991BBF2363267ABF6A7CF4D87167FA001F2066';
wwv_flow_imp.g_varchar2_table(47) := '614E71C008F6376F7C4E72F900F15AF48DFB65F6ADDF93D1331738F6F347F9042800E5B3F3DC09212814444861313DF8F4839D81CEB175D0BCA7D62010AC6EC36AC68D171DF875F3AE757F34683F356EB24C5C7ABB347CF797D2F0CD1FE4140288D987AF';
wwv_flow_imp.g_varchar2_table(48) := 'FCD5998F07250498DF23CDDFF2EC5A27CD4706E336CE2F5E236A6ADD1F737F18042800C38097EB5677105DFEAD1F0AD26BF775BD6A8EBDF7DD7706E6D8E5A6D6081A047ED3DFFE9C3368C64F982099E5B7CAC2AFDD278502DF6D1FF6E1C3D8852B1C2180';
wwv_flow_imp.g_varchar2_table(49) := '0F13672FC4E9810D2203317BF7A5678725040874AC51607E9F2BCDD73E206B29D58701632DDCB1C9240A4048AD8120AA99BF5CE6DCFD73677A507FF59772CEB1B1325F4A6A8DC0C76889A04110FA17C510340DB7DC2917DFF67DA9BDC01BB8A5BAAA7DC8';
wwv_flow_imp.g_varchar2_table(50) := 'DCFB0BC707BF9821806143A9590D840B3E23D5C782A3DF2EA4F997DD7E5F203EF8CBE6B1970005C0CB2394234C0FCEBBF50159B472CDA0C53654881115A9F550232A1ECBE9C0CF355A9E33F302D141336ACAF92836D00D3E68319BA1163DDDDFD7776735';
wwv_flow_imp.g_varchar2_table(51) := '18D161ABBF720817025F672CF0D97D0DD2FC0B172F93C5F7FCD859A3386BCC78F7C7DC0F8900052024B0B98A4DD74E1E586CC31CDB9F5ABB475404121EC1E11C56F4F33DCAC368B9482D8AD5DFF0CF622268200458F4BC7CE5EF078919840023BAFB1122';
wwv_flow_imp.g_varchar2_table(52) := 'ECD7C2856C2157C6A2D728262F5822E95438BF6790AB3D784E840210412F406A8D39B64EAD31A2BACDD0818447704893F3AD86EBD1328A45310801163D736535B01F366BFB73652CFA311EA62A499ADFBBDBD9867D0A40C4AD8040C2889AEF31A2DB3CA4';
wwv_flow_imp.g_varchar2_table(53) := 'C97AB4C4A33C1B464B775693EB11A2DF7E9DB1CCE6633C379AC8F6290091A1F7560C21C0889AEB597C298FF2BCA59A3B425693EF11A25FB8A2C858CC9188574D1400CBDA4B07D2A4B90D0396D54DAF2FF951DEC0CD8677603FA6376EFBA79C3F2B36F61B';
wwv_flow_imp.g_varchar2_table(54) := 'C61579751480C89B80062485808D7E52006C6C15DA4402860850000C816635246023010A808DAD429B48C010010A8021D0AC26D9046CF59E02606BCBD02E1230408002600032AB20015B0950006C6D19DA4502060850000C406615C92660B3F714009B5B';
wwv_flow_imp.g_varchar2_table(55) := '87B69140C8042800210366F1246033010A80CDAD43DB4820640214809001B3F86413B0DD7B0A80ED2D44FB48204402148010E1B26812B09D0005C0F616A27D241022010A4088705974B209C4C17B0AC0305BA97BDF8E619660FEF6EC8963D27DFCE840C5';
wwv_flow_imp.g_varchar2_table(56) := '27DB3F15C90E1CC666A7BBA33D36B6DA6A280560982DB3E5B72B65E7AFEE95AEEDEBAD0F2204FEC1A68DB2F98F8F78FEEEDE81E6B765CB43F7C8E18D6BA5EFA8D93F025A0EFEB61D9BE4DDA71E93B7D63E5ACEEDBCC7458002E08251CCEE98EA2ACF5FF8';
wwv_flow_imp.g_varchar2_table(57) := '11F5EF48EB4179F30F0FCBDB0FDF23ED9BD65A2704A7BA8E8A0EFCBD5B5F52160F7E75B7B54AF3734FC83F7EF7A07CF4F423D60901C40B81FFE6E33F95F75E5F2FED478E789C18735695A06D3C277950900005A020A2C11764A68E9619E3CF1A24041D87';
wwv_flow_imp.g_varchar2_table(58) := '5B65FBBA279CD1144174727FB4D303A4C8FB5FFD8B6CFDD36F2457E0D7D58C106CD555A9012721047B5E7BDE1182BD4F3D2236F8A0C50B81EFFFC322087CB4C58513470DF860C34E5C6CA00094D952136A460A84E0C249A3049DD05D8C0EA2CD8FAD94F7';
wwv_flow_imp.g_varchar2_table(59) := 'D7FCDBE9E981FB8290F711F82D9B9E715264A4F7FEEA10F499A93572FEF8B39D0D3EE09C5F08F66F7E5EE003A638A6D73ABA8EB589F6219F78C16E043EDAC2EF238F8B234001288E53DEAB9076A213A233FA830837B5BED7E44C0F1044614F0F3A3ED93B';
wwv_flow_imp.g_varchar2_table(60) := '303746BDA8DFBD61A46C9836C609FAEAAA334D8F7D884146653653C7560FCA6C30C531B5D681347FDB938FCAB627FF5B72F900C6997EF11A535DE5768FFB651038D30BCAB899B79C2180CE582888F4F420E8C5361D34DB9F7D62D0DCB85AA5F73AF08B19';
wwv_flow_imp.g_varchar2_table(61) := '29CF195BED6436B807F79EF150044280B58E9DBFBE37D0B50ECCEF91E6BFFE3FFFE5CCEFBB8E0D5EDD873DB9C4CB6D1FF74B274001289D59C13B7410212BC8353DD08B6D9863979B5A236810F87A51CC1F34A817419351A37A3181EF770AF7E05EF8904B';
wwv_flow_imp.g_varchar2_table(62) := '082066C35DF4C454056B14782A912BCDD73E20F0618FDF465B8FE364170520C4D61A535D25F9A6075827C01CBBD4D41A818FD11241936F510C418B7A83081AF8A0850001E9C6E55EF42C25AB8170E9C778F9D62882F4C16D33F7BD0428005E1EA11C2188';
wwv_flow_imp.g_varchar2_table(63) := '303D40A7C61CB65AA5E5EE8A746A3DD4885AE8511ECA45F9087CD4E72E3F887D9489B2510784C0ED03C44C673578FA91EBBB04102E04BECE58FC8FF16023D61F329CDF0385B18D02600CB5A8C5B5B4B30097516939D2737710C10CF7887AF0DD269C72B6';
wwv_flow_imp.g_varchar2_table(64) := '4FF7B50CF9282F633068B410CCA83B7BC847886EFBDB0EEC71BE7C942F63010BA4F9983A614152F8CF18010A8031D4DE8A909E679410E811D5FD2946546CFADCC9CE335FDBD5E730E267FA033F8AA08110E4CB6A603B366DAB7F7D02E7613F7C47560116';
wwv_flow_imp.g_varchar2_table(65) := '3857095BDC7CA00044DC6208240401820141E1CF0AFCE6E9D112C11745E0FBED810DB025A3C40C297C21FBE163A65FB8E0BBBF3C1E9B25400130CB3B6F6D08867C8184A0D2816FF36889143EA38400B6C266B7B33887341F3E4234DC9F713F3A021480E8';
wwv_flow_imp.g_varchar2_table(66) := 'D8E7AD590712B2026C082A9B03DFEF086C85CDB01D1B021FE7FCD7F1387A021480E8DB20AF05C80AB0E5BDC0F20F603B36CBCD0CCCBC381644018863ABD166120888801101A81A993A1E90BD2C860448204002460420407B591409248280A94193029088';
wwv_flow_imp.g_varchar2_table(67) := 'EE4427C32610D7F22900716D39DA4D0201103022005D47FB3A02B0954590406208988A192302909856A3A324103302460460F243AFF02940CC3A06CD2D9E4018579A8A192302D00F684FFF3BDF4880048626602C568C0940369535E6D4D06CF92909D84D';
wwv_flow_imp.g_varchar2_table(68) := 'C064AC181300BB91D33A12B08740AA2F6D6CB04C9B723B954DE5FE8B14A60C603D24100281B817694C00FAB2E90D718745FB49C004816CBACFD8609936E110EA1821622CAD11FE23811813A8EAAB3236581A138018B7074D2701A304EA1A37181B2C8D09';
wwv_flow_imp.g_varchar2_table(69) := '009C52AB9B1B8C92646524102281308A361D23C60400B04CAE6EA23E6E24103702A663C4A800F449EA7FE3D620B497044C1230B90008BF8C0A001702819C1B09E4276072011056181500AE030039B74A20108A0FD9D4E3889150CACE53A85101800DFC42';
wwv_flow_imp.g_varchar2_table(70) := '10287023811C0452D9BD39CE867ACAB800F00B41A1B6270B8F31812862C3B8004C6EDCB0C1F4A38E18F7099A9E1C027B101BA6DD352E00FD0EF269403F08BEC58F401816AB41717518E5162A33120130BDD25908023F2781A809441513910800563A95E2';
wwv_flow_imp.g_varchar2_table(71) := 'F15B8151F73AD66F07810856FFB5E39108002ACFF6554592F2A06E6E2460138128BF2017990060C18359804DDD90B6144320E86B10038885A0CB2DB6BCC8040006AA79CFDD78E7460249251075261CA900702D20A9DD9E7E3B04D4DC3FCAD11F36442A00';
wwv_flow_imp.g_varchar2_table(72) := '3080590028704B2281B4A4225F074B470DBE3F0BE05420EA8660FD0509047CC16AF4FD80CB2CB9B8C80500164FFACF971FC76208F6B99140A513405F9FB86A63A30D7E5A210000C1A90028704B02019BFABA35028074482923A70249888004FBD8974D2F';
wwv_flow_imp.g_varchar2_table(73) := '475FB7058135020020980AA8F7C81746940D7C91808740100718E0A25EF5F7FB619500C0B8FEB911450030B8550E01F5C8AF7F80B3CA27EB040074D2D9F4E3EA9D22A020F0157F026AE4DF30B1F1252BA7B7691BF1628E4411B0B1656853C9044E8FFCCB';
wwv_flow_imp.g_varchar2_table(74) := '4BBECFD00D560A007C8708703A0012DCA226308CFA57DB3AF26B9FAC15006D204440A55056A64FDA46BE93809F0056FBD177FDE76D3BB65E00000C8B276A4A304B0901FF0F0100E1662D01F451F455DB56FBF3018B8500C0784C099410602EC5C54100E1';
wwv_flow_imp.g_varchar2_table(75) := '662381D5E8A3E8AB361A97CBA6D80880361E69151456D4E28A3EC77712088B4031E5EA511F7DB398EB6DBA267602007850582CAE500840835B540474E0C76DD477F38AA500680728049A04DF8D1250D92716F9E21CF89A57AC05403BE1110291D55066FD';
wwv_flow_imp.g_varchar2_table(76) := '19DF492020027B5439AB559A9F42F61997453E65F390AF8A1000EDA12304AB363642999DE901C540A3E17B1904D42D4ED063B457813F4B6D56FC0AAFB22BB0574509809B8A5F0C54567037160ED53B1F25BA4171DF4DC0097875E2F448BF6AA313F49532';
wwv_flow_imp.g_varchar2_table(77) := 'DA2BBF06BD2A5600DC9E420C5456F0385237F5BE1CD9013625068E28B884011DC07D2BF72B8FC01ED5EE1BD0E6CA353C525EDD3FC2A7D408EF04BC7AAFB8915EF99AF3950801F07B0E41C0A6C4C011052D0CAAE1D101527D9DBDE3B09D3D223B4D6F23B3';
wwv_flow_imp.g_varchar2_table(78) := '7D17718B0F03DD6EFA5DB52D021CDB2CD5EECBD1E6EA5C23B64A1EE1FD7DDF7F9C4801F043F01F4F7EE895E3D846FFFBCB07F536AE71D32E6EF161A0DB4DBFFBDBB8D071523EA70024A5A5E92709E4204001C80185A7482029042800496969FA49023908';
wwv_flow_imp.g_varchar2_table(79) := '50007240E1A964134892F7148024B5367D25011F010A800F080F492049042800496A6DFA4A023E0214001F101E269B40D2BCA70024ADC5E92F09B80850005C30B84B0249234001485A8BD35F127011A000B8607037D90492E83D052089AD4E9F49A09F00';
wwv_flow_imp.g_varchar2_table(80) := '05A01F04DF482089042800496C75FA4C02FD042800FD20F8966C0249F59E0290D496A7DF24A00850001404BE4820A9042800496D79FA4D028A00054041E02BD90492EC3D0520C9AD4FDF134F800290F82E4000492640014872EBD3F7C413A00024BE0B24';
wwv_flow_imp.g_varchar2_table(81) := '1B40D2BDFF7F000000FFFF1AA11199000000064944415403007A3C22E27627F2160000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(1966545077544857025)
,p_file_name=>'icons/app-icon-256-rounded.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/shared_components/files/icons_app_icon_512_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000200000002000806000000F478D4FA00001000494441547801ECDD5BAC5DD75DEFF11127751A27CDA5899D50E5DAB424BB4DEC024EDA54BDC5151CD406FA0455D11108907840A23CA003E2483C1C212101E2';
wwv_flow_imp.g_varchar2_table(2) := 'A120F180C4E1F2505478AAD28284C88D4B436E34769BB811B8A99D50F9927B7D8957B26DD66FED3DECB9D75E9739E71873CE31C6FF5B753B7BAF352F637CFECB1EBF35C69C6B6F79F9FF7DE22C5F18F01AE035C06B80D700AF015BAF812D8EFF21800002';
wwv_flow_imp.g_varchar2_table(3) := '082080803101E70800E64A4E871140000104102000F01A400001041040C09C803ACC0C8014F8420001041040C0980001C058C1E92E02082080807581B5FE1300D61CF8130104104000015302040053E5A6B30820800002D6057CFF09005E82FF22800002';
wwv_flow_imp.g_varchar2_table(4) := '08206048800060A8D8741501041040C0BAC0F9FE1300CE5BF01D02082080000266040800664A4D471140000104AC0B54FB4F00A86AF03D02082080000246040800460A4D371140000104AC0B6CEC3F0160A3073F2180000208206042800060A2CC741201';
wwv_flow_imp.g_varchar2_table(5) := '041040C0BAC074FF0900D322FC8C000208208080010102808122D3450410400001EB029BFB4F00D86CC223082080000208142F400028BEC4741001041040C0BAC0ACFE130066A9F018020820800002850B10000A2F30DD4300010410B02E30BBFF0480D9';
wwv_flow_imp.g_varchar2_table(6) := '2E3C8A000208208040D1020480A2CB4BE71040000104AC0BCCEB3F01609E0C8F23800002082050B00001A0E0E2D2350410400001EB02F3FB4F00986FC333082080000208142B400028B6B4740C01041040C0BAC0A2FE130016E9F01C020820800002850A';
wwv_flow_imp.g_varchar2_table(7) := '10000A2D2CDD4200010410B02EB0B8FF0480C53E3C8B0002082080409102048022CB4AA71040000104AC0B2CEB3F01609910CF23800002082050A00001A0C0A2D2250410400001EB02CBFB4F00586EC4160820800002081427400028AEA4740801041040';
wwv_flow_imp.g_varchar2_table(8) := 'C0BA409DFE1300EA28B10D020820800002850910000A2B28DD4100010410B02E50AFFF04807A4E6C8500020820804051020480A2CA49671040000104AC0BD4ED3F01A0AE14DB21800002082050900001A0A062D2150410400001EB02F5FB4F00A86FC596';
wwv_flow_imp.g_varchar2_table(9) := '0820800002081423400028A694740401041040C0BA4093FE13009A68B12D020820800002850810000A2924DD4000010410B02ED0ACFF0480665E6C8D0002082080401102048022CA48271040000104AC0B34ED3F01A0A918DB23800002082050800001A0';
wwv_flow_imp.g_varchar2_table(10) := '8022D2050410400001EB02CDFB4F00686EC61E082080000208642F4000C8BE84740001041040C0BA409BFE1300DAA8B10F020820800002990B1000322F20CD4700010410B02ED0AEFF0480766EEC85000208208040D6020480ACCB47E31140000104AC0B';
wwv_flow_imp.g_varchar2_table(11) := 'B4ED3F01A0AD1CFB21800002082090B1000120E3E2D1740410400001EB02EDFB4F00686FC79E082080000208642B4000C8B674341C01041040C0BA4048FF0900217AEC8B000208208040A60204804C0B47B31140000104AC0B84F59F0010E6C7DE082080';
wwv_flow_imp.g_varchar2_table(12) := '00020864294000C8B26C341A01041040C0BA4068FF0900A182EC8F000208208040860204800C8B46931140000104AC0B84F79F00106EC811104000010410C84E8000905DC968300208208080758118FD2700C450E41808208000020864264000C8AC6034';
wwv_flow_imp.g_varchar2_table(13) := '1701041040C0BA409CFE1300E2387214041040000104B212200064552E1A8B00020820605D2056FF0900B124390E02082080000219091000322A164D4500010410B02E10AFFF048078961C090104104000816C040800D9948A862280000208581788D97F';
wwv_flow_imp.g_varchar2_table(14) := '02404C4D8E85000208208040260204804C0A45331140000104AC0BC4ED3F0120AE2747430001041040200B0102401665A2910820800002D60562F79F00105B94E321800002082090810001208322D1440410400001EB02F1FB4F00886FCA111140000104';
wwv_flow_imp.g_varchar2_table(15) := '10485E8000907C896820020820808075812EFA4F00E842956322800002082090B8000120F102D13C0410400001EB02DDF49F00D08D2B474500010410402069010240D2E5A1710820800002D605BAEA3F01A02B598E8B000208208040C2020480848B43D3';
wwv_flow_imp.g_varchar2_table(16) := '1040000104AC0B74D77F024077B61C1901041040008164050800C996868621800002085817E8B2FF04802E753936020820800002890A1000122D0CCD4200010410B02ED06DFF0900DDFA7274041040000104921420002459161A8500020820605DA0EBFE';
wwv_flow_imp.g_varchar2_table(17) := '1300BA16E6F80820800002082428400048B028340901041040C0BA40F7FD2700746FCC19104000010410484E8000905C496810020820808075813EFA4F00E84399732080000208209098000120B182D01C0410400001EB02FDF49F00D08F336741000104';
wwv_flow_imp.g_varchar2_table(18) := '1040202901024052E5A0310820800002D605FAEA3F01A02F69CE8300020820804042020480848A41531040000104AC0BF4D77F02407FD69C0901041040008164040800C994828620800002085817E8B3FF04803EB5391702082080000289081000122904';
wwv_flow_imp.g_varchar2_table(19) := 'CD4000010410B02ED06FFF0900FD7A7336041040000104921020002451061A8100020820605DA0EFFE1300FA16E77C0820800002082420400048A008340101041040C0BA40FFFD2700F46FCE19114000010410185C800030780968000208208080758121';
wwv_flow_imp.g_varchar2_table(20) := 'FA4F0018429D7322800002082030B0000160E002707A0410400001EB02C3F49F00308C3B6745000104104060500102C0A0FC9C1C01041040C0BAC050FD27000C25CF791140000104101850800030203EA74600010410B02E305CFF0900C3D97366041040';
wwv_flow_imp.g_varchar2_table(21) := '000104061320000C46CF891140000104AC0B0CD97F02C090FA9C1B0104104000818104080003C1735A0410400001EB02C3F69F0030AC3F6747000104104060100102C020EC9C1401041040C0BAC0D0FD27000C5D01CE8F0002082080C00002048001D039';
wwv_flow_imp.g_varchar2_table(22) := '2502082080807581E1FB4F0018BE06B400815E0546AB67DCA1D7DE747BBF7FDCED3F7262F2FDF1D16AAF6DE064082030BC000160F81AD002047A1138FC83D164C0DF7FE4A47BF5E4DB93738E56CF4EBE3FF0D2A9C973DA66F2047F208040A702291C9C00';
wwv_flow_imp.g_varchar2_table(23) := '9042156803021D098CC6EFF635A8EBDDFE917100188D07FC79A7D273DA46B302DA6734DE77DEB63C8E0002F90B1000F2AF213D40609380066F4DF3EBDDBE06F54D1B2C7860340E09DA47B3023A06CB030BB0780A81560269EC440048A30EB4028128027A';
wwv_flow_imp.g_varchar2_table(24) := 'E7AE77F01AF8FD347FDB032B08E8180A023AA68EDDF658EC870002E9091000D2AB092D42A091C0683C55AFC1B9CE347FA30357361EADCF0AF820301A9FB3F234DF228040038154362500A45209DA814043010DC21AF8F56E5F53F60D776FB5F9683D0868';
wwv_flow_imp.g_varchar2_table(25) := '5680E5815684EC844032020480644A414310A827B036E89F707D0EFCD32D5310A82E0FBC72F2ADE94DF8190104660AA4F32001209D5AD01204E60A8CC653EE1AF8634DF36FBDF00277C32DB74EBE2EBC78DBDCF3D67962349E1578E1B5D3E34072C2A98D';
wwv_flow_imp.g_varchar2_table(26) := '75F6611B0410185E8000307C0D680102730546EB037FAC77FB976CBBD4DDB2EB6EB7EB277FD65DF781DD93AF9D7BEE9B3CA6E7E636A4C613A37110D05284AE1338F4DA9B8EBB076AA0B1893981943A4C0048A91AB4058175010D9E1A44630DFC97FFD04D';
wwv_flow_imp.g_varchar2_table(27) := 'EEB60FDFEBEEB8F73E77CDF5B7AC9F65ED3F176DB960F2D8ED9FFCEC649BABB65FBBF644CB3F1504581E6889C76E08F4284000E8119B5321B0486074EEDDFE09A78BEC34882EDABECE739AE6FFD0A7EF73B7FDE847DCE5D7EC58B88B8280B679DFDD9F72';
wwv_flow_imp.g_varchar2_table(28) := 'BB3EF6699607166AF124026D04D2DA870090563D688D4181F303FF49A729F4D1782A3D8441EBFB9AE6DFFDE33F3D99E27FC73B2F6D7CB8AD575C33D957CB0337DD7EA76379A031213B2090BC000120F912D1C0520546E377FC31A7F92F7BF7F6C95ABED6';
wwv_flow_imp.g_varchar2_table(29) := 'F735CD7FC1D64B82E9342BB0E3D60FB82E9607D4772D7504379203209089406ACD2400A45611DA53BC80AE94D785725ADF8F35CDAF29FB957BF64CD6F2BB005410A82E0F5C77D37B5DE8DD03EABB963A6421932EDACD31114060BE000160BE0DCF20104D';
wwv_flow_imp.g_varchar2_table(30) := '40EFF635C8C5BC8D4F53F37E9A5F53F6D11ABBE4403AD70D77DCE5EEFCD89EC975023197076424AB254DE06904321448AFC90480F46A428B0A12D060A6A96EBDDBD7FA7E68D7AAD3FC3BC653F331A6F9DBB649D716E856422D0FBCFF473EECAEB8FC5D6D';
wwv_flow_imp.g_varchar2_table(31) := '0F35D96FB47A76720D84660564C6F2C084853F10E84C8000D0192D07B62CA077B29ADAD6C0AFA9EE500B4DB9773DCDDFB68D5A1EB8F23D37BB1FFEF86726770FECB8EE3A17B23CA0202033050119CAB26DDBD80F815404526C070120C5AAD0A62C0546AB';
wwv_flow_imp.g_varchar2_table(32) := '67269F8417739ADFDFC6A729774DBDA70EA336DEF4639F7477DC75CF6479202408A8AFA3F559011F044663633DCE170208840B1000C20D398271010D4A7A97AA77FB31A6F9B5A6AEDBF87435BFA6D835D59E1BB18280DAAEDB08591EC8AD7AB437BE409A';
wwv_flow_imp.g_varchar2_table(33) := '472400A459175A9581C0DAA07FC2C51AF8177D5A5F061C339B585D1EF8E047F7382D0FCCDCB0E683A3F18C407579805F4254138ECD10982140009881C24308CC13188DA7A035F07731CD5FE7D3FAE6B52B87C7B75DB5DD697940D732686923C6F200BF84';
wwv_flow_imp.g_varchar2_table(34) := '2887CAD3C654050800A95686762525E007FE58EFF64B98E66F5BA0EAF280963A64D1F658DA6F349E15D0D28BAE1338C42F2112095F08D4122000D4626223AB02BA154D834AAC81BFC469FEB6AF0D2D0FE8130B751BA17E5111BF84A8AD24FBA52D906EEB';
wwv_flow_imp.g_varchar2_table(35) := '0800E9D686960D24305A9FE6D73B4ADD8AA635E7D0A668CABBEE2FE5093D576EFB2B08543F6550562C0FE45645DA9BA3000120C7AAD1E64E04CE0FFCE9FC529E4E3A9AF041ABCB03FAA4439607122E164DAB2590F246048094AB43DB7A138839CD5FFDB4';
wwv_flow_imp.g_varchar2_table(36) := '3E4D710FF9697DBD01463E91660576DCDADD2F218ADC5C0E8740960204802CCB46A36309E85DFF81974FB958D3FCBAC2BDCB5FCA13ABDFB91C4741A0BA3CA04F440C5D1E50ADB5BCA3DAE7E2403B731548BBDD0480B4EB43EB3A16D0C57DC74FAFB63ECB';
wwv_flow_imp.g_varchar2_table(37) := 'D60B2F709AAA1EE297F2B46E74A63B6A79409F8818E397108D56CF4E3EBF21530A9A8D401401024014460E624DA03ACDAFA96AA6F9FB7B05E89311F52983BA7B20C6A70CF6D772CE644D20F5FE120052AF10ED4B5AE0ECE854D2ED2BB9715A1E78FBCC59';
wwv_flow_imp.g_varchar2_table(38) := 'B77AD13B4BEE267D43A03301024067B41CB86481E3AF1C73CFEF7DDC3DF36F0FB8A3079E756FBD79A2E4EE26D5370DFA32FF8F7FBA7F5203D522A906D218042602E9FF410048BF46B430618153274FB883DFF9967BF6E1AFBB17BEFD84D3CF093737EBA6';
wwv_flow_imp.g_varchar2_table(39) := '8D5E7FC91D7EF649F7CD7FF8DB89F9EAE99359F787C62330B4000160E80A70FE22047451D9E183DF75DF7EE86B6EFFA30FBA375E3AEA581E8853DA975E7C7E62BAF75F1F702F3C7F20CE41390A021D0BE4707802400E55A28D5909684AFAB9C71E72DF79';
wwv_flow_imp.g_varchar2_table(40) := 'EA51A7C18B20D0BC7C9AE6971DD3FCCDEDD80381BA020480BA526C8740430105015D27B0EFC1FB591EA869579DE697DD2AD3FC35E5D82C2D813C5A4300C8A34EB47220815D3FF71BEEDADB76059D9DE581E57C278E1C72079F7AC4C59AE6DF76F9956EE5';
wwv_flow_imp.g_varchar2_table(41) := 'DECF2D3F315B206058800060B8F8747DB9C0BB76EE71EFFFC5DF731FFDEDBF742B9FF9F9E53B2CD942B302CFB13C3051F2D3FCBA6EE2D9271F75470F1F9E3C1EF2C7AD777FCAEDFEC217DDCE9FF93577C57B77861C8A7D11682D90CB8E04805C2A453B07';
wwv_flow_imp.g_varchar2_table(42) := '15D872C57677F5273E7F2E085C76F5B541ED5110D014B75F1EB0741BA1FAEAAFE69741E89D93C981E40000100049444154137AB7AF81FF23BFFC3B6EFB9D1F77176DBB22A836EC8C8015010280954AD3CF28023E08ECFC95DF773197079E7EE06B4E53E0';
wwv_flow_imp.g_varchar2_table(43) := '275F3D16A59D291EE4F4B1B5697EF535C6D5FC7EE0D7BB7D0DFC29F699365914C8A7CF04807C6A454B13125010A82E0FDC7CCF4F04B74E53E0CF7CE3C1C92D6FBA02BE94BB07D4174DF3EF7B3CFE343F037FF0CB8E0318162000182E3E5D8F23A03070FD';
wwv_flow_imp.g_varchar2_table(44) := 'E77EFDDCF240E851ABCB034733FD9441ADEF6B9AFF89AF7F65F2697D4CF387BE2AD83F17819CDA4900C8A95AB435690105017F9D40ACE501FF2983079F7AC4E5B03CA0DBF8F48988FAB43EA6F9937EB9D238041C018017010291051404622E0FE836C2D4';
wwv_flow_imp.g_varchar2_table(45) := '970734CDAF4F40D46D7CFA44C450D26BAEBFC5EDFAA95F985CCDCF347FA826FBF72790D799080079D58BD66626A030D0C5F2400ABF8448D3FC47C74B14B13EADCF5FD4B7FB0B5F74EFFB5FFFDB5DB2E3C6CCAA4D7311C84B80009057BD686DA6020A0231';
wwv_flow_imp.g_varchar2_table(46) := '9707B4A6EE970734E5AE9FFBA2D134BFD6F735CDAF36AC067E5A9F1FF8FDD5FCDCC6D75725394F6C81DC8E4700C8AD62B4376B010501BF3C70D7AFFE81CBE95306ABD3FCB1D6F7F5697D7EE0CFBAB0341E810C05080019168D26972170F18D1F4CFE5306';
wwv_flow_imp.g_varchar2_table(47) := '35CDAF81BF8B697E0DFC7C5A5F19AF657A2181FCBE0800F9D58C161726A05901BF3CA08F1B8EFD29836D9607AAD3FCFAB43EA6F90B7BD1D11D04C60204803102FF472005011F04627FCAA03E844757E8BFF1D251B7ECC385BAFAA53C7AB7CFD5FC29BCCA';
wwv_flow_imp.g_varchar2_table(48) := '68435702391E97009063D56873D1020A02FE3A813E7E09919FE65750E097F214FDD2A273086C1020006CE0E00704D2125018E87279C05FCDAF69FE364B05552D7F353FBF94A7AAC2F73604F2EC250120CFBAD16A63023E08C45E1E887535BF7E1B1FD3FC';
wwv_flow_imp.g_varchar2_table(49) := 'C65E9474377B010240F625A40396041404AACB033747F825446DFD34E8EFFEC217F9B4BEB680EC578C40AE1D2100E45A39DA6D5E406120E6A70CD601659ABF8E12DB2090870001208F3AD14A04E60A2808F8EB0462FC12A25927F2033FD3FCB37478CCB6';
wwv_flow_imp.g_varchar2_table(50) := '40BEBD2700E45B3B5A8EC006010581D8CB03FC529E0DC4FC804051020480A2CA4967105813501868BB3CE0DFED6B7D9F5FCAB3E6C99F08CC13C8F9710240CED5A3ED082C115010A82E0F2CD9DCE9C23E3FCDCF2FE559A6C5F308E42D4000C8BB7EB41E81';
wwv_flow_imp.g_varchar2_table(51) := '5A020A025A1E58B6319FD6B74C88E711A80AE4FD3D0120EFFAD17A0410400001045A0910005AB1B11302082080807581DCFB4F00C8BD82B41F010410400081160204801668EC8200020820605D20FFFE1300F2AF213D400001041040A0B10001A031193B';
wwv_flow_imp.g_varchar2_table(52) := '2080000208581728A1FF048012AA481F104000010410682840006808C6E60820800002D605CAE83F01A08C3AD20B0410400001041A0910001A71B1310208208080758152FA4F0028A592F4030104104000810602048006586C8A00020820605DA09CFE13';
wwv_flow_imp.g_varchar2_table(53) := '00CAA9253D410001041040A0B60001A036151B2280000208581728A9FF048092AA495F104000010410A8294000A809C5660820800002D605CAEA3F01A0AC7AD21B0410400001046A0910006A31B11102082080807581D2FA4F0028ADA2F4070104104000';
wwv_flow_imp.g_varchar2_table(54) := '811A0204801A486C8200020820605DA0BCFE1300CAAB293D42000104104060A900016029111B2080000208581728B1FF048012AB4A9F104000010410582240005802C4D30820800002D605CAEC3F01A0CCBAD22B041040000104160A100016F2F0240208';
wwv_flow_imp.g_varchar2_table(55) := '208080758152FB4F0028B5B2F40B0104104000810502048005383C8500020820605DA0DCFE1300CAAD2D3D43000104104060AE0001602E0D4F2080000208581728B9FF048092AB4BDF104000010410982340009803C3C30820800002D605CAEE3F01A0EC';
wwv_flow_imp.g_varchar2_table(56) := 'FAD23B041040000104660A100066B2F02002082080807581D2FB4F0028BDC2F40F0104104000811902048019283C8400020820605DA0FCFE1300CAAF313D440001041040609300016013090F20800002085817B0D07F0280852AD347041040000104A604';
wwv_flow_imp.g_varchar2_table(57) := '08005320FC8800020820605DC046FF090036EA4C2F114000010410D8204000D8C0C10F0820800002D605ACF49F0060A5D2F4130104104000818A0001A082C1B70820800002D605ECF49F0060A7D6F4140104104000817302048073147C8300020820605D';
wwv_flow_imp.g_varchar2_table(58) := 'C052FF090096AA4D5F11400001041058172000AC43F01F0410400001EB02B6FA4F00B0556F7A8B0002082080C04480003061E00F8B02877F305ADAED1FEC7B70E9366C90A6C0A9A3879636ACCE6B60E941D8A018016B1D210058ABB8F1FE8E56CF38FDA3';
wwv_flow_imp.g_varchar2_table(59) := 'BFF7FBC7DD911A0160EF97FFC83DFD87BFE45EFEE7AF1897CBA7FBC7BEF52F6EDFDFFD89DB7BFF5F2D6DB45E03FB8F9C98BC26F4DA58BA031B2050900001A0A062D295F902FAC75D03FFFE23276B0DFCD5231D7FF988DBFFF77F4D10A8A224F6FDDB275F';
wwv_flow_imp.g_varchar2_table(60) := '771AF8FFFDCF7FD71D78FC6177F28DD76AB770B47A76F29A38F0D22977E8B537DDF1D16AED7DD9B024017B7D2100D8ABB9A91EBF72F22DA777786D06FE69A8E92070E6F563D39BF073CF027EE07FF26FFE7832F0879C5E41E0D5936F3B0501BD66F4DA09';
wwv_flow_imp.g_varchar2_table(61) := '391EFB2290BA000120F50AD1BEC602A3CA34FF0BAF9D76A3F13BBCC60759B0830F02FBFEECB7DC8B5FFD9223082CC0EAE8A99803FFAC26EA35A3D78E8280668E666DC363650958EC0D01C062D50BEDF3687DE08FF16EBF0E9182C0F71EFD47E783C0E943';
wwv_flow_imp.g_varchar2_table(62) := 'CFD4D98D6D0204BA1EF8A79B361A87477F9D00CB03D33AFC9CBB000120F70AD2FEF13BFC3393B5DBBE06FE69721F049EF8D3DF74FFF917FFD71104A685C27FD6C0FFC237EE7731A6FADBB44641C02F0F1004DA08A6BE8FCDF611006CD6BD885E6B6A5653';
wwv_flow_imp.g_varchar2_table(63) := 'B41AF8F58F7368A76EB8E55677DD4DEF75175EBCADF5A18E3CB7D72908E8CE016E216CCD786E47DDCAA72BFA35F0FFF7FEA7CF3DDEE61BD5575F21F5D579F55AF3D709E835A8C7F84220470102408E5533DCE6D1FA34BFBF8D6F349EA20DE1D87AE105EE';
wwv_flow_imp.g_varchar2_table(64) := '965D77BBBB3EFB7977DD0776BB1BEEB8CBDD71D73D2E74A0D0AC00B710B6AF8CAEE8D7C0AF5BF99A5CD13FEB8CAAE5873E7DDFA4BEAAF1CE3DF7B99B6EBFD35DB2EDD2599BD77E4CAF3DBF3CA020301ABF366BEFCC864909586D0C01C06AE533EBB7FE71';
wwv_flow_imp.g_varchar2_table(65) := 'D53FB27AB7AF7F74439B7FD9BBB7BBF7FFC887DDAE9FFC5977CDF5B76C38DCD62BAE990C16777E6C4F9420C02D841B78E7FEA0697E0DFC6D6EE59B3EA8829D06F9DD3FFED3935ABEE39DE707FB8BB65CE076DCFA0177FB273FEB6EFBF0BDEEAAEDD74EEF';
wwv_flow_imp.g_varchar2_table(66) := 'DEE8E7D13884EA35A9590196071AD1B1F1C0020480810BC0E9170BE8562C3FCDAF7F64176FBDFC59BD1BDCF5B14FBB957BF6B82BDF73F3C21D3468F8778C9A250879C7A819816A10E0CE81F3F47EE0D734BFEEE13FFF4CF3EF34F0AB560A761AE42FD87A';
wwv_flow_imp.g_varchar2_table(67) := 'C9DC8328085C7ECD0EF7BEBB3FE5F49AD871DD752E64794041A0BA3CA0D7EEDC93F3444202769B4200B05BFB647B3E1A4FA5EADDBEA6F9752BD668FC0E2BA4B11A1434F0FB77837A87DFE4781A28344BA0778C9A35B8E2F27735D97DC3B63E08F83B072C';
wwv_flow_imp.g_varchar2_table(68) := '07819803BFC2991FF855AB0DE8357ED06BE2A61FFBA48B31EBA3D3E935ABD7AEC2AB5ECB7A8C2F0452132000A45611C3ED19AD0FFC31A7F9FDA0A077F28BDE0DD6615710D0ACC10F7FFC33C153C70A02566F218C39F06B2947D3F877DC7BDFA6A59C3A35';
wwv_flow_imp.g_varchar2_table(69) := '9DDEA63AEB131AF674ECD138BC6AE64A4180E50189A4F765B9450400CBD54FA4EFA3F1C0AF7F1C630DFC97FFD04D93015AD3FC6DDE0DD661999E3AAEB3CFAC6D7C10D09D03A5DF42A8813FD6AD7CAAF1073FBA67B294A35ACCB20D79AC1AF6741E2D0F84';
wwv_flow_imp.g_varchar2_table(70) := '1C6F340E027E7940AF753E6E3844937D630910006249729CC6029A1AD53B230DFCFAC7B1F101A676D034BFAEF6BEED473FE2BA1814A64E37F9D14F1D6B0D995B0827249BFE887D2B9FAC55E36D576DDF74AE2E1ED079B43CA0F3EA3516729D80DAA7D7BA';
wwv_flow_imp.g_varchar2_table(71) := '2E18D46B5F7F07F4185F4309D83E2F01C076FD7BEFFD68FC6E5FFFE8697D5F53A3A3F13BA39046687D5FD3FCFE363E4DE1861CAFEDBE0A02DC42B8514F57F477712B9FAC379EA99F9F745E2D25711B613FDE9CA57B010240F7C69C612C305A1FF8F56E5F';
wwv_flow_imp.g_varchar2_table(72) := '03FFF8A1A0FF6BED576BB4BADABBAB69FE360DF483448C8BC9B43C50BD73A04D7BFADE47D3FC1AF8BBBE95AFEF7E55CFA7E5811DDC465825C9F67BEB0D2700587F0574DC7FDD0AA5A9CE5803BFA6603515ABF57D5D90D771F35B1F5E3311FEDDA2662874';
wwv_flow_imp.g_varchar2_table(73) := '957ADB834D078114EF1CF0037FDFB7F2B5358DB19F8280969AB88D308626C71842800030847AE1E7F4EFF635CDAF5BA14611A6F935F0B7BD8D6F486E0D129AA128F516C29803BF4292C2526AB33A755E3F9AF9D1750231667E743EFD9DD1DF1D85672D99';
wwv_flow_imp.g_varchar2_table(74) := 'E931BE620B703C0200AF816802A30EA6F9FD80A077D3A1B7F145EB688B03290868C6A2945B08630EFC5ACE89792B5F8BF244DBA53AF3A325AA90CF8C50A346E3F0AC25330501EE1E90085F3105080031358D1E6B341EF8F58F53AC697EDDE2A50141D3FC';
wwv_flow_imp.g_varchar2_table(75) := '7AF75C1AEBF4B471DBFE6969409F25A05B085FFCEA977AF92D841AF873B995AFAD6B8CFDAA818FDB086388C63F0647748E00C0ABA0B580A626F5CE4403BF6E6D6A7DA0F51D35CDDFF76D7CEBA71EE43F7EDA58D73484DE42E8834057BF8530F75BF90629';
wwv_flow_imp.g_varchar2_table(76) := 'F0FA49B98D701D82FF2427400048AE24693748EFF635F06B7D5F5393A3F11465488B53B98D2FA40FA1FB2A08A47A0BA1AEE82FE956BED05A85ECAF3A6B298BDB08431463EDCB7124400090025F4B0546E3697E0DFC7AB7AF817FE90E4B36D0BAAFD64873';
wwv_flow_imp.g_varchar2_table(77) := 'BCE06B49D75A3FED07881817926979A0ED2D849AE6D7C05FF2AD7CAD8B1461472D0F701B6104480E112C400008262CFB00566FE31BB2AAD50BC97411A4AE8E6FDB9EA6414003BFA55BF9DABAC6D84F4160FA7A90904F191C8D67E3B414E73F65507F7763';
wwv_flow_imp.g_varchar2_table(78) := 'B4B3C463D0A7350102C09A037F560446EBEFF635CDAF5B9146E37F582A4F37FE56D3FC5ADFCFF136BEC69D8DB88306085D04E96F218C11049635EFC0E30F2FDB64E1F36AA3420B333B0B99363DA9D91F6E23DCC4C2031D0B10003A06CEE9F0A3F5813FE6';
wwv_flow_imp.g_varchar2_table(79) := '34BF1F0CB4F699F36D7C43D6514140B710EA37DEE9EE88D05BCBBAE88B9674D436B551A1A58B7358386675F6474B64A1B51E8DC3BB96EC74B1AEEED4E19710E955C4971720007809C3FF1D8D077EFDE3106BE02FFD36BE215F2A9A32D66709E8CE81ABB6';
wwv_flow_imp.g_varchar2_table(80) := '5F3B645326E756AD759B9B6ED954DB260FF247B0800F7DAAB57C63FF36C2E0067280220408004594B17D2734F86B9A5F6B87ED8FB2B6A7A6F92DDDC6B7D6EB61FED49471AC8FA06DD303D55A21A4CFDFCAD7A69D25ECD3C56D849A11D0DFFD127C9AF681';
wwv_flow_imp.g_varchar2_table(81) := 'EDCF0B1000CE5B98FC4E57F61F3FBDDABAEF5ADFD734FFD0BF8DAF750732DF5141406BC777DC758FD3A01C7211591D0A9D43214F4B3A3A779D7DD8268E80BCE51EE336C2D17869E095936FC7691847C9568000906DE9E234FC44CBC15F6BBE5AA3E462AF';
wwv_flow_imp.g_varchar2_table(82) := '3875083D8A1F1C62DC4238DD1685BC9B6EBFD3F98B38B54E3DBD0D3FF727A0E58118B711BE7AF2ADFE1A9DCC99684855800050D530F8BDDE09B4EDF696ADDBDCD9D1A9B6BBB35F0702178C6BB2E5E26D6EF5F4C9E8477FFBCC99E8C7E480ED051404CE8C';
wwv_flow_imp.g_varchar2_table(83) := '4EBAB756DBD525E4EF7EFB56B3674A02048094AA91515B8EBF72CC3DF7D843EE3B4F3DEA5E7AF17982C0C0B57B029D3CBB0000100049444154EBCD13EEF0B34FBA6FFEC3DFBA83DFF956D4D668A0D0319F7DF8EBEE856F3FE174AEA827E0608D04DE3E73';
wwv_flow_imp.g_varchar2_table(84) := '76F277EE3FFEE97EF79FDF7CCCE9EF62A30318DE98AE6F1420006CF4E0A78602FAC7E7F9BD8FBB7D0FDE3F191C4E9D3CD1F0086C1E22307AFDA5C9C0FFF4035F732F3C7F20E4504BF75510387CF0BB4E41E0E0538F386ABD942CEA060A5E3EE4E9EFDC6A';
wwv_flow_imp.g_varchar2_table(85) := '07B33C511BCCC192172000245FA23C1AE807876F3FF435A7C1E1E4ABC7F26878A6ADD4C02FE7BDFFFA40E703FF34916A7DF4F061A75AFFD7E30F3B6A3D2D14F7E7D3C70E4DFE4EF511F2E2B63CB5A3D19E690102C0B4083F070B687078E61B0FBAFD8F3E';
wwv_flow_imp.g_varchar2_table(86) := '3899AAE43A8160D273073871E4D0C45503BF9CCF3D31D037AF1E3BE27CADDF78E9E840AD28F3B45A5A53C8DAF7F8A32E855A97A96CBB570400DBF5EFB4F7D5E581A3079E65ED3840DB0F06CF3EF968926BBEAAF5738F3D3409276A2BA1AF5DB1B5BEAF69';
wwv_flow_imp.g_varchar2_table(87) := '7EADEF6B9A9F6596768EB3F6E2B1CD020480CD263C5211D8F573BFE1AEBD6D57E591E6DF6ACAD85F447690B5E3DA801A0C3498C6180CB65D7EA5BBF5EE4F2D3DF7CA677E7EE9368B365010D0C0F5CCBF3DC0ECCF22A8A9E7B4A4A3815F1771EA5A8ED5C0';
wwv_flow_imp.g_varchar2_table(88) := 'F57DD57BE5DECF4D9D851F11D8284000D8E8C14F5302EFDAB9C7BDFF177FCF7DF4B7FFD2DD7CCF4F4C3DDBEC4705014D656A5A53CB039A32E69DE266430DFC47C733261A0C3498860C061A0834F0EFFC995F73DBEFFCF8E6934D3D72F5273E3FA9B582C0';
wwv_flow_imp.g_varchar2_table(89) := '6557B7FFA861BD7355DB7571A8FAA20BD8A64EC58F6381D7BEFFBDC9AC89967434F08F1F0AFABF6ABDFB0B5F74AAF715EFDD1974ACB276A637B3040800B354786C93C0962BB6BBEB3FF7EBE706874D1B347C40EF149F1B4F19731BE179380D92FE5DA066';
wwv_flow_imp.g_varchar2_table(90) := '4CCE3FD3FCBBA6037FF50CAAB582C0CE5FF97D173A03A4D0A7BEE8CE01F54D7DAC9ECBE2F70A787E6627C66D7CBED61FF9E5DF9984BC8BB65D6191953EB7102000B440B3BC8B1F1C3423103A38C85141C0BF53D43DE67AE7A8C72D7DF9E9DF1857796B30';
wwv_flow_imp.g_varchar2_table(91) := 'D0D4AFDE01D679C7BFC859B5F63340A1B55610D03B5C0501AB7556F851088A31B3A3BAA9D67AC71FA3D63A5EC95FF46DB6000160B60B8F2E11A80E0E77FDEA1F44591ED03DE65A1E38F8D423266E2DD3C0AFBEC698FED560B0EBA77EA1B3A95F1F0414FC';
wwv_flow_imp.g_varchar2_table(92) := '6E0E580A5210B056E7D8B7F1A9D6B142DE92BFE63C5DB80001A0F002F7D1BD8B6FFC60D4E5015D27E06F2DD3546969D709C4BC954FEF0077AFAFF95EB2E3C6CECBADE0E797826E0E08026A68B5CEBA1E448F95F4A5D7AE026DACDBF8AAB5667DBFC92B85';
wwv_flow_imp.g_varchar2_table(93) := '6DE7091000E6C9F07863010D0E5A3BD6BBC4D08BC874F2EAF2C0D103F9DF46E8078418B7F2F9C140D3FC43ACF9AAD63E08A8D6AA57DB2FD559D783E8C25019E51CF8B4BEAF69FE18776EC853EFF6556BD6F7A5C1576C0102406C518EE734382808C4B888';
wwv_flow_imp.g_varchar2_table(94) := '4C9C9A36F617921D1C2F0FE4749D8006040D6A3106841407035F6B1FFA54AFB65F0A02BA1E24C75B08B59CA3815FEBFBBAD66135D26D7CACEFB77D359DDF8FEFE60B1000E6DBF04CA0800687586BC76A8A8280A68D35ADAA778B9A364EF5DDA206FEA3E3';
wwv_flow_imp.g_varchar2_table(95) := '590B0D081AD44206043FF0A73C18A8D60A7D3E08C4BA8550E14917CFA9FE297E711B5F8A55A14D7505080075A5D82E48400344AC29633544EF169F4BF036420D56FE9DA0662DD4D6B65F390CFCD37D539D1504FCEC4F481050E05378D29D033295EDF4F9';
wwv_flow_imp.g_varchar2_table(96) := '86F859E14EC144B33ADCC63744059A9C936D1709100016E9F05C74013F40E89D62E8AD656A9C828006097DE0CC90B797F929E0D46EE593D1105FAAB3667F3EF47FFE7F94CF12D0B4BA82C09035560051108931ABA39AE418F0D46EBECA1120009453CBAC';
wwv_flow_imp.g_varchar2_table(97) := '7AE207087DCA60CEB7116AE03FF8D4232E875BF9867A812808A8CE0A7D211F2BAD1981216E21E436BEA15E39E1E7E5088B0508008B7D78B607811C6F23CCF956BE1E4A3AF3140A7D3E08E4700BA1A6F975BD09B7F1CD2C270F1620400028A088A5744103';
wwv_flow_imp.g_varchar2_table(98) := '84D68FF54E51B79685AC1FCBA4BA3C70F4409CDB08FDA050C2AD7C321AE24B758E753D886AAC6B417451A86A137A51A8D6F735CDAFF57D2D2D85DE71E2A7F9B98D6F88571AE75C2640005826C4F3BD0B68805010F01792854C1BABF19A3AD605795A433E';
wwv_flow_imp.g_varchar2_table(99) := '389EAE6FFA8FBA06050D2E31060506045564EDCBD7D907BEB547DBFDA920A001BBED2D845ACAD1C0AFF57D5D6FB0CA6D7CED0AC15E59091000B22A97ADC66A80A8AE1F874E1B2B0834B98D5003FFD1F1CC8106050D2E2183821FF853BE956FA85797EAAC';
wwv_flow_imp.g_varchar2_table(100) := 'C0E78340C8CC8FC29D6AA58B4215DA74E1DEA27E711BDF229DBC9FA3F5CB050800CB8DD82201010D12B1A68DD51DBD637C6ECE6D841A34FCBB41CD1C68FBB65F0CFCF5E5546305013FF313120414F6140434EBA35AAAA6BE250A760A079AD1E1363EAFC2';
wwv_flow_imp.g_varchar2_table(101) := '7F2D0A10002C563DE33EFB4142EF16BBB88D508305B7F20DFB02518D35F3D3C52D84AA6F8C191D0911EEA490EA17EDAA234000A8A3C436C909F841425795C7BC8D50EBBF219DD5A0D0E56FE50B695B8EFB2A08A8C60A7C21D782684640B71086D65786AA';
wwv_flow_imp.g_varchar2_table(102) := '31BF8D4F127CE52E4000C8BD82B4DFC5BE8DB00DA97E61CBEE1E7F2B5F9B36E6BC8F029F0F023707FE16C2B60ED51AF3DBF8DA2AF6B31F67A9274000A8E7C45619086890D01AB2DE2DC6B88DB04E97FDA030D46FE5ABD3C692B6518D635E0BB2CC46EFF6';
wwv_flow_imp.g_varchar2_table(103) := '55636EE35B26C5F3390A100072AC1A6D5E28A0414241C05F4C1632753CEB440C0AB354FA7DCCD7D887BDD867578D99E68FADDAD7F1384F5D0102405D29B6CB4E408344750D3974EA588382DE0D722B5F3A2F05D55861CF0781903B07D42BD577F7FA520E';
wwv_flow_imp.g_varchar2_table(104) := 'D3FC12E1AB64010240C9D5A56FE7043450B49D3A66E03FC798EC37AAAF82809FF56912047C7D99E64FB6BC8D1AC6C6F5050800F5ADD8B200013F50E81DA36E235CD625A6819709A5F5BCEAAB591F1F0496B54EEFF899D159A6C4F3A50A10004AAD2CFD5A';
wwv_flow_imp.g_varchar2_table(105) := '28E0078A851B8D9F641A788C90E1FFEBD657176F66D83D9A3C5780279A0810009A68B12D020820800002850810000A2924DD40000104AC0BD0FF66020480665E6C8D0002082080401102048022CA482710400001EB02F4BFA90001A0A918DB2380000208';
wwv_flow_imp.g_varchar2_table(106) := '2050800001A08022D205041040C0BA00FD6F2E4000686EC61E082080000208642F4000C8BE847400010410B02E40FFDB081000DAA8B10F020820800002990B1000322F20CD47000104AC0BD0FF76020480766EEC85000208208040D6020480ACCB47E311';
wwv_flow_imp.g_varchar2_table(107) := '400001EB02F4BFAD0001A0AD1CFB21800002082090B1000120E3E2D174041040C0BA00FD6F2F4000686FC79E082080000208642B4000C8B674341C010410B02E40FF43040800217AEC8B000208208040A60204804C0B47B311400001EB02F43F4C800010';
wwv_flow_imp.g_varchar2_table(108) := 'E6C7DE08208000020864294000C8B26C341A010410B02E40FF43050800A182EC8F000208208040860204800C8B469311400001EB02F43F5C8000106EC811104000010410C84E8000905DC96830020820605D80FEC7102000C450E4180820800002086426';
wwv_flow_imp.g_varchar2_table(109) := '4000C8AC603417010410B02E40FFE3081000E2387214041040000104B212200064552E1A8B0002085817A0FFB1040800B124390E02082080000219091000322A164D45000104AC0BD0FF7802048078961C090104104000816C040800D9948A8622800002';
wwv_flow_imp.g_varchar2_table(110) := 'D605E87F4C0102404C4D8E85000208208040260204804C0A453311400001EB02F43FAE000120AE2747430001041040200B0102401665A291082080807501FA1F5B8000105B94E321800002082090810001208322D144041040C0BA00FD8F2F4000886FCA';
wwv_flow_imp.g_varchar2_table(111) := '11114000010410485E8000907C896820020820605D80FE77214000E842956322800002082090B8000120F102D13C041040C0BA00FDEF468000D08D2B474500010410402069010240D2E5A171082080807501FADF950001A02B598E8B000208208040C202';
wwv_flow_imp.g_varchar2_table(112) := '0480848B9342D35EFEE7AFA4D00CDA1041E0D4D1434B8FF2837D0F2EDD860DF21038F6AD7FC9A3A14B5AC9D3DD091000BAB32DE2C8FBFFFEAFDDD37FF84B4E41E0CCEBC78AE893B54E6820D8F7777FE2F6DEFF574BBBBEF7CB7F74AEDE4B376683E404DE';
wwv_flow_imp.g_varchar2_table(113) := '3EF9BA53BDFFFDCF7FD71D78FCE1E4DA4783D2122000A4558F245B73FCE5234E4160DF9FFD967BF1AB5F72A70F3D93643B69D47981B3A7DED830109C7CE3B5F34F2EF9CED7DB07BF259BF37402027EE07FF26FFEB8B0813F01DC829B400028B8B875BA76';
wwv_flow_imp.g_varchar2_table(114) := 'D9C517D6D96CB28D0686EF3DFA8FEE893FFDCDC9BB44A68B272C49FDE10782C7BEFCA5E08140F556F0F3418019A0A44A3D69CCEBDFDDE734BBC3C03FE1E08F860204808660A56D7EE9D6FA01A0DA770D0E4C17574586FDDE0FFC5D0C04AAB58280668058';
wwv_flow_imp.g_varchar2_table(115) := '0A1AB6CE3ABBAFB5A6F9F73FF455D7647647FBFBAFABB65DE4BF4DF6BF34AC5B010240B7BEC91FFDDDE37F04B65E7841EB76FAC141EF12591E68CDD87A473F187431F04F37CAD75A41805A4FEB74FF73CC5AEBEFFC75EFDADA7DA33943D2020480A4CBD3';
wwv_flow_imp.g_varchar2_table(116) := '7DE3B65EB8C5DD7ACD25EEDAC07F0C3438F8E5010687EEEBA6C1E0856FDCEFFA18F8A77B43ADA745BAFD3976ADB5ECB772EDA54E7FF7BB6D79E8D1D9BF6B812D5D9F80E3A72FA07F08F46E60E5DA6DC14140BDF54140B3029A32D6637CC511D0AD7C7ECD';
wwv_flow_imp.g_varchar2_table(117) := 'F7BFF73F1D745085BED069E06AADB92624A81C9B76D6D5FCB16AAD83ABDEFA3B7EEBD597E847BE107004005E04E704A68380A609CF3DD9E21BBD53D4DAB10F025C44D602717D173F18E856BEB66BBEEB879A843C0D040A7D375EF94EA7EF3538F8E7DBFC';
wwv_flow_imp.g_varchar2_table(118) := '57B5E69A9036721BF7D1BB7DD55AEBFBBA8D2FB4D6FA3BACDAEE7ACF654EF5D6DF7197C9FF6866F7020480EE8DB33B83FE91D03F165A1AB8E1CA8B9DA60C433AA1C1414180B5E3668A310783450381AF77AC20A05AFBD0D7ACC776B7F6B58EB5A4A37AEB';
wwv_flow_imp.g_varchar2_table(119) := 'EFEECA78AA5F7F97EDCAD2F345020480453AC69FD3C0F0EE6DEF709A325C192F0F844E172B083065BCFC45157330D040A077802B350602D55B83C5CAB8D6DA47FB2E6FEDEC2D54EB6A1060F667B653ECDBF85437D56F655C6FFDDD9D7DD61C1EA58D7D08';
wwv_flow_imp.g_varchar2_table(120) := '1000FA502EE01C1A1C624D178B43030453C69238FF35D4C07FBE056BDFA9D60A0231668054670501CDFEE87A10828073BECE9AE60FB98D6FAD5ACE29A869E0679ADF8BF0DFBA020480BA526C3711F083C3CAF85DA2A618632D0F68CAD8EADD037E408831';
wwv_flow_imp.g_varchar2_table(121) := 'FDABC140755919BF03D4203E295ACB3F546BBD8BD40C908E1952EB6A10A0CE713EAD4FB5D6C01FA3D62D5F229DEDC681FB112000F4E35CDC59AA8383DE29C65C1EB0324068E08F752B9F0603D541838106EDD82F381D534160651CFC426AAD20E09781A8';
wwv_flow_imp.g_varchar2_table(122) := '73BB2AA9D60A642B11425EBB16B05729020480522A39603F2EDB7AA18BB93CE00708CD0A68DA78C0AE7572EAD8B7F2AD8C07E595F160A03A74D2E0CA4115FC7CAD4382800E59AD7389B710EA6AFE2E6EE353AD15C86458E617BDEA4B8000D097B481F368';
wwv_flow_imp.g_varchar2_table(123) := '70D0B4F3CA7840D2D4E4D6804F181497DE2D6AFDD80781DCD78FFD8010FB563EB9CBABCF2F9DD30701D53AE4DCAA7329D78368564775D6FA3EB7F185BC2AD8B70F0102401FCAC6CEA1C141414053D29AAA0C593B169D060805015D4896DBB471CC014181';
wwv_flow_imp.g_varchar2_table(124) := '4A836D4A177BF95AFBD0A77AB5FDF275F681AFED7186D8CFD739C6751C6ABF6AADBF3B2BE3991DFD5DD26356BEE8677F020480FEAC63C9644F00000BB849444154CD9D498383A62A63AC1D0B4F03442ED3C63107040D061AF8531E0C546B0D542B11667F';
wwv_flow_imp.g_varchar2_table(125) := '546705BE1C8200B7F1E96F265FB90A100072AD5C66EDD600116BCA585DD72091E2B4B1B5815FB5A87EA9CE0A0231667F54E36A10486509C8D758D3FCDCC657AD7E8CEF39469F0204803EB53997F30384DE296A8A33D6F280DE2D0EB93CE007851853C07A';
wwv_flow_imp.g_varchar2_table(126) := 'C72F9B958CA77F55673FFBA3BE84D4D90781A1978062D658FF14A8CEA9CFECA89D7C952B400028B7B649F7AC3A40E8DD62E815E51A24FCF2409F414083422EB7F20DF582F0416065BC3C1052E7126AAC1A68E057285AC938E0A91F5D7C71CC7E050800FD';
wwv_flow_imp.g_varchar2_table(127) := '7A73B61902BA7D2DE6F2800F029A15E8EA36C29C6FE59B51825E1E52E8F3750E09026A6CB5C65DDD42A8ABF9B98D4FDA7C952A400028B5B219F64B0384D68F57C6EF143535AA774A21DDD03BC6D86BC87E5028E156BE10DB907D55671F0454E79063A9C6';
wwv_flow_imp.g_varchar2_table(128) := '31AF05D18C8E6AACF57D6EE30BA94C9B7DD9A76F010240DFE29C6FA980060805012D0D68AA3464FD5827D320A120D0760D39E6A0A050A3412FA55BF96434C497AFB30F7C216DF0356E3BEBE36B1CE31A0EF54375D66B7785697E71F095A8000120D1C2D0';
wwv_flow_imp.g_varchar2_table(129) := '2CFD92932D2ED6FAB13C3548349D3AD6BBC118838206040DFC0C08AAC4C6AFE92020AB8D5BD4FF493556D8AB1B04B88DAFBE6DD75B72FCFE050800FD9B73C616021A24624D1BEBF41A283475ACEF177D691A78D1F3CB9ED360C6C0BF4C69ED79D538D6CC';
wwv_flow_imp.g_varchar2_table(130) := '8FEAAB20B076E4F97F721BDF7C1B9E295F8000507E8D8BEAA11F2456AEDDE634C51ABA3CD0158E067EB56F8529E0C6C4AAB19FF99161CA3526DC352EEF9C1D7878080102C010EA9C3358A03A48E85A81D0ABCA831BB47E000DFC6A8F067E0D62EB0FF39F';
wwv_flow_imp.g_varchar2_table(131) := '9602328CF549922D9BB06937D558C14435D68CC5A60D7800814C04080099148A66CE17887D1BE1FC33CD7F66ED9DE036A74141ED99BF25CFB41150E0F34B404385BD6A8D154CDAF4837D660BF0E83002048061DC396B07021A24F48E6C65BC3CA07FACF5';
wwv_flow_imp.g_varchar2_table(132) := '4EAD83D36C38A4CEA3F3E9BC3AFF8627F921BA808C7D10907DF4134C1D50AF219D87BB36A660F8B1080102401165A41355010D121A9035157FC39517BBD86BC80C0A55ED61BEF73556F8D2001DBB15AAB15E3B2B5CC3119B76C6F17868280102C050F29C';
wwv_flow_imp.g_varchar2_table(133) := 'B773010D129AAA8DB586AC4141830D8342E7A5AB7D02D558616F25D2ACCF5A7DB74D9672F4DAA9DD10364420430102408645A3C9CD053450B49D3A66E06FEEDDF71EAAAF82409B591F5F5FA6F9FBAEDADAF9F873380102C070F69C7900013F50E81DE30D';
wwv_flow_imp.g_varchar2_table(134) := '4B96073430689B15A68107A854BB53AABE7AE7AE591FD56ED1F28FEABBF68EFF52A7F0D0EE8CEC8540BE0204807C6B47CB0304AA0385DE35EACA720D08FAD2F77A4C03BF069380D3B0EB8002AA9D82C0CA787940355553545F8502858315829D4806FEE2';
wwv_flow_imp.g_varchar2_table(135) := 'F4430A100086D4E7DC4908E8B6BDB5E5814B276BBFFA5E8F25D1381A112CA0B0A79A6A8A5F83BE4281C241F081390002990B1000322F20CD470001047215A0DDC30A100086F5E7EC0820800002080C22400018849D9322800002D605E8FFD0020480A12B';
wwv_flow_imp.g_varchar2_table(136) := 'C0F91140000104101840800030003AA744000104AC0BD0FFE1050800C3D78016208000020820D0BB0001A077724E880002085817A0FF2908100052A8026D400001041040A067010240CFE09C0E010410B02E40FFD3102000A451075A81000208208040AF';
wwv_flow_imp.g_varchar2_table(137) := '0204805EB93919020820605D80FEA722400048A512B4030104104000811E0508003D62732A041040C0BA00FD4F478000904E2D6809020820800002BD0910007AA3E644082080807501FA9F92000120A56AD0160410400001047A122000F404CD69104000';
wwv_flow_imp.g_varchar2_table(138) := '01EB02F43F2D0102405AF5A035082080000208F4224000E885999320800002D605E87F6A020480D42A427B104000010410E8418000D00332A740000104AC0BD0FFF4040800E9D58416218000020820D0B90001A073624E800002085817A0FF290A100052';
wwv_flow_imp.g_varchar2_table(139) := 'AC0A6D420001041040A063010240C7C01C1E010410B02E40FFD3142000A459175A85000208208040A70204804E793938020820605D80FEA72A400048B532B40B0104104000810E0508001DE27268041040C0BA00FD4F578000906E6D6819020820800002';
wwv_flow_imp.g_varchar2_table(140) := '9D0910003AA3E5C0082080807501FA9FB2000120E5EAD0360410400001043A1220007404CB6111400001EB02F43F6D010240DAF5A17508208000020874224000E884958322800002D605E87FEA020480D42B44FB104000010410E8408000D0012A874400';
wwv_flow_imp.g_varchar2_table(141) := '0104AC0BD0FFF4050800E9D78816228000020820105D8000109D940322800002D605E87F0E0204801CAA441B114000010410882C4000880CCAE110400001EB02F43F0F0102401E75A2950820800002084415200044E5E460082080807501FA9F8B000120';
wwv_flow_imp.g_varchar2_table(142) := '974AD14E041040000104220A100022627228041040C0BA00FDCF478000904FAD6829020820800002D1040800D1283910020820605D80FEE7244000C8A95AB4150104104000814802048048901C06010410B02E40FFF3122000E4552F5A8B000208208040';
wwv_flow_imp.g_varchar2_table(143) := '1401024014460E820002085817A0FFB909100072AB18ED450001041040208200012002228740000104AC0BD0FFFC040800F9D58C16238000020820102C40000826E400082080807501FA9FA3000120C7AAD166041040000104020508008180EC8E000208';
wwv_flow_imp.g_varchar2_table(144) := '5817A0FF790A1000F2AC1BAD4600010410402048800010C4C7CE082080807501FA9FAB000120D7CAD16E041040000104020408000178EC8A0002085817A0FFF90A1000F2AD1D2D470001041040A0B50001A0351D3B22800002D605E87FCE0204809CAB47';
wwv_flow_imp.g_varchar2_table(145) := 'DB114000010410682940006809C76E082080807501FA9FB7000120EFFAD17A0410400001045A0910005AB1B113020820605D80FEE72E4000C8BD82B41F010410400081160204801668EC820002085817A0FFF90B1000F2AF213D400001041040A0B10001';
wwv_flow_imp.g_varchar2_table(146) := 'A031193B20800002D605E87F0902048012AA481F104000010410682840006808C6E6082080807501FA5F860001A08C3AD20B0410400001041A0910001A71B131020820605D80FE9722400028A592F4030104104000810602048006586C8A0002085817A0';
wwv_flow_imp.g_varchar2_table(147) := 'FFE5081000CAA9253D410001041040A0B60001A036151B22800002D605E87F4902048092AA495F104000010410A8294000A809C566082080807501FA5F960001A0AC7AD21B0410400001046A0910006A31B111020820605D80FE9726400028ADA2F40701';
wwv_flow_imp.g_varchar2_table(148) := '04104000811A0204801A486C820002085817A0FFE5091000CAAB293D42000104104060A900016029111B20800002D605E87F8902048012AB4A9F104000010410582240005802C4D3082080807501FA5FA60001A0CCBAD22B041040000104160A100016F2';
wwv_flow_imp.g_varchar2_table(149) := 'F024020820605D80FE972A400028B5B2F40B0104104000810502048005383C850002085817A0FFE50A1000CAAD2D3D43000104104060AE0001602E0D4F20800002D605E87FC902048092AB4BDF104000010410982340009803C3C3082080807501FA5FB6';
wwv_flow_imp.g_varchar2_table(150) := '0001A0ECFAD23B041040000104660A100066B2F020020820605D80FE972E400028BDC2F40F0104104000811902048019283C840002085817A0FFE50B1000CAAF313D440001041040609300016013090F20800002D605E8BF05010280852AD34704104000';
wwv_flow_imp.g_varchar2_table(151) := '0104A60408005320FC880002085817A0FF3604080036EA4C2F114000010410D8204000D8C0C10F082080807501FA6F45800060A5D2F4130104104000818A0001A082C1B7082080807501FA6F47800060A7D6F4140104104000817302048073147C830002';
wwv_flow_imp.g_varchar2_table(152) := '085817A0FF9604080096AA4D5F11400001041058172000AC43F01F041040C0BA00FDB7254000B0556F7A8B0002082080C04480003061E00F041040C0BA00FDB7264000B05671FA8B0002082080C05880003046E0FF082080807501FA6F4F800060AFE6F4';
wwv_flow_imp.g_varchar2_table(153) := '180104104000014700E04580000208981700C0A20001C062D5E933020820808079010280F99700000820605D80FEDB142000D8AC3BBD4600010410302E400030FE02A0FB0820605D80FE5B15200058AD3CFD4600010410302D4000305D7E3A8F0002D605';
wwv_flow_imp.g_varchar2_table(154) := 'E8BF5D010280DDDAD3730410400001C3020400C3C5A7EB0820605D80FE5B16200058AE3E7D4700010410302B4000305B7A3A8E0002D605E8BF6D81FF010000FFFF660BD50F000000064944415403007C277787B92BDD9D0000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(1966545367140857025)
,p_file_name=>'icons/app-icon-512.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/plugin_settings
begin
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(1966536611739857009)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_DISPLAY_SELECTOR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'include_slider', 'Y')).to_clob
,p_version_scn=>227958623
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(1966536909475857009)
,p_plugin_type=>'DYNAMIC ACTION'
,p_plugin=>'NATIVE_OPEN_AI_ASSISTANT'
,p_version_scn=>227958623
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(1966537230142857009)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_DATE_PICKER_APEX'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'appearance_behavior', 'MONTH-PICKER:YEAR-PICKER:TODAY-BUTTON',
  'days_outside_month', 'VISIBLE',
  'show_on', 'FOCUS',
  'time_increment', '15')).to_clob
,p_version_scn=>227958623
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(1966537533799857009)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_GEOCODED_ADDRESS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'background', 'default',
  'display_as', 'LIST',
  'map_preview', 'POPUP:ITEM',
  'match_mode', 'RELAX_HOUSE_NUMBER',
  'show_coordinates', 'N')).to_clob
,p_version_scn=>227958623
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(1966537834961857010)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_MAP_REGION'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_vector_tile_layers', 'Y')).to_clob
,p_version_scn=>227958623
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(1966538084940857010)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_plugin=>'NATIVE_BOSS'
,p_version_scn=>227958623
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(1966538340411857010)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_plugin=>'NATIVE_ADFBC'
,p_version_scn=>227958623
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(1966538640383857010)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_IR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'actions_menu_structure', 'IG')).to_clob
,p_version_scn=>227958623
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(1966538966804857010)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SELECT_MANY'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_values_as', 'separated')).to_clob
,p_version_scn=>227958623
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(1966539237876857011)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_COLOR_PICKER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'mode', 'FULL')).to_clob
,p_version_scn=>227958623
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(1966539591423857011)
,p_plugin_type=>'PROCESS TYPE'
,p_plugin=>'NATIVE_GEOCODING'
,p_attribute_01=>'RELAX_HOUSE_NUMBER'
,p_version_scn=>227958623
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(1966539874342857011)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SINGLE_CHECKBOX'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'checked_value', 'Y',
  'unchecked_value', 'N')).to_clob
,p_version_scn=>227958623
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(1966540183718857011)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_STAR_RATING'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'default_icon', 'fa-star',
  'tooltip', '#VALUE#')).to_clob
,p_version_scn=>227958623
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(1966540526782857011)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_YES_NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_style', 'SWITCH_CB',
  'off_value', 'N',
  'on_value', 'Y')).to_clob
,p_version_scn=>227958623
);
end;
/
prompt --application/shared_components/security/authorizations/direitos_de_administração
begin
wwv_flow_imp_shared.create_security_scheme(
 p_id=>wwv_flow_imp.id(1966548326246857028)
,p_name=>unistr('Direitos de Administra\00E7\00E3o')
,p_scheme_type=>'NATIVE_IS_IN_GROUP'
,p_attribute_01=>'Administrador'
,p_attribute_02=>'A'
,p_error_message=>unistr('Privil\00E9gios insuficientes; o usu\00E1rio n\00E3o \00E9 um Administrador')
,p_version_scn=>227958643
,p_caching=>'BY_USER_BY_PAGE_VIEW'
);
end;
/
prompt --application/shared_components/security/authorizations/direitos_do_leitor
begin
wwv_flow_imp_shared.create_security_scheme(
 p_id=>wwv_flow_imp.id(1966548403394857028)
,p_name=>'Direitos do Leitor'
,p_scheme_type=>'NATIVE_FUNCTION_BODY'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if nvl(apex_app_setting.get_value(',
'   p_name => ''ACCESS_CONTROL_SCOPE''),''x'') = ''ALL_USERS'' then',
'    -- allow user not in the ACL to access the application',
'    return true;',
'else',
'    -- require user to have at least one role',
'    return apex_acl.has_user_any_roles (',
'        p_application_id => :APP_ID, ',
'        p_user_name      => :APP_USER);',
'end if;'))
,p_error_message=>unistr('Voc\00EA n\00E3o est\00E1 autorizado a exibir este aplicativo porque n\00E3o recebeu acesso ou sua conta foi bloqueada. Entre em contato com o administrador do aplicativo.')
,p_version_scn=>227958643
,p_caching=>'BY_USER_BY_SESSION'
);
end;
/
prompt --application/shared_components/security/authorizations/direitos_de_contribuição
begin
wwv_flow_imp_shared.create_security_scheme(
 p_id=>wwv_flow_imp.id(1966548529299857028)
,p_name=>unistr('Direitos de Contribui\00E7\00E3o')
,p_scheme_type=>'NATIVE_IS_IN_GROUP'
,p_attribute_01=>'Administrador,Colaborador'
,p_attribute_02=>'A'
,p_error_message=>unistr('Privil\00E9gios insuficientes; o usu\00E1rio n\00E3o \00E9 um Colaborador')
,p_version_scn=>227958643
,p_caching=>'BY_USER_BY_PAGE_VIEW'
);
end;
/
prompt --application/shared_components/security/app_access_control/administrador
begin
wwv_flow_imp_shared.create_acl_role(
 p_id=>wwv_flow_imp.id(1966547890455857027)
,p_static_id=>'ADMINISTRATOR'
,p_name=>'Administrador'
,p_description=>unistr('Atribui\00E7\00E3o designada a administradores de aplicativos.')
,p_version_scn=>227958640
);
end;
/
prompt --application/shared_components/security/app_access_control/colaborador
begin
wwv_flow_imp_shared.create_acl_role(
 p_id=>wwv_flow_imp.id(1966548078348857028)
,p_static_id=>'CONTRIBUTOR'
,p_name=>'Colaborador'
,p_description=>unistr('Atribui\00E7\00E3o designada a colaboradores de aplicativos.')
,p_version_scn=>227958640
);
end;
/
prompt --application/shared_components/security/app_access_control/leitor
begin
wwv_flow_imp_shared.create_acl_role(
 p_id=>wwv_flow_imp.id(1966548173065857028)
,p_static_id=>'READER'
,p_name=>'Leitor'
,p_description=>unistr('Atribui\00E7\00E3o designada a leitores de aplicativos.')
,p_version_scn=>227958640
);
end;
/
prompt --application/shared_components/navigation/navigation_bar
begin
null;
end;
/
prompt --application/shared_components/logic/application_settings
begin
wwv_flow_imp_shared.create_app_setting(
 p_id=>wwv_flow_imp.id(1966549238183857029)
,p_name=>'FEEDBACK_ATTACHMENTS_YN'
,p_value=>'Y'
,p_is_required=>'N'
,p_valid_values=>'Y, N'
,p_on_upgrade_keep_value=>true
,p_required_patch=>wwv_flow_imp.id(1966545788512857026)
,p_version_scn=>227958646
);
wwv_flow_imp_shared.create_app_setting(
 p_id=>wwv_flow_imp.id(1966549578731857029)
,p_name=>'ACCESS_CONTROL_SCOPE'
,p_value=>'ACL_ONLY'
,p_is_required=>'N'
,p_valid_values=>'ACL_ONLY, ALL_USERS'
,p_on_upgrade_keep_value=>true
,p_required_patch=>wwv_flow_imp.id(1966545603817857026)
,p_comments=>unistr('O n\00EDvel de acesso padr\00E3o fornecido a usu\00E1rios autenticados que n\00E3o est\00E3o na lista de controle de acesso')
,p_version_scn=>227958646
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
prompt --application/shared_components/user_interface/lovs/access_roles
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(1966671573741857290)
,p_lov_name=>'ACCESS_ROLES'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select role_name d, role_id r',
'from APEX_APPL_ACL_ROLES where application_id = :APP_ID ',
'order by 1'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'R'
,p_display_column_name=>'D'
,p_version_scn=>227958766
);
end;
/
prompt --application/shared_components/user_interface/lovs/desktop_theme_styles
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(1966571134444857061)
,p_lov_name=>'DESKTOP THEME STYLES'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select s.name d,',
'       s.theme_style_id r',
'  from apex_application_theme_styles s,',
'       apex_application_themes t',
' where s.application_id = :app_id',
'   and t.application_id = s.application_id',
'   and t.theme_number   = s.theme_number',
'   and t.is_current     = ''Yes''',
' order by 1'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'R'
,p_display_column_name=>'D'
,p_version_scn=>227958682
);
end;
/
prompt --application/shared_components/user_interface/lovs/email_username_format
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(1966679058968857297)
,p_lov_name=>'EMAIL_USERNAME_FORMAT'
,p_lov_query=>'.'||wwv_flow_imp.id(1966679058968857297)||'.'
,p_location=>'STATIC'
,p_version_scn=>227958772
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(1966679343489857297)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>unistr('Endere\00E7os de E-mail')
,p_lov_return_value=>'EMAIL'
);
end;
/
prompt --application/shared_components/user_interface/lovs/feedback_rating
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(1966696340566857356)
,p_lov_name=>'FEEDBACK_RATING'
,p_lov_query=>'.'||wwv_flow_imp.id(1966696340566857356)||'.'
,p_location=>'STATIC'
,p_version_scn=>227958782
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(1966696729769857356)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Positivo'
,p_lov_return_value=>'3'
,p_lov_template=>'<span title="#DISPLAY_VALUE#" aria-label="#DISPLAY_VALUE#"><span class="fa fa-smile-o fa-2x feedback-positive" aria-hidden="true" ></span></span>'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(1966697057815857356)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Neutro'
,p_lov_return_value=>'2'
,p_lov_template=>'<span title="#DISPLAY_VALUE#" aria-label="#DISPLAY_VALUE#"><span class="fa fa-emoji-neutral fa-2x feedback-neutral" aria-hidden="true" ></span></span>'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(1966697483692857356)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Negativo'
,p_lov_return_value=>'1'
,p_lov_template=>'<span title="#DISPLAY_VALUE#" aria-label="#DISPLAY_VALUE#"><span class="fa fa-frown-o fa-2x feedback-negative" aria-hidden="true" ></span></span>'
);
end;
/
prompt --application/shared_components/user_interface/lovs/feedback_status
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(1966708746209857365)
,p_lov_name=>'FEEDBACK_STATUS'
,p_lov_query=>'.'||wwv_flow_imp.id(1966708746209857365)||'.'
,p_location=>'STATIC'
,p_version_scn=>227958791
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(1966709041588857365)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>unistr('Sem A\00E7\00E3o')
,p_lov_return_value=>'0'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(1966709523507857365)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Confirmado'
,p_lov_return_value=>'1'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(1966709860257857365)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Abrir'
,p_lov_return_value=>'3'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(1966710275321857366)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'Fechado'
,p_lov_return_value=>'4'
);
end;
/
prompt --application/shared_components/user_interface/lovs/timeframe_4_weeks
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(1966590729335857197)
,p_lov_name=>'TIMEFRAME (4 WEEKS)'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select disp,',
'       val as seconds',
'  from table( apex_util.get_timeframe_lov_data )',
' order by insert_order'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'SECONDS'
,p_display_column_name=>'DISP'
,p_version_scn=>227958705
);
end;
/
prompt --application/shared_components/user_interface/lovs/user_theme_preference
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(1966571795061857063)
,p_lov_name=>'USER_THEME_PREFERENCE'
,p_lov_query=>'.'||wwv_flow_imp.id(1966571795061857063)||'.'
,p_location=>'STATIC'
,p_version_scn=>227958682
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(1966572090398857063)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>unistr('Permite que os Usu\00E1rios Finais escolham o Estilo do Tema')
,p_lov_return_value=>'Yes'
);
end;
/
prompt --application/shared_components/user_interface/lovs/view_as_report_chart
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(1966638245693857257)
,p_lov_name=>'VIEW_AS_REPORT_CHART'
,p_lov_query=>'.'||wwv_flow_imp.id(1966638245693857257)||'.'
,p_location=>'STATIC'
,p_version_scn=>227958760
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(1966638634512857257)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>unistr('Adicionar P\00E1gina do Relat\00F3rio')
,p_lov_return_value=>'REPORT'
,p_lov_template=>'<span class="fa fa-table" aria-hidden="true"></span><span class="u-VisuallyHidden">#DISPLAY_VALUE#</span>'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(1966638951191857257)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>unistr('Adicionar P\00E1gina do Gr\00E1fico')
,p_lov_return_value=>'CHART'
,p_lov_template=>'<span class="fa fa-pie-chart" aria-hidden="true"></span><span class="u-VisuallyHidden">#DISPLAY_VALUE#</span>'
);
end;
/
prompt --application/pages/page_groups
begin
wwv_flow_imp_page.create_page_group(
 p_id=>wwv_flow_imp.id(1966549865515857031)
,p_group_name=>unistr('Administra\00E7\00E3o')
);
wwv_flow_imp_page.create_page_group(
 p_id=>wwv_flow_imp.id(1966752907194857480)
,p_group_name=>unistr('Defini\00E7\00F5es do Usu\00E1rio')
);
end;
/
prompt --application/comments
begin
null;
end;
/
prompt --application/shared_components/navigation/breadcrumbs/breadcrumb
begin
wwv_flow_imp_shared.create_menu(
 p_id=>wwv_flow_imp.id(1966541403276857012)
,p_name=>'Breadcrumb'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(1966541615797857012)
,p_short_name=>'In&#xED;cio'
,p_link=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>1
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(1966734848990857387)
,p_short_name=>'Administra&#xE7;&#xE3;o'
,p_link=>'f?p=&APP_ID.:10000:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>10000
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(1966805409056906608)
,p_short_name=>'Relat&#xF3;rio de Aprovados'
,p_link=>'f?p=&APP_ID.:3:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>3
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(1967068316135125877)
,p_short_name=>'Consulta de CPF (Busca Unificada)'
,p_link=>'f?p=&APP_ID.:7:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>7
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(1968011680230641197)
,p_short_name=>'Dashboard'
,p_link=>'f?p=&APP_ID.:9:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>9
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(1972766898733946594)
,p_short_name=>'Hist&#xF3;rico de Processamento'
,p_link=>'f?p=&APP_ID.:13:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>13
);
end;
/
prompt --application/shared_components/navigation/breadcrumbentry
begin
null;
end;
/
prompt --application/shared_components/user_interface/templates/popuplov
begin
null;
end;
/
prompt --application/shared_components/user_interface/themes
begin
wwv_flow_imp_shared.create_theme(
 p_id=>wwv_flow_imp.id(1966542254864857014)
,p_theme_id=>42
,p_theme_name=>'Universal Theme'
,p_theme_internal_name=>'UNIVERSAL_THEME'
,p_version_identifier=>'24.2'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_reference_id=>4072363937200175119
,p_is_locked=>false
,p_current_theme_style_id=>2597873239612181258
,p_default_page_template=>4072355960268175073
,p_default_dialog_template=>2100407606326202693
,p_error_template=>2101157952850466385
,p_printer_friendly_template=>4072355960268175073
,p_login_template=>2101157952850466385
,p_default_button_template=>4072362960822175091
,p_default_region_template=>4072358936313175081
,p_default_chart_template=>4072358936313175081
,p_default_form_template=>4072358936313175081
,p_default_reportr_template=>4072358936313175081
,p_default_tabform_template=>4072358936313175081
,p_default_wizard_template=>4072358936313175081
,p_default_menur_template=>2531463326621247859
,p_default_listr_template=>4072358936313175081
,p_default_irr_template=>2100526641005906379
,p_default_report_template=>2538654340625403440
,p_default_label_template=>1609121967514267634
,p_default_menu_template=>4072363345357175094
,p_default_calendar_template=>4072363550766175095
,p_default_list_template=>4072361143931175087
,p_default_nav_list_template=>2526754704087354841
,p_default_top_nav_list_temp=>2526754704087354841
,p_default_side_nav_list_temp=>2467739217141810545
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>2126429139436695430
,p_default_dialogr_template=>4501440665235496320
,p_default_option_label=>1609121967514267634
,p_default_required_label=>1609122147107268652
,p_default_navbar_list_template=>2847543055748234966
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(42),'#APEX_FILES#themes/theme_42/24.2/')
,p_files_version=>64
,p_icon_library=>'FONTAPEX'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#APEX_FILES#libraries/apex/#MIN_DIRECTORY#widget.stickyWidget#MIN#.js?v=#APEX_VERSION#',
'#THEME_FILES#js/theme42#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>'#THEME_FILES#css/Core#MIN#.css?v=#APEX_VERSION#'
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
prompt --application/shared_components/user_interface/template_opt_groups
begin
null;
end;
/
prompt --application/shared_components/user_interface/template_options
begin
null;
end;
/
prompt --application/shared_components/globalization/language
begin
null;
end;
/
prompt --application/shared_components/globalization/translations
begin
null;
end;
/
prompt --application/shared_components/logic/build_options
begin
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(1966540786466857011)
,p_build_option_name=>'Comentado'
,p_build_option_status=>'EXCLUDE'
,p_version_scn=>227958623
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(1966545603817857026)
,p_build_option_name=>'Recurso: Controle de Acesso'
,p_build_option_status=>'INCLUDE'
,p_version_scn=>227958637
,p_feature_identifier=>'APPLICATION_ACCESS_CONTROL'
,p_build_option_comment=>unistr('Incorpore a autentica\00E7\00E3o de usu\00E1rios baseada em atribui\00E7\00E3o no seu aplicativo e gerencie mapeamentos de nome de usu\00E1rio para atribui\00E7\00F5es do aplicativo.')
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(1966545641652857026)
,p_build_option_name=>unistr('Recurso: Relat\00F3rio de Atividades')
,p_build_option_status=>'INCLUDE'
,p_version_scn=>227958637
,p_feature_identifier=>'APPLICATION_ACTIVITY_REPORTING'
,p_build_option_comment=>unistr('Inclua diversos relat\00F3rios e gr\00E1ficos sobre a atividade do usu\00E1rio final.')
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(1966545788512857026)
,p_build_option_name=>'Recurso: Feedback'
,p_build_option_status=>'INCLUDE'
,p_version_scn=>227958637
,p_feature_identifier=>'APPLICATION_FEEDBACK'
,p_build_option_comment=>unistr('Forne\00E7a um mecanismo para que os usu\00E1rios finais postem coment\00E1rios gen\00E9ricos para os administradores e desenvolvedores de aplicativos.')
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(1966545961323857026)
,p_build_option_name=>unistr('Recurso: Op\00E7\00F5es de Configura\00E7\00E3o')
,p_build_option_status=>'INCLUDE'
,p_version_scn=>227958635
,p_feature_identifier=>'APPLICATION_CONFIGURATION'
,p_build_option_comment=>unistr('Permitir que os administradores de aplicativos ativem ou desativem funcionalidades espec\00EDficas, associadas a uma op\00E7\00E3o de build do Oracle APEX, de dentro do aplicativo.')
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(1966546262077857026)
,p_build_option_name=>unistr('Recurso: P\00E1gina Sobre')
,p_build_option_status=>'INCLUDE'
,p_version_scn=>227958637
,p_feature_identifier=>'APPLICATION_ABOUT_PAGE'
,p_build_option_comment=>unistr('Sobre esta p\00E1gina do aplicativo.')
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(1966546373383857026)
,p_build_option_name=>unistr('Recurso: Sele\00E7\00E3o de Estilo do Tema')
,p_build_option_status=>'INCLUDE'
,p_version_scn=>227958637
,p_feature_identifier=>'APPLICATION_THEME_STYLE_SELECTION'
,p_build_option_comment=>unistr('Permitir que os administradores selecionem um esquema de cores padr\00E3o (estilo de tema) para o aplicativo. Os administradores tamb\00E9m podem permitir que os usu\00E1rios finais escolham seu pr\00F3prio estilo de tema. ')
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(1966753089609857481)
,p_build_option_name=>unistr('Recurso: Notifica\00E7\00F5es de Envio')
,p_build_option_status=>'INCLUDE'
,p_version_scn=>227958814
,p_feature_identifier=>'APPLICATION_PUSH_NOTIFICATIONS'
,p_build_option_comment=>unistr('Permitir que os usu\00E1rios se inscrevam nas notifica\00E7\00F5es por push em seus dispositivos')
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(1966753419157857481)
,p_build_option_name=>unistr('Recurso: Defini\00E7\00F5es do Usu\00E1rio')
,p_build_option_status=>'INCLUDE'
,p_version_scn=>227958814
,p_feature_identifier=>'APPLICATION_USER_SETTINGS'
,p_build_option_comment=>unistr('A p\00E1gina de defini\00E7\00F5es do usu\00E1rio \00E9 uma gaveta que est\00E1 vinculada a todas as p\00E1ginas de defini\00E7\00F5es do usu\00E1rio.')
);
end;
/
prompt --application/shared_components/globalization/messages
begin
null;
end;
/
prompt --application/shared_components/globalization/dyntranslations
begin
null;
end;
/
prompt --application/shared_components/security/authentications/contas_do_oracle_apex
begin
wwv_flow_imp_shared.create_authentication(
 p_id=>wwv_flow_imp.id(1966541048338857012)
,p_name=>'Contas do Oracle APEX'
,p_scheme_type=>'NATIVE_APEX_ACCOUNTS'
,p_invalid_session_type=>'LOGIN'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
,p_version_scn=>227958623
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
wwv_flow_imp_page.create_page(
 p_id=>0
,p_name=>unistr('P\00E1gina Global')
,p_step_title=>unistr('P\00E1gina Global')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'D'
,p_page_component_map=>'14'
);
end;
/
prompt --application/pages/page_00001
begin
wwv_flow_imp_page.create_page(
 p_id=>1
,p_name=>unistr('In\00EDcio')
,p_alias=>'HOME'
,p_step_title=>'RNCH'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'13'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1966557873004857041)
,p_plug_name=>'RNCH'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2674017834225413037
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_query_num_rows=>15
,p_region_image=>'#APP_FILES#icons/app-icon-512.png'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
end;
/
prompt --application/pages/page_00003
begin
wwv_flow_imp_page.create_page(
 p_id=>3
,p_name=>unistr('Relat\00F3rio de Aprovados')
,p_alias=>unistr('RELAT\00D3RIO-DE-APROVADOS')
,p_step_title=>unistr('Relat\00F3rio de Aprovados')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1966804855959906607)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(1966541403276857012)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1966805575701906608)
,p_plug_name=>unistr('Relat\00F3rio de Aprovados')
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'RNCH_DEP_TB_AUD_APROVADO'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>unistr('Relat\00F3rio de Aprovados')
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(1966805693430906608)
,p_name=>unistr('Relat\00F3rio de Aprovados')
,p_max_row_count_message=>unistr('A contagem m\00E1xima de linhas deste relat\00F3rio \00E9 #MAX_ROW_COUNT# linhas. Aplique um filtro para reduzir o n\00FAmero de registros em sua consulta.')
,p_no_data_found_message=>unistr('Dados n\00E3o encontrados.')
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'JONAS.SPINDLER@MJ.GOV.BR'
,p_internal_uid=>966860656435391805
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1966806388540906631)
,p_db_column_name=>'CO_AUD_APROVADO'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Co Aud Aprovado'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1966806739741906632)
,p_db_column_name=>'NU_CPF'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Nu Cpf'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1966807180582906633)
,p_db_column_name=>'DT_FIM_CURSO'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Dt Fim Curso'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1966807580148906633)
,p_db_column_name=>'NO_CURSO'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'No Curso'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1966807967522906633)
,p_db_column_name=>'NO_ORGAO'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'No Orgao'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1966808372877906634)
,p_db_column_name=>'TP_SEXO'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Tp Sexo'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1966808743336906634)
,p_db_column_name=>'SG_UF_ALUNO'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Sg Uf Aluno'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1966809157926906634)
,p_db_column_name=>'NO_MUNICIPIO_ALUNO'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'No Municipio Aluno'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1966809618303906635)
,p_db_column_name=>'NU_NOTA'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Nu Nota'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1966810013774906635)
,p_db_column_name=>'CO_LOTE'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Co Lote'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1966810414522906635)
,p_db_column_name=>'DH_AUDITORIA'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Dh Auditoria'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(1966811176984907743)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'9668662'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'CO_AUD_APROVADO:NU_CPF:DT_FIM_CURSO:NO_CURSO:NO_ORGAO:TP_SEXO:SG_UF_ALUNO:NO_MUNICIPIO_ALUNO:NU_NOTA:CO_LOTE:DH_AUDITORIA'
);
end;
/
prompt --application/pages/page_00007
begin
wwv_flow_imp_page.create_page(
 p_id=>7
,p_name=>'Consulta de CPF (Busca Unificada)'
,p_alias=>'CONSULTA-DE-CPF-BUSCA-UNIFICADA'
,p_step_title=>'Consulta de CPF (Busca Unificada)'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'03'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1966787926801894508)
,p_plug_name=>'Filtros'
,p_title=>'Filtros'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(1966788257208894512)
,p_name=>'Resultados'
,p_title=>'Resultados'
,p_template=>4072358936313175081
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    CASE ',
unistr('        WHEN TIPO = ''APROVADO'' THEN ''u-success-text'' -- Verde (Sem\00E2ntico)'),
unistr('        WHEN TIPO = ''BLOQUEADO'' THEN ''u-danger-text'' -- Vermelho (Sem\00E2ntico)'),
unistr('        ELSE ''u-warning-text''                        -- Laranja (Aten\00E7\00E3o/SERPRO)'),
'    END as CSS_COR,',
'    CASE ',
'        WHEN TIPO = ''APROVADO'' THEN ''fa-check-circle''',
'        WHEN TIPO = ''BLOQUEADO'' THEN ''fa-ban''',
'        ELSE ''fa-exclamation-triangle''',
'    END as ICONE,',
'    TIPO,',
'    NU_CPF,',
'    NO_CURSO,',
'    NO_ORGAO,',
'    TP_SEXO,               ',
'    SG_UF_ALUNO,           ',
'    NO_MUNICIPIO_ALUNO,    ',
'    NU_NOTA,               ',
'    DT_MATRICULA,          ',
'    DATA_CONCLUSAO,',
'    DETALHE,               -- Motivo ou Mensagem Serpro',
'    CO_LOTE,',
'    DH_AUDITORIA',
'FROM (',
'    SELECT ',
'        ''APROVADO'' as TIPO,',
'        NU_CPF,',
'        NO_CURSO,',
'        NO_ORGAO,',
'        TP_SEXO,',
'        SG_UF_ALUNO,',
'        NO_MUNICIPIO_ALUNO,',
'        NU_NOTA,',
'        NULL as DT_MATRICULA,',
'        TO_CHAR(DT_FIM_CURSO, ''DD/MM/YYYY'') as DATA_CONCLUSAO,',
unistr('        ''Processamento Conclu\00EDdo com Sucesso'' as DETALHE,'),
'        CO_LOTE,',
'        TO_CHAR(DH_AUDITORIA, ''DD/MM/YYYY HH24:MI'') as DH_AUDITORIA',
'    FROM RNCH_DEP_TB_AUD_APROVADO',
'    ',
'    UNION ALL',
'    ',
'    SELECT ',
'        ''BLOQUEADO'' as TIPO,',
'        NU_CPF,',
'        NO_CURSO,',
'        NO_ORGAO,',
'        TP_SEXO,',
'        SG_UF_ALUNO,',
'        NO_MUNICIPIO_ALUNO,',
'        NU_NOTA,',
'        TO_CHAR(DT_MATRICULA, ''DD/MM/YYYY'') as DT_MATRICULA,',
'        TO_CHAR(DT_CONCLUSAO, ''DD/MM/YYYY'') as DATA_CONCLUSAO,',
'        DS_MOTIVO_BLOQUEIO as DETALHE,',
'        CO_LOTE,',
'        TO_CHAR(DH_AUDITORIA, ''DD/MM/YYYY HH24:MI'') as DH_AUDITORIA',
'    FROM RNCH_DEP_TB_AUD_BLOQUEADO',
'    ',
'    UNION ALL',
'    ',
unistr('    -- Integra\00E7\00E3o SERPRO'),
'    SELECT ',
'        ''RETORNO SERPRO'' as TIPO,',
'        NU_CPF,',
'        CAST(NULL as VARCHAR2(100)) as NO_CURSO,',
'        CAST(NULL as VARCHAR2(100)) as NO_ORGAO,',
'        CAST(NULL as CHAR(1)) as TP_SEXO,',
'        CAST(NULL as CHAR(2)) as SG_UF_ALUNO,',
'        CAST(NULL as VARCHAR2(100)) as NO_MUNICIPIO_ALUNO,',
'        CAST(NULL as NUMBER(5,2)) as NU_NOTA,',
'        CAST(NULL as VARCHAR2(20)) as DT_MATRICULA,',
'        CAST(NULL as VARCHAR2(20)) as DATA_CONCLUSAO,',
'        DS_MENSAGEM as DETALHE, ',
'        CAST(NULL as NUMBER) as CO_LOTE,',
'        DH_PROCESSAMENTO as DH_AUDITORIA -- Coluna D do Excel',
'    FROM RNCH_DEP_TB_SERPRO',
')',
'WHERE :P7_BUSCA_CPF IS NOT NULL AND TRIM(NU_CPF) = TRIM(:P7_BUSCA_CPF)'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P7_BUSCA_CPF'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1966789116531894520)
,p_query_column_id=>1
,p_column_alias=>'CSS_COR'
,p_column_display_sequence=>80
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1966789148188894521)
,p_query_column_id=>2
,p_column_alias=>'ICONE'
,p_column_display_sequence=>90
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1966789301542894522)
,p_query_column_id=>3
,p_column_alias=>'TIPO'
,p_column_display_sequence=>10
,p_column_heading=>'Tipo'
,p_column_html_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<span class="fa #ICONE# #CSS_COR# u-bold fa-lg"></span> ',
'<span class="#CSS_COR# u-bold">#TIPO#</span>'))
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1966788441880894514)
,p_query_column_id=>4
,p_column_alias=>'NU_CPF'
,p_column_display_sequence=>20
,p_column_heading=>'Nu Cpf'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1966788554199894515)
,p_query_column_id=>5
,p_column_alias=>'NO_CURSO'
,p_column_display_sequence=>30
,p_column_heading=>'No Curso'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1966788650666894516)
,p_query_column_id=>6
,p_column_alias=>'NO_ORGAO'
,p_column_display_sequence=>40
,p_column_heading=>'No Orgao'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1966789390014894523)
,p_query_column_id=>7
,p_column_alias=>'TP_SEXO'
,p_column_display_sequence=>110
,p_column_heading=>'Tp Sexo'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1966789484285894524)
,p_query_column_id=>8
,p_column_alias=>'SG_UF_ALUNO'
,p_column_display_sequence=>120
,p_column_heading=>'Sg Uf Aluno'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1966789626079894525)
,p_query_column_id=>9
,p_column_alias=>'NO_MUNICIPIO_ALUNO'
,p_column_display_sequence=>130
,p_column_heading=>'No Municipio Aluno'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1966789716156894526)
,p_query_column_id=>10
,p_column_alias=>'NU_NOTA'
,p_column_display_sequence=>140
,p_column_heading=>'Nu Nota'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1966789765052894527)
,p_query_column_id=>11
,p_column_alias=>'DT_MATRICULA'
,p_column_display_sequence=>150
,p_column_heading=>'Dt Matricula'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1966788754150894517)
,p_query_column_id=>12
,p_column_alias=>'DATA_CONCLUSAO'
,p_column_display_sequence=>50
,p_column_heading=>'Data Conclusao'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1966788838741894518)
,p_query_column_id=>13
,p_column_alias=>'DETALHE'
,p_column_display_sequence=>60
,p_column_heading=>'Detalhe'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1966788980417894519)
,p_query_column_id=>14
,p_column_alias=>'CO_LOTE'
,p_column_display_sequence=>70
,p_column_heading=>'Co Lote'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1966789882067894528)
,p_query_column_id=>15
,p_column_alias=>'DH_AUDITORIA'
,p_column_display_sequence=>160
,p_column_heading=>'Dh Auditoria'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1967067817385125876)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(1966541403276857012)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1966788174022894511)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(1966787926801894508)
,p_button_name=>'BTN_BUSCAR'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Pesquisar CPF'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1966788068159894510)
,p_name=>'P7_BUSCA_CPF'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(1966787926801894508)
,p_prompt=>'Digite o CPF'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
end;
/
prompt --application/pages/page_00009
begin
wwv_flow_imp_page.create_page(
 p_id=>9
,p_name=>'Dashboard'
,p_alias=>'DASHBOARD'
,p_step_title=>'Dashboard'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'23'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1966790384400894533)
,p_plug_name=>'Resumo'
,p_region_template_options=>'#DEFAULT#:t-CardsRegion--hideHeader js-addHiddenHeadingRoleDesc'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2072724515482255512
,p_plug_display_sequence=>10
,p_plug_new_grid_row=>false
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ''Total Aprovados'' as LABEL, COUNT(*) as QTD, ''u-success-text'' as COR, ''fa-check-circle'' as ICON FROM RNCH_DEP_TB_AUD_APROVADO',
'UNION ALL',
'SELECT ''Total Bloqueados'' as LABEL, COUNT(*) as QTD, ''u-danger-text'' as COR, ''fa-ban'' as ICON FROM RNCH_DEP_TB_AUD_BLOQUEADO',
'UNION ALL',
'SELECT ''Retorno SERPRO'' as LABEL, COUNT(*) as QTD, ''u-warning-text'' as COR, ''fa-server'' as ICON FROM RNCH_DEP_TB_SERPRO'))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(1966790499945894534)
,p_region_id=>wwv_flow_imp.id(1966790384400894533)
,p_layout_type=>'GRID'
,p_title_adv_formatting=>false
,p_title_column_name=>'LABEL'
,p_sub_title_adv_formatting=>false
,p_body_adv_formatting=>false
,p_body_column_name=>'QTD'
,p_second_body_adv_formatting=>false
,p_media_adv_formatting=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1966790624069894535)
,p_plug_name=>'Aprovados por Curso'
,p_title=>'Aprovados por Curso'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>40
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT NO_CURSO as LABEL, COUNT(*) as VALUE',
'FROM RNCH_DEP_TB_AUD_APROVADO',
'GROUP BY NO_CURSO',
'ORDER BY 2 DESC'))
,p_plug_source_type=>'NATIVE_JET_CHART'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(1966790694475894536)
,p_region_id=>wwv_flow_imp.id(1966790624069894535)
,p_chart_type=>'bar'
,p_height=>'400'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'off'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(1966790814314894537)
,p_chart_id=>wwv_flow_imp.id(1966790694475894536)
,p_seq=>10
,p_name=>'Novo'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT NO_CURSO as LABEL, COUNT(*) as VALUE',
'FROM RNCH_DEP_TB_AUD_APROVADO',
'GROUP BY NO_CURSO',
'ORDER BY 2 DESC'))
,p_items_value_column_name=>'VALUE'
,p_items_label_column_name=>'LABEL'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(1966790873115894538)
,p_chart_id=>wwv_flow_imp.id(1966790694475894536)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(1966790983552894539)
,p_chart_id=>wwv_flow_imp.id(1966790694475894536)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'none'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1966791110574894540)
,p_plug_name=>'Aprovados por Sexo'
,p_title=>'Aprovados por Sexo'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>50
,p_plug_new_grid_row=>false
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    CASE TP_SEXO ',
'        WHEN ''M'' THEN ''Masculino'' ',
'        WHEN ''F'' THEN ''Feminino'' ',
'        WHEN ''O'' THEN ''Outros''',
unistr('        ELSE ''N\00E3o Informado'''),
'    END as LABEL, ',
'    COUNT(*) as VALUE',
'FROM RNCH_DEP_TB_AUD_APROVADO',
'GROUP BY TP_SEXO',
'ORDER BY VALUE DESC'))
,p_plug_source_type=>'NATIVE_JET_CHART'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(1966791145519894541)
,p_region_id=>wwv_flow_imp.id(1966791110574894540)
,p_chart_type=>'bar'
,p_height=>'400'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'withRescale'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'on'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(1966791335631894542)
,p_chart_id=>wwv_flow_imp.id(1966791145519894541)
,p_seq=>10
,p_name=>'Novo'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    CASE TP_SEXO ',
'        WHEN ''M'' THEN ''Masculino'' ',
'        WHEN ''F'' THEN ''Feminino'' ',
'        WHEN ''O'' THEN ''Outros''',
unistr('        ELSE ''N\00E3o Informado'''),
'    END as LABEL, ',
'    COUNT(*) as VALUE',
'FROM RNCH_DEP_TB_AUD_APROVADO',
'GROUP BY TP_SEXO',
'ORDER BY VALUE DESC'))
,p_items_value_column_name=>'VALUE'
,p_items_label_column_name=>'LABEL'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(1968029886985704234)
,p_chart_id=>wwv_flow_imp.id(1966791145519894541)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'none'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(1968029776499704233)
,p_chart_id=>wwv_flow_imp.id(1966791145519894541)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1966791557955894545)
,p_plug_name=>unistr('Aprovados por \00D3rg\00E3o')
,p_title=>unistr('Aprovados por \00D3rg\00E3o')
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>60
,p_plug_new_grid_row=>false
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(1966791684711894546)
,p_region_id=>wwv_flow_imp.id(1966791557955894545)
,p_chart_type=>'bar'
,p_height=>'400'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'horizontal'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'off'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(1966791759226894547)
,p_chart_id=>wwv_flow_imp.id(1966791684711894546)
,p_seq=>10
,p_name=>'Novo'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT NO_ORGAO as LABEL, COUNT(*) as VALUE',
'FROM RNCH_DEP_TB_AUD_APROVADO',
'GROUP BY NO_ORGAO',
'ORDER BY 2 DESC',
unistr('FETCH FIRST 10 ROWS ONLY -- Top 10 para n\00E3o poluir')))
,p_items_value_column_name=>'VALUE'
,p_items_label_column_name=>'LABEL'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(1966791926822894548)
,p_chart_id=>wwv_flow_imp.id(1966791684711894546)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(1966791951746894549)
,p_chart_id=>wwv_flow_imp.id(1966791684711894546)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'none'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1966792110767894550)
,p_plug_name=>'Aprovados por UF'
,p_title=>'Aprovados por UF'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>70
,p_plug_new_grid_row=>false
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(1966792213564894551)
,p_region_id=>wwv_flow_imp.id(1966792110767894550)
,p_chart_type=>'bar'
,p_height=>'400'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'horizontal'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'off'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(1966792315997894552)
,p_chart_id=>wwv_flow_imp.id(1966792213564894551)
,p_seq=>10
,p_name=>'Novo'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT SG_UF_ALUNO as LABEL, COUNT(*) as VALUE',
'FROM RNCH_DEP_TB_AUD_APROVADO',
'GROUP BY SG_UF_ALUNO',
'ORDER BY 2 DESC'))
,p_items_value_column_name=>'VALUE'
,p_items_label_column_name=>'LABEL'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(1966792350856894553)
,p_chart_id=>wwv_flow_imp.id(1966792213564894551)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(1968026869384704204)
,p_chart_id=>wwv_flow_imp.id(1966792213564894551)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'none'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1968011207685641196)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(1966541403276857012)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1968027511159704210)
,p_plug_name=>unistr('Transa\00E7\00F5es SERPRO por Curso')
,p_title=>unistr('Transa\00E7\00F5es SERPRO por Curso')
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(1968027631089704211)
,p_region_id=>wwv_flow_imp.id(1968027511159704210)
,p_chart_type=>'bar'
,p_height=>'400'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'off'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(1968027702271704212)
,p_chart_id=>wwv_flow_imp.id(1968027631089704211)
,p_seq=>10
,p_name=>'Por Curso'
,p_data_source_type=>'TABLE'
,p_query_table=>'VW_DASH_SERPRO_POR_CURSO'
,p_include_rowid_column=>false
,p_items_value_column_name=>'QTD_TRANSACOES'
,p_items_label_column_name=>'NO_CURSO'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(1968027790506704213)
,p_chart_id=>wwv_flow_imp.id(1968027631089704211)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(1968027891304704214)
,p_chart_id=>wwv_flow_imp.id(1968027631089704211)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'none'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
end;
/
prompt --application/pages/page_00010
begin
wwv_flow_imp_page.create_page(
 p_id=>10
,p_name=>unistr('Gera\00E7\00E3o do Arquivo')
,p_alias=>unistr('GERA\00C7\00C3O-DO-ARQUIVO')
,p_step_title=>unistr('Gera\00E7\00E3o do Arquivo')
,p_reload_on_submit=>'A'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'16'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1968027996010704215)
,p_plug_name=>unistr('Par\00E2metros de Carga')
,p_title=>unistr('Par\00E2metros de Carga')
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1972303411026150427)
,p_plug_name=>unistr('Gera\00E7\00E3o do Arquivo')
,p_region_template_options=>'#DEFAULT#:t-Wizard--hideStepsXSmall'
,p_plug_template=>2119049015939707260
,p_plug_display_sequence=>10
,p_list_id=>wwv_flow_imp.id(1972302509173150423)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2010149141494510257
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1972303444493150427)
,p_plug_name=>unistr('Gera\00E7\00E3o do Arquivo')
,p_parent_plug_id=>wwv_flow_imp.id(1972303411026150427)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1968028832153704223)
,p_button_sequence=>110
,p_button_plug_id=>wwv_flow_imp.id(1968027996010704215)
,p_button_name=>'BTN_PROCESSAR'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Processar'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1968028601398704221)
,p_button_sequence=>120
,p_button_plug_id=>wwv_flow_imp.id(1968027996010704215)
,p_button_name=>'BTN_GERAR_BAIXAR'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Gerar e Baixar CSV'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1972304828445150428)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(1972303411026150427)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancelar'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1972305086282150428)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(1972303411026150427)
,p_button_name=>'NEXT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('Pr\00F3ximo')
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_icon_css_classes=>'fa-chevron-right'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(1972305795305150429)
,p_branch_action=>'f?p=&APP_ID.:11:&APP_SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(1972305086282150428)
,p_branch_sequence=>20
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(996253414944024614)
,p_name=>'P10_CO_CURSO'
,p_is_required=>true
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(1968027996010704215)
,p_prompt=>unistr('C\00F3digo curso ?')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>unistr('STATIC:CVE - C\00F3digo 04;04,ACVE C\00F3digo 14;14')
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'N',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1968028066069704216)
,p_name=>'P10_ARQUIVO_RELATORIO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(1968027996010704215)
,p_prompt=>unistr('Relat\00F3rio de APROVADOS do SGA')
,p_display_as=>'NATIVE_FILE'
,p_cSize=>30
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'allow_multiple_files', 'N',
  'display_as', 'INLINE',
  'purge_file_at', 'REQUEST',
  'storage_type', 'APEX_APPLICATION_TEMP_FILES')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1968028146541704217)
,p_name=>'P10_ARQUIVO_CADASTRO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(1968027996010704215)
,p_prompt=>unistr('Formul\00E1rio de respostas MOODLE')
,p_display_as=>'NATIVE_FILE'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'allow_multiple_files', 'N',
  'display_as', 'INLINE',
  'purge_file_at', 'REQUEST',
  'storage_type', 'APEX_APPLICATION_TEMP_FILES')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1968028253657704218)
,p_name=>'P10_TIPO_ATUALIZACAO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(1968027996010704215)
,p_prompt=>unistr('Qual \00E9 o TIPO? ')
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:CVE ;I,ACVE;S'
,p_cHeight=>1
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1968028429502704219)
,p_name=>'P10_CARGA_HORARIA'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(1968027996010704215)
,p_prompt=>'CARGA HORARIA?'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:CVE 60h;060,ACVE 40h;040'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1968028915244704224)
,p_name=>'P10_SEQ_INICIO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(1968027996010704215)
,p_prompt=>unistr('Sequ\00EAncia Inicial 000000')
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'min_value', '1',
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1968028986284704225)
,p_name=>'P10_LOTE_GERADO'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(1968027996010704215)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(1968028527980704220)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Processar Arquivos'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_blob_relatorio    BLOB;',
'    v_blob_formulario   BLOB;',
'    v_nome_arq_relatorio VARCHAR2(255);',
'    v_nome_arq_formulario VARCHAR2(255);',
'    v_lote_id           NUMBER;',
'BEGIN',
'    -- 1. Captura os nomes',
'    v_nome_arq_relatorio := :P10_ARQUIVO_RELATORIO;',
'    v_nome_arq_formulario := :P10_ARQUIVO_CADASTRO;',
'',
unistr('    -- 2. LIMPEZA (CR\00CDTICO: Deve ser a PRIMEIRA A\00C7\00C3O)'),
'    PKG_RNCH_DEP.LIMPAR_STAGING;',
'',
'    -- 3. Recupera os BLOBs',
'    BEGIN',
'        SELECT blob_content INTO v_blob_relatorio',
'        FROM apex_application_temp_files WHERE name = v_nome_arq_relatorio;',
'    EXCEPTION WHEN NO_DATA_FOUND THEN',
unistr('        RAISE_APPLICATION_ERROR(-20001, ''Arquivo de Relat\00F3rio n\00E3o encontrado: '' || v_nome_arq_relatorio);'),
'    END;',
'',
'    BEGIN',
'        SELECT blob_content INTO v_blob_formulario',
'        FROM apex_application_temp_files WHERE name = v_nome_arq_formulario;',
'    EXCEPTION WHEN NO_DATA_FOUND THEN',
unistr('        RAISE_APPLICATION_ERROR(-20001, ''Arquivo de Formul\00E1rio n\00E3o encontrado: '' || v_nome_arq_formulario);'),
'    END;',
'',
unistr('    -- 4. Carrega Tabela Relat\00F3rio'),
'    INSERT INTO RNCH_DEP_TB_STG_REL_CURSO (',
'        NO_CURSO, NO_ORGAO, NO_ALUNO, DS_PERFIL, NU_CPF, TP_SEXO,',
'        SG_UF_ALUNO, NO_MUNICIPIO_ALUNO, NU_NOTA, DT_MATRICULA, DT_CONCLUSAO',
'    )',
'    SELECT',
'        col001, col002, col003, SUBSTR(col004, 1, 50), col005, col006,',
'        col007, col008, col009, col011, col012',
'    FROM TABLE(APEX_DATA_PARSER.PARSE(',
'        p_content => v_blob_relatorio,',
'        p_file_name => v_nome_arq_relatorio,',
'        p_csv_col_delimiter => '';'',',
'        p_skip_rows => 1',
'    ));',
'',
unistr('    -- 5. Carrega Tabela Formul\00E1rio'),
'    INSERT INTO RNCH_DEP_TB_STG_FORM_CAD (NU_CPF, NU_CNH, SG_CATEGORIA_CNH)',
'    SELECT col003, col009, col010',
'    FROM table(apex_data_parser.parse(',
'        p_content           => v_blob_formulario,',
'        p_file_name         => ''formulario.csv'', ',
'        p_csv_col_delimiter => '','', ',
'        p_skip_rows         => 1',
'    ));',
'',
unistr('    -- 6. Processa (Passando o Novo Par\00E2metro do APEX)'),
'    PKG_RNCH_DEP.PROCESSAR_ARQUIVOS(',
'        p_seq_inicio       => TO_NUMBER(:P10_SEQ_INICIO),',
'        p_tipo_atualizacao => :P10_TIPO_ATUALIZACAO,',
'        p_carga_horaria    => :P10_CARGA_HORARIA,',
'        p_co_curso         => :P10_CO_CURSO,',
'        p_lote_id          => v_lote_id',
'    );',
'',
'    :P10_LOTE_GERADO := v_lote_id;',
unistr('    apex_application.g_print_success_message := ''Processamento conclu\00EDdo! Lote ID: '' || v_lote_id;'),
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(1968028832153704223)
,p_internal_uid=>968083490985189417
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(1968028648600704222)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'BTN_GERAR_BAIXAR'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    l_context apex_exec.t_context;',
'    l_export  apex_data_export.t_export;',
'BEGIN',
'    l_context := apex_exec.open_query_context(',
'        p_location       => apex_exec.c_location_local_db,',
'        p_sql_query      => ''SELECT ',
'                                NU_SEQ_TRANS       AS "nu-seq-trans",',
'                                CO_TRANS           AS "cod-trans",',
'                                CO_MOD_TRANS       AS "cod-mod-trans",',
'                                NU_CPF_USUARIO     AS "codusu",',
'                                SG_UF_OR_TRANS     AS "uf-or-trans",',
'                                SG_UF_ORIG_TRANSM  AS "uf-orig-transm",',
'                                SG_UF_DES_TRANSM   AS "uf-des-transm",',
'                                CO_COND_TRANS      AS "cond-trans",',
'                                NU_TAM_TRANS       AS "tam-trans",',
'                                CO_RET_TRANS       AS "cod-ret-trans",',
'                                NU_DIA_JULIANO     AS "dia-juliano",',
'                                TP_CHAVE           AS "tipo-chave",',
'                                NU_CNH             AS "numero-cnh",',
'                                TP_EVENTO          AS "tipo-evento",',
'                                TP_ATUALIZACAO     AS "tipo-atualizacao",',
'                                CO_CURSO           AS "codigo-curso",',
'                                CO_MODALIDADE      AS "modalidade",',
'                                NU_CERTIFICADO     AS "numero certificado",',
'                                DT_INICIO_CURSO    AS "data-inicio-curso",',
'                                DT_FIM_CURSO       AS "data-fim-curso",',
'                                NU_CARGA_HORARIA   AS "carga-horaria",',
'                                NU_CNPJ_ENTIDADE   AS "cnpj-entidade-crede",',
'                                NU_CPF_INSTRUTOR   AS "cpf-instrutor",',
'                                CO_MUNICIPIO_CURSO AS "municipio-curso",',
'                                SG_UF_CURSO        AS "uf-curso",',
'                                DT_VALIDADE        AS "data-validade",',
'                                SG_CATEGORIA       AS "categoria",',
'                                DS_OBSERVACOES     AS "observacoes-curso"',
'                            FROM RNCH_DEP_TB_ETL_FINAL',
'                            ORDER BY NU_SEQ_TRANS ASC''',
'    );',
'',
'    l_export := apex_data_export.export(',
'        p_context       => l_context,',
'        p_format        => apex_data_export.c_format_csv,',
'        p_file_name     => ''PREPARO_ETL_FINAL'',',
'        p_csv_separator => '',''',
'    );',
'',
'    apex_exec.close(l_context);',
'    apex_data_export.download( p_export => l_export );',
'EXCEPTION WHEN OTHERS THEN',
'    apex_exec.close(l_context);',
'    RAISE;',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(1968028601398704221)
,p_internal_uid=>968083611605189419
);
end;
/
prompt --application/pages/page_00011
begin
wwv_flow_imp_page.create_page(
 p_id=>11
,p_name=>'Retorno SERPRO'
,p_alias=>'RETORNO-SERPRO'
,p_step_title=>'Retorno SERPRO'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'16'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1972306478809150430)
,p_plug_name=>'Retorno SERPRO'
,p_region_template_options=>'#DEFAULT#:t-Wizard--hideStepsXSmall'
,p_plug_template=>2119049015939707260
,p_plug_display_sequence=>10
,p_list_id=>wwv_flow_imp.id(1972302509173150423)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2010149141494510257
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1972306575289150430)
,p_plug_name=>'Retorno SERPRO'
,p_parent_plug_id=>wwv_flow_imp.id(1972306478809150430)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1968029416059704229)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(1972306575289150430)
,p_button_name=>'BTN_PROCESSAR_RETORNO'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Processar Retorno'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1972307855372150431)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(1972306478809150430)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancelar'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1972308191034150431)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(1972306478809150430)
,p_button_name=>'NEXT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('Pr\00F3ximo')
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_icon_css_classes=>'fa-chevron-right'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1972308045169150431)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(1972306478809150430)
,p_button_name=>'PREVIOUS'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Anterior'
,p_button_position=>'PREVIOUS'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_icon_css_classes=>'fa-chevron-left'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(1972309553558150432)
,p_branch_action=>'f?p=&APP_ID.:12:&APP_SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(1972308191034150431)
,p_branch_sequence=>20
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(1972308906695150431)
,p_branch_action=>'f?p=&APP_ID.:10:&APP_SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_VALIDATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(1972308045169150431)
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1968029105889704226)
,p_name=>'P11_NO_CURSO'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(1972306575289150430)
,p_prompt=>'Selecione o Curso'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>unistr('STATIC:Condutor de Ve\00EDculo de Emerg\00EAncia (CVE);CVE,Atualiza\00E7\00E3o CVE (ACVE);AVCE')
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1968029171016704227)
,p_name=>'P11_ARQUIVO_SERPRO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(1972306575289150430)
,p_prompt=>'Novo'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>30
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'allow_multiple_files', 'N',
  'display_as', 'INLINE',
  'purge_file_at', 'REQUEST',
  'storage_type', 'APEX_APPLICATION_TEMP_FILES')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1968030217206704237)
,p_name=>'P11_LOTE_ID'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(1972306575289150430)
,p_prompt=>'Novo'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    ''Lote '' || L.CO_LOTE || '' - '' || ',
'    COALESCE(',
'        (SELECT MAX(NO_CURSO) FROM RNCH_DEP_TB_AUD_APROVADO A WHERE A.CO_LOTE = L.CO_LOTE),',
'        (SELECT MAX(NO_CURSO) FROM RNCH_DEP_TB_AUD_BLOQUEADO B WHERE B.CO_LOTE = L.CO_LOTE),',
unistr('        ''Curso N\00E3o Identificado'''),
'    ) || '' - '' || ',
'    TO_CHAR(L.DH_LOG, ''DD/MM/YYYY HH24:MI'') || ',
'    '' ('' || L.NO_USUARIO || '')'' as d,',
'    L.CO_LOTE as r',
'FROM RNCH_DEP_TB_AUD_LOG L',
'WHERE L.DS_MENSAGEM LIKE ''Lote%processado%''',
'ORDER BY L.DH_LOG DESC'))
,p_cSize=>30
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_inline_help_text=>unistr('Este campo foi preenchido automaticamente com o seu \00FAltimo lote processado. Verifique se a data e hora conferem.')
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'N',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(1968029332188704228)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Processar Retorno'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_blob      BLOB;',
'    v_nome_arq  VARCHAR2(255);',
'BEGIN',
'    v_nome_arq := :P11_ARQUIVO_SERPRO;',
'',
unistr('    -- 1. Valida\00E7\00E3o'),
'    IF v_nome_arq IS NULL THEN',
'        RAISE_APPLICATION_ERROR(-20001, ''Por favor, selecione um arquivo.'');',
'    END IF;',
'',
unistr('    -- 2. Pega o conte\00FAdo do arquivo'),
'    SELECT blob_content INTO v_blob',
'    FROM apex_application_temp_files WHERE name = v_nome_arq;',
'',
'    -- 3. Limpa e Carrega a Staging',
'    DELETE FROM RNCH_DEP_TB_STG_SERPRO;',
'',
'    INSERT INTO RNCH_DEP_TB_STG_SERPRO (COL001, COL002, COL003, COL004)',
'    SELECT col001, col002, col003, col004',
'    FROM table(apex_data_parser.parse(',
'        p_content   => v_blob,',
'        p_file_name => v_nome_arq,',
'        p_skip_rows => 1 ',
'    ));',
'',
'    -- 4. Executa a Procedure Principal (Agora com o Lote)',
'    PKG_RNCH_DEP.PROCESSAR_SERPRO(',
'        p_no_curso => :P11_NO_CURSO,',
unistr('        p_lote_id  => :P11_LOTE_ID -- Novo Par\00E2metro'),
'    );',
'',
'    -- 5. Feedback Visual',
'    apex_application.g_print_success_message := ''Arquivo processado com sucesso! Dados atualizados e vinculados ao Lote.'';',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(1968029416059704229)
,p_internal_uid=>968084295193189425
);
end;
/
prompt --application/pages/page_00012
begin
wwv_flow_imp_page.create_page(
 p_id=>12
,p_name=>unistr('Relat\00F3rio de Atividade')
,p_alias=>unistr('RELAT\00D3RIO-DE-ATIVIDADE')
,p_step_title=>unistr('Relat\00F3rio de Atividade')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'03'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1972310295352150432)
,p_plug_name=>unistr('Relat\00F3rio de Atividade')
,p_region_template_options=>'#DEFAULT#:t-Wizard--hideStepsXSmall'
,p_plug_template=>2119049015939707260
,p_plug_display_sequence=>10
,p_list_id=>wwv_flow_imp.id(1972302509173150423)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2010149141494510257
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(1972310411698150432)
,p_name=>unistr('Relat\00F3rio de Atividade')
,p_parent_plug_id=>wwv_flow_imp.id(1972310295352150432)
,p_template=>4501440665235496320
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DS_TEXTO_RELATORIO ',
'FROM VW_RNCH_RELATORIO_CONSOLIDADO ',
'ORDER BY DH_GERACAO DESC ',
'FETCH FIRST 1 ROWS ONLY'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>1
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1968029720966704232)
,p_query_column_id=>1
,p_column_alias=>'DS_TEXTO_RELATORIO'
,p_column_display_sequence=>10
,p_heading_alignment=>'LEFT'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1972311652622150433)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(1972310295352150432)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancelar'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1972311738298150433)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(1972310295352150432)
,p_button_name=>'FINISH'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Finalizar'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1972311922263150433)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(1972310295352150432)
,p_button_name=>'PREVIOUS'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Anterior'
,p_button_position=>'PREVIOUS'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_icon_css_classes=>'fa-chevron-left'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(1972313389910150434)
,p_branch_action=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(1972311738298150433)
,p_branch_sequence=>1
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(1972312671242150434)
,p_branch_action=>'f?p=&APP_ID.:11:&APP_SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_VALIDATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(1972311922263150433)
,p_branch_sequence=>10
);
end;
/
prompt --application/pages/page_00013
begin
wwv_flow_imp_page.create_page(
 p_id=>13
,p_name=>unistr('Hist\00F3rico de Processamento')
,p_alias=>unistr('HIST\00D3RICO-DE-PROCESSAMENTO')
,p_step_title=>unistr('Hist\00F3rico de Processamento')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1972766358921946593)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(1966541403276857012)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1972767072651946595)
,p_plug_name=>unistr('Hist\00F3rico de Processamento')
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'VW_RNCH_RELATORIO_CONSOLIDADO'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>unistr('Hist\00F3rico de Processamento')
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(1972767190913946595)
,p_name=>unistr('Hist\00F3rico de Processamento')
,p_max_row_count_message=>unistr('A contagem m\00E1xima de linhas deste relat\00F3rio \00E9 #MAX_ROW_COUNT# linhas. Aplique um filtro para reduzir o n\00FAmero de registros em sua consulta.')
,p_no_data_found_message=>unistr('Dados n\00E3o encontrados.')
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'JONAS.SPINDLER@MJ.GOV.BR'
,p_internal_uid=>972822153918431792
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1972767867143946597)
,p_db_column_name=>'NU_RELATORIO'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Nu Relatorio'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1968030104887704236)
,p_db_column_name=>'NO_CURSO'
,p_display_order=>11
,p_column_identifier=>'J'
,p_column_label=>'No Curso'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1972770706298946600)
,p_db_column_name=>'DS_TEXTO_RELATORIO'
,p_display_order=>21
,p_column_identifier=>'H'
,p_column_label=>'Ds Texto Relatorio'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1972768243376946598)
,p_db_column_name=>'NO_OPERADOR'
,p_display_order=>31
,p_column_identifier=>'B'
,p_column_label=>'No Operador'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1972768637152946598)
,p_db_column_name=>'DH_GERACAO'
,p_display_order=>41
,p_column_identifier=>'C'
,p_column_label=>'Dh Geracao'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1972769474443946599)
,p_db_column_name=>'QTD_APROVADOS'
,p_display_order=>51
,p_column_identifier=>'E'
,p_column_label=>'Qtd Aprovados'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1972769921170946599)
,p_db_column_name=>'QTD_BLOQUEADOS'
,p_display_order=>61
,p_column_identifier=>'F'
,p_column_label=>'Qtd Bloqueados'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1972770262703946600)
,p_db_column_name=>'QTD_TRANSMITIDOS'
,p_display_order=>71
,p_column_identifier=>'G'
,p_column_label=>'Qtd Transmitidos'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1968029972902704235)
,p_db_column_name=>'CO_LOTE_ID'
,p_display_order=>91
,p_column_identifier=>'I'
,p_column_label=>'Co Lote Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(1972771054567947067)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'9728261'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'NU_RELATORIO:NO_OPERADOR:DH_GERACAO:QTD_APROVADOS:QTD_BLOQUEADOS:QTD_TRANSMITIDOS:DS_TEXTO_RELATORIO'
);
end;
/
prompt --application/pages/page_09999
begin
wwv_flow_imp_page.create_page(
 p_id=>9999
,p_name=>unistr('P\00E1gina de Log-in')
,p_alias=>'LOGIN'
,p_step_title=>'RNCH - Log-In'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>2101157952850466385
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'12'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1966550504263857033)
,p_plug_name=>'RNCH'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2674157997338192145
,p_plug_display_sequence=>10
,p_region_image=>'#APP_FILES#icons/app-icon-512.png'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1966552630461857037)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(1966550504263857033)
,p_button_name=>'LOGIN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Acessar'
,p_button_position=>'NEXT'
,p_button_alignment=>'LEFT'
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1966551035121857036)
,p_name=>'P9999_USERNAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(1966550504263857033)
,p_prompt=>unistr('Nome do Usu\00E1rio')
,p_placeholder=>unistr('Nome do Usu\00E1rio')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_cMaxlength=>100
,p_tag_attributes=>'autocomplete="username"'
,p_label_alignment=>'RIGHT'
,p_field_template=>2040785906935475274
,p_item_icon_css_classes=>'fa-user'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1966551371521857036)
,p_name=>'P9999_PASSWORD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(1966550504263857033)
,p_prompt=>'Senha'
,p_placeholder=>'Senha'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>40
,p_cMaxlength=>100
,p_tag_attributes=>'autocomplete="current-password"'
,p_label_alignment=>'RIGHT'
,p_field_template=>2040785906935475274
,p_item_icon_css_classes=>'fa-key'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'submit_when_enter_pressed', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1966551817711857037)
,p_name=>'P9999_REMEMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(1966550504263857033)
,p_prompt=>unistr('Lembrar nome do usu\00E1rio')
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_label_alignment=>'RIGHT'
,p_display_when=>'apex_authentication.persistent_cookies_enabled and not apex_authentication.persistent_auth_enabled'
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>2040785906935475274
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'checked_value', '',
  'unchecked_value', '',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1966552219191857037)
,p_name=>'P9999_PERSISTENT_AUTH'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(1966550504263857033)
,p_prompt=>'Lembrar'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_label_alignment=>'RIGHT'
,p_display_when=>'apex_authentication.persistent_auth_enabled'
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>2040785906935475274
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'checked_value', '',
  'unchecked_value', '',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(1966554752515857039)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>unistr('Definir Cookie de Nome do Usu\00E1rio')
,p_attribute_01=>'PLSQL_PACKAGE'
,p_attribute_03=>'APEX_AUTHENTICATION'
,p_attribute_04=>'SEND_LOGIN_USERNAME_COOKIE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>966609715520342236
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(1966555243506857039)
,p_page_process_id=>wwv_flow_imp.id(1966554752515857039)
,p_page_id=>9999
,p_name=>'p_username'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>1
,p_value_type=>'EXPRESSION'
,p_value_language=>'PLSQL'
,p_value=>'lower( :P9999_USERNAME )'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(1966555780451857039)
,p_page_process_id=>wwv_flow_imp.id(1966554752515857039)
,p_page_id=>9999
,p_name=>'p_consent'
,p_direction=>'IN'
,p_data_type=>'BOOLEAN'
,p_has_default=>false
,p_display_sequence=>2
,p_value_type=>'ITEM'
,p_value=>'P9999_REMEMBER'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(1966552903320857037)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Login'
,p_attribute_01=>'PLSQL_PACKAGE'
,p_attribute_03=>'APEX_AUTHENTICATION'
,p_attribute_04=>'LOGIN'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>966607866325342234
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(1966553397214857038)
,p_page_process_id=>wwv_flow_imp.id(1966552903320857037)
,p_page_id=>9999
,p_name=>'p_username'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>1
,p_value_type=>'ITEM'
,p_value=>'P9999_USERNAME'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(1966553900685857038)
,p_page_process_id=>wwv_flow_imp.id(1966552903320857037)
,p_page_id=>9999
,p_name=>'p_password'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>2
,p_value_type=>'ITEM'
,p_value=>'P9999_PASSWORD'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(1966554340253857038)
,p_page_process_id=>wwv_flow_imp.id(1966552903320857037)
,p_page_id=>9999
,p_name=>'p_set_persistent_auth'
,p_direction=>'IN'
,p_data_type=>'BOOLEAN'
,p_has_default=>true
,p_display_sequence=>3
,p_value_type=>'ITEM'
,p_value=>'P9999_PERSISTENT_AUTH'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(1966556681941857040)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>unistr('Limpar Cache de P\00E1gina(s)')
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>966611644946342237
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(1966556271102857039)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>unistr('Obter Cookie de Nome do Usu\00E1rio')
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P9999_USERNAME := apex_authentication.get_login_username_cookie;',
':P9999_REMEMBER := case when :P9999_USERNAME is not null then ''Y'' end;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>966611234107342236
);
end;
/
prompt --application/pages/page_10000
begin
wwv_flow_imp_page.create_page(
 p_id=>10000
,p_name=>unistr('Administra\00E7\00E3o')
,p_alias=>unistr('ADMINISTRA\00C7\00C3O')
,p_step_title=>unistr('Administra\00E7\00E3o')
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(1966549865515857031)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(1966548326246857028)
,p_protection_level=>'C'
,p_deep_linking=>'N'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>A p\00E1gina de administra\00E7\00E3o permite que os propriet\00E1rios do aplicativo (Administradores) configurem o aplicativo e mantenham os dados comuns usados pelo aplicativo.'),
unistr('Selecionando uma das defini\00E7\00F5es dispon\00EDveis, os administradores podem alterar muito a forma pela qual o aplicativo \00E9 exibido e/ou as funcionalidades dispon\00EDveis para os usu\00E1rios finais.</p>'),
unistr('<p>O acesso a esta p\00E1gina deve ser limitado somente aos Administradores.</p>')))
,p_page_component_map=>'25'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1966734347397857386)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(1966541403276857012)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1966741012134857390)
,p_plug_name=>'Coluna 1'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>3371237801798025892
,p_plug_display_sequence=>10
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1966741360024857391)
,p_plug_name=>unistr('Configura\00E7\00E3o')
,p_parent_plug_id=>wwv_flow_imp.id(1966741012134857390)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:u-colors'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>40
,p_list_id=>wwv_flow_imp.id(1966735105275857387)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2067994871570597190
,p_plug_query_num_rows=>15
,p_required_patch=>wwv_flow_imp.id(1966545961323857026)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1966741800667857391)
,p_plug_name=>unistr('Interface do Usu\00E1rio')
,p_parent_plug_id=>wwv_flow_imp.id(1966741012134857390)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:u-colors'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>50
,p_list_id=>wwv_flow_imp.id(1966735742782857387)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2067994871570597190
,p_plug_query_num_rows=>15
,p_required_patch=>wwv_flow_imp.id(1966546373383857026)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1966742222589857391)
,p_plug_name=>unistr('Relat\00F3rios de Atividades')
,p_parent_plug_id=>wwv_flow_imp.id(1966741012134857390)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:u-colors'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>60
,p_list_id=>wwv_flow_imp.id(1966736457159857388)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2067994871570597190
,p_plug_query_num_rows=>15
,p_required_patch=>wwv_flow_imp.id(1966545641652857026)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1966742568641857392)
,p_plug_name=>'Coluna 2'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>3371237801798025892
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1966743006921857392)
,p_plug_name=>'Controle de Acesso'
,p_parent_plug_id=>wwv_flow_imp.id(1966742568641857392)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>70
,p_plug_query_num_rows=>15
,p_required_patch=>wwv_flow_imp.id(1966545603817857026)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1966743752586857393)
,p_plug_name=>unistr('Informa\00E7\00F5es sobre ACL')
,p_parent_plug_id=>wwv_flow_imp.id(1966743006921857392)
,p_region_css_classes=>'margin-sm'
,p_region_template_options=>'#DEFAULT#:t-Alert--colorBG:t-Alert--horizontal:t-Alert--noIcon:t-Alert--warning:t-Alert--accessibleHeading'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2040683448887306517
,p_plug_display_sequence=>10
,p_function_body_language=>'PLSQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_acl_scope varchar2(45);',
'begin',
'    l_acl_scope := apex_app_setting.get_value( p_name => ''ACCESS_CONTROL_SCOPE'' );',
'',
'    if l_acl_scope = ''ALL_USERS'' then',
'        return apex_lang.message(''APEX.FEATURE.ACL.INFO.ALL_USERS'');',
'    elsif l_acl_scope = ''ACL_ONLY'' then',
'        return apex_lang.message(''APEX.FEATURE.ACL.INFO.ACL_ONLY'');',
'    else',
'        return apex_lang.message(''APEX.FEATURE.ACL.INFO.ACL_VALUE_INVALID'', l_acl_scope);',
'    end if;',
'end;'))
,p_plug_source_type=>'NATIVE_DYNAMIC_CONTENT'
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(1966744148237857393)
,p_name=>unistr('Relat\00F3rio de Contagens do Usu\00E1rio')
,p_parent_plug_id=>wwv_flow_imp.id(1966743006921857392)
,p_template=>4072358936313175081
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--stacked:t-Region--scrollBody:t-Region--noPadding'
,p_component_template_options=>'#DEFAULT#:t-AVPList--rightAligned'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select r.role_name, (select count(*) from apex_appl_acl_user_roles ur where r.role_id = ur.role_id) user_count, r.role_id',
'from apex_appl_acl_roles r',
'where r.application_id = :APP_ID',
'group by r.role_name, r.role_id',
'order by 2 desc, 1'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2100515124465797522
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>unistr('dados n\00E3o encontrados')
,p_query_row_count_max=>500
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1966744901440857394)
,p_query_column_id=>1
,p_column_alias=>'ROLE_NAME'
,p_column_display_sequence=>1
,p_column_heading=>'Role Name'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1966745306820857394)
,p_query_column_id=>2
,p_column_alias=>'USER_COUNT'
,p_column_display_sequence=>2
,p_column_heading=>'User Count'
,p_column_format=>'999G999G999G999G999G999G990'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1966745692470857395)
,p_query_column_id=>3
,p_column_alias=>'ROLE_ID'
,p_column_display_sequence=>3
,p_column_heading=>'Role Id'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1966748793526857438)
,p_plug_name=>unistr('A\00E7\00F5es de Controle de Acesso')
,p_parent_plug_id=>wwv_flow_imp.id(1966743006921857392)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:u-colors'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>30
,p_list_id=>wwv_flow_imp.id(1966739191999857389)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2067994871570597190
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1966749211373857438)
,p_plug_name=>'Feedback'
,p_parent_plug_id=>wwv_flow_imp.id(1966742568641857392)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>80
,p_plug_query_num_rows=>15
,p_required_patch=>wwv_flow_imp.id(1966545788512857026)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(1966749593555857438)
,p_name=>unistr('Relat\00F3rio')
,p_parent_plug_id=>wwv_flow_imp.id(1966749211373857438)
,p_template=>4072358936313175081
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--stacked:t-Region--scrollBody:t-Region--noPadding'
,p_component_template_options=>'#DEFAULT#:t-AVPList--rightAligned'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select l.display_value feedback_status, ',
'(select count(*) from apex_team_feedback f where f.application_id = :APP_ID and f.feedback_status = l.return_value) feedback_count ',
'from apex_application_lov_entries l',
'where l.application_id = :APP_ID',
'and l.list_of_values_name = ''FEEDBACK_STATUS''',
'order by 2 desc, 1'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2100515124465797522
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>unistr('dados n\00E3o encontrados')
,p_query_row_count_max=>500
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1966750245304857439)
,p_query_column_id=>1
,p_column_alias=>'FEEDBACK_STATUS'
,p_column_display_sequence=>1
,p_column_heading=>'Feedback Status'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1966750644062857440)
,p_query_column_id=>2
,p_column_alias=>'FEEDBACK_COUNT'
,p_column_display_sequence=>2
,p_column_heading=>'Feedback Count'
,p_column_format=>'999G999G999G999G999G999G990'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1966752510857857480)
,p_plug_name=>'Feedback'
,p_parent_plug_id=>wwv_flow_imp.id(1966749211373857438)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:u-colors'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>20
,p_list_id=>wwv_flow_imp.id(1966740324381857390)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2067994871570597190
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1966743351652857392)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(1966743006921857392)
,p_button_name=>'ADD_USER'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>unistr('Adicionar Usu\00E1rio')
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:10042:&APP_SESSION.::&DEBUG.:RP,10042::'
,p_icon_css_classes=>'fa-user-plus'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(1966747880080857437)
,p_name=>unistr('Atualizar Relat\00F3rio')
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(1966743351652857392)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1966748368664857437)
,p_event_id=>wwv_flow_imp.id(1966747880080857437)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(1966744148237857393)
);
end;
/
prompt --application/pages/page_10010
begin
wwv_flow_imp_page.create_page(
 p_id=>10010
,p_name=>unistr('Op\00E7\00F5es de Configura\00E7\00E3o')
,p_alias=>unistr('OP\00C7\00D5ES-DE-CONFIGURA\00C7\00C3O')
,p_page_mode=>'MODAL'
,p_step_title=>unistr('Op\00E7\00F5es de Configura\00E7\00E3o')
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(1966549865515857031)
,p_step_template=>2100407606326202693
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(1966548326246857028)
,p_required_patch=>wwv_flow_imp.id(1966545961323857026)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>As defini\00E7\00F5es da configura\00E7\00E3o permitem que voc\00EA torne a funcionalidade espec\00EDfica dispon\00EDvel (ativada) ou indispon\00EDvel (desativada) para os usu\00E1rios finais.</p>'),
unistr('<p>Se uma fun\00E7\00E3o espec\00EDfica n\00E3o estiver 100% pronta ou precisar ser removida temporariamente, clique em <strong>Desativada</strong>.'),
unistr('Depois que ela ficar dispon\00EDvel, basta clicar em <strong>Ativada</strong>.</p>'),
unistr('<p><em><strong>Observa\00E7\00F5es:</strong> As altera\00E7\00F5es feitas aqui n\00E3o ser\00E3o refletidas para os usu\00E1rios individuais que no momento executam o aplicativo. Depois que o usu\00E1rio final sair do sistema e entrar novamente, as defini\00E7\00F5es da funcionalidade revi')
||unistr('sadas ser\00E3o chamadas.</em></p>')))
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1966558487056857046)
,p_plug_name=>unistr('Bot\00F5es')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1966558691449857046)
,p_plug_name=>unistr('Op\00E7\00F5es de Configura\00E7\00E3o')
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'    build_option_id     ID, ',
'    build_option_name   application_option,',
'    apex_item.hidden(1, build_option_id) ||',
'    apex_item.hidden(2, build_option_status) ||',
'    apex_item.switch ( ',
'         p_idx        => 3,',
'         p_value      => build_option_status,',
'         p_on_value   => ''Include'',',
'         p_on_label   => m.enabled,',
'         p_off_value  => ''Exclude'',',
'         p_off_label  => m.disabled,',
'         p_item_id    => ''BO_OPT_'' || rownum,',
'         p_item_label => ( case when build_option_status = ''Include'' then',
'                               apex_lang.message( ''APEX.FEATURE.CONFIG.IS_ENABLED'', apex_escape.html(build_option_name) )',
'                           when build_option_status = ''Exclude'' then',
'                               apex_lang.message( ''APEX.FEATURE.CONFIG.IS_DISABLED'', apex_escape.html(build_option_name) )',
'                           end )) "STATUS",',
'    component_comment   description,',
'    last_updated_on        updated,',
'    lower(last_updated_by) updated_by,',
'    build_option_status current_status',
'  from apex_application_build_options,',
'  (select apex_lang.message(''APEX.FEATURE.CONFIG.ENABLED'') enabled, apex_lang.message(''APEX.FEATURE.CONFIG.DISABLED'') disabled from dual) m',
' where application_id = :APP_ID ',
' and (feature_identifier not in ( ''APPLICATION_ACCESS_CONTROL'',''APPLICATION_CONFIGURATION'') or feature_identifier is null)'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>unistr('Op\00E7\00F5es de Configura\00E7\00E3o')
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(1966559277087857047)
,p_name=>unistr('Op\00E7\00F5es de Configura\00E7\00E3o')
,p_max_row_count_message=>unistr('A contagem m\00E1xima de linhas deste relat\00F3rio \00E9 #MAX_ROW_COUNT# linhas. Aplique um filtro para reduzir o n\00FAmero de registros em sua consulta.')
,p_no_data_found_message=>unistr('Dados n\00E3o encontrados.')
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'JONAS.SPINDLER@MJ.GOV.BR'
,p_internal_uid=>966614240092342244
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1966559898936857049)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1966560294776857050)
,p_db_column_name=>'APPLICATION_OPTION'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Recurso'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1966560702158857050)
,p_db_column_name=>'STATUS'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Status'
,p_allow_filtering=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1966561049737857050)
,p_db_column_name=>'DESCRIPTION'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>unistr('Descri\00E7\00E3o')
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1966561454409857051)
,p_db_column_name=>'UPDATED'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Atualizado'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1966561841696857051)
,p_db_column_name=>'UPDATED_BY'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Atualizado por'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1966562262901857051)
,p_db_column_name=>'CURRENT_STATUS'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Status Atual'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(1966565077717857055)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'9666201'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'APPLICATION_OPTION:STATUS:DESCRIPTION:UPDATED:UPDATED_BY'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1966566705118857057)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(1966558487056857046)
,p_button_name=>'APPLY_CHANGES'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('Aplicar Altera\00E7\00F5es')
,p_button_position=>'NEXT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1966566027583857056)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(1966558691449857046)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Redefinir'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&APP_SESSION.::&DEBUG.:&APP_PAGE_ID.,RR::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(1966567525715857058)
,p_branch_name=>unistr('Ramificar para P\00E1gina Admin')
,p_branch_action=>'f?p=&APP_ID.:10000:&APP_SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(1966567119747857057)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Atualizar'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'for i in 1..apex_application.g_f01.count loop',
'    for c1 in ( select application_id, build_option_name, build_option_status',
'                from apex_application_build_options',
'                where apex_application.g_f01(i) = build_option_id',
'                   and application_Id = :APP_ID) loop',
'        if c1.build_option_status != apex_application.g_f03(i) then',
'            apex_util.set_build_option_status(  p_application_id => :APP_ID,',
'                                                p_id => apex_application.g_f01(i),',
'                                                p_build_status => upper(apex_application.g_f03(i)) );',
'        end if;',
'    end loop;',
'end loop;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>unistr('Op\00E7\00F5es de Configura\00E7\00E3o atualizadas. ')
,p_internal_uid=>966622082752342254
);
end;
/
prompt --application/pages/page_10020
begin
wwv_flow_imp_page.create_page(
 p_id=>10020
,p_name=>unistr('Apar\00EAncia do Aplicativo')
,p_alias=>unistr('APAR\00CANCIA-DO-APLICATIVO')
,p_page_mode=>'MODAL'
,p_step_title=>unistr('Apar\00EAncia do Aplicativo')
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(1966549865515857031)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(1966548326246857028)
,p_required_patch=>wwv_flow_imp.id(1966546373383857026)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Selecione o esquema de cor padr\00E3o usado para exibir o aplicativo.</p>'),
unistr('<p>Se a op\00E7\00E3o <strong>Permitir Que os Usu\00E1rios Finais escolham o Estilo do Tema</strong> estiver marcada, ent\00E3o cada usu\00E1rio final pode selecionar os estilos de tema dispon\00EDveis, clicando no link <em>Personalizar</em> no canto inferior esquerdo da Ho')
||'me page.</p>'))
,p_page_component_map=>'16'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1966567820401857058)
,p_plug_name=>unistr('Bot\00F5es')
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1966567916823857058)
,p_plug_name=>unistr('Configurar Apar\00EAncia')
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>20
,p_plug_item_display_point=>'BELOW'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1966570324937857061)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(1966567820401857058)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('Aplicar Altera\00E7\00F5es')
,p_button_position=>'NEXT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1966568919572857060)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(1966567820401857058)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancelar'
,p_button_position=>'PREVIOUS'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(1966570664932857061)
,p_branch_name=>unistr('Ramificar para P\00E1gina Admin')
,p_branch_action=>'f?p=&APP_ID.:10000:&APP_SESSION.::&DEBUG.:RP::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1966571031671857061)
,p_name=>'P10020_DESKTOP_THEME_STYLE_ID'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(1966567916823857058)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Estilo do Tema do Desktop'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select s.theme_style_id',
'from apex_application_theme_styles s,',
'    apex_application_themes t',
'where s.application_id = t.application_id',
'    and s.theme_number = t.theme_number',
'    and s.application_id = :app_id',
'    and s.is_current = ''Yes'''))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'DESKTOP THEME STYLES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select s.name d,',
'       s.theme_style_id r',
'  from apex_application_theme_styles s,',
'       apex_application_themes t',
' where s.application_id = :app_id',
'   and t.application_id = s.application_id',
'   and t.theme_number   = s.theme_number',
'   and t.is_current     = ''Yes''',
' order by 1'))
,p_cHeight=>1
,p_grid_label_column_span=>3
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'  from apex_application_theme_styles s,',
'       apex_application_themes t',
' where s.application_id = t.application_id',
'   and s.theme_number   = t.theme_number',
'   and s.application_id = :app_id'))
,p_display_when_type=>'EXISTS'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_restricted_characters=>'WEB_SAFE'
,p_inline_help_text=>unistr('O Estilo do Tema padr\00E3o \00E9 aplicado a todos os usu\00E1rios.')
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'Y',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1966571711231857063)
,p_name=>'P10020_END_USER_STYLE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(1966567916823857058)
,p_use_cache_before_default=>'NO'
,p_prompt=>unistr('Prefer\00EAncia de Tema do Usu\00E1rio Final')
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.theme_style_by_user_pref',
'  from apex_applications a',
' where a.application_id  = :app_id'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'USER_THEME_PREFERENCE'
,p_lov=>'.'||wwv_flow_imp.id(1966571795061857063)||'.'
,p_grid_label_column_span=>0
,p_field_template=>2040785906935475274
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_inline_help_text=>unistr('Se essa op\00E7\00E3o for marcada, os usu\00E1rios finais poder\00E3o escolher seu pr\00F3prio Estilo do Tema usando o link Personalizar.')
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '1')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(1966568943187857060)
,p_name=>unistr('Cancelar Caixa de Di\00E1logo')
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(1966568919572857060)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1966569639442857060)
,p_event_id=>wwv_flow_imp.id(1966568943187857060)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(1966572927760857064)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Salvar Estilo do Tema'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P10020_DESKTOP_THEME_STYLE_ID is not null then',
'    for l_theme in (select theme_number',
'                      from apex_application_themes',
'                     where application_id = :app_id',
'                       and is_current     = ''Yes'')',
'    loop',
'        apex_util.set_current_theme_style (',
'            p_theme_number   => l_theme.theme_number,',
'            p_theme_style_id => :P10020_DESKTOP_THEME_STYLE_ID',
'            );',
'    end loop;',
'end if;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>unistr('Defini\00E7\00F5es de Apar\00EAncia do Aplicativo Salvas.')
,p_internal_uid=>966627890765342261
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(1966573253332857064)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>unistr('Salvar Prefer\00EAncia de Estilo do Usu\00E1rio Final')
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_enabled boolean := case when :P10020_END_USER_STYLE = ''Yes'' then true else false end;',
'begin',
'    for l_theme in ( select theme_number',
'                       from apex_applications',
'                      where application_id  = :APP_ID )',
'    loop',
'        if l_enabled then',
'            apex_theme.enable_user_style (',
'                p_application_id => :APP_ID,',
'                p_theme_number   => l_theme.theme_number );',
'        else',
'            apex_theme.disable_user_style (',
'                p_application_id => :APP_ID,',
'                p_theme_number   => l_theme.theme_number );',
'            apex_theme.clear_all_users_style(:APP_ID);',
'        end if;',
'    end loop;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>unistr('Defini\00E7\00F5es de Apar\00EAncia do Aplicativo Salvas.')
,p_internal_uid=>966628216337342261
);
end;
/
prompt --application/pages/page_10030
begin
wwv_flow_imp_page.create_page(
 p_id=>10030
,p_name=>'Painel de Controle de Atividades'
,p_alias=>'PAINEL-DE-CONTROLE-DE-ATIVIDADES'
,p_page_mode=>'MODAL'
,p_step_title=>'Painel de Controle de Atividades'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(1966549865515857031)
,p_step_template=>2100407606326202693
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch'
,p_required_role=>wwv_flow_imp.id(1966548326246857028)
,p_required_patch=>wwv_flow_imp.id(1966545641652857026)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'03'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1966573632318857064)
,p_plug_name=>unistr('Eventos da P\00E1gina por Hora')
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:i-h320:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(1966573655975857064)
,p_region_id=>wwv_flow_imp.id(1966573632318857064)
,p_chart_type=>'bar'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>false
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'off'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_time_axis_type=>'enabled'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(1966575828180857066)
,p_chart_id=>wwv_flow_imp.id(1966573655975857064)
,p_seq=>10
,p_name=>unistr('S\00E9rie 1')
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'with nw as (',
'    -- APEX_ACTIVITY_LOG uses dates; convert system time to local time zone.',
'    select from_tz( cast( sysdate as timestamp ), to_char( systimestamp, ''TZR'' ) ) at local as tm from dual',
'),',
'window as (',
'    select',
'         trunc(nw.tm - ((level-1)/24),''HH'') start_tm,',
'         trunc(nw.tm - ((level-2)/24),''HH'') end_tm,',
'         trunc(sysdate-((level-1)/24),''HH'') log_start_tm,',
'         trunc(sysdate-((level-2)/24),''HH'') log_end_tm',
'    from nw',
'    connect by level <= round( 24 * ( 1/24/60/60 * nvl(:P10030_TIMEFRAME,1) ) )',
')',
'select w.start_tm log_time,',
'       ( select count(*)',
'           from apex_activity_log l',
'          where l.flow_id = :app_id',
'            and l.time_stamp between w.log_start_tm and w.log_end_tm ) as value',
'from window w',
'order by 1'))
,p_max_row_count=>350
,p_ajax_items_to_submit=>'P10030_TIMEFRAME'
,p_items_value_column_name=>'VALUE'
,p_items_label_column_name=>'LOG_TIME'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(1966576994400857067)
,p_chart_id=>wwv_flow_imp.id(1966573655975857064)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_type=>'datetime-short'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'on'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(1966576376538857066)
,p_chart_id=>wwv_flow_imp.id(1966573655975857064)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'auto'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1966573746719857064)
,p_plug_name=>unistr('P\00E1ginas Mais Ativas')
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:i-h320:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(1966573888769857064)
,p_region_id=>wwv_flow_imp.id(1966573746719857064)
,p_chart_type=>'bar'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'horizontal'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>false
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'off'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(1966580749820857070)
,p_chart_id=>wwv_flow_imp.id(1966573888769857064)
,p_seq=>10
,p_name=>unistr('S\00E9rie 1')
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select x.step_id||''. ''||(select page_name from apex_application_pages p where p.application_id = :app_id and page_id = x.step_id) label, ',
'        value',
'from ( select step_id,',
'              count(*) as value',
'         from apex_activity_log',
'        where flow_id = :app_id',
'          and time_stamp >= sysdate - ( 1/24/60/60 * :P10030_TIMEFRAME )',
'          and step_id is not null',
'        group by step_id',
'        order by 2 desc',
'     ) x'))
,p_max_row_count=>10
,p_ajax_items_to_submit=>'P10030_TIMEFRAME'
,p_items_value_column_name=>'VALUE'
,p_items_label_column_name=>'LABEL'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(1966581368311857070)
,p_chart_id=>wwv_flow_imp.id(1966573888769857064)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'auto'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(1966581943285857071)
,p_chart_id=>wwv_flow_imp.id(1966573888769857064)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'auto'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1966573983594857064)
,p_plug_name=>unistr('Principais Usu\00E1rios')
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:i-h320:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(1966574048158857064)
,p_region_id=>wwv_flow_imp.id(1966573983594857064)
,p_chart_type=>'bar'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'horizontal'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>false
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'off'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(1966578258187857068)
,p_chart_id=>wwv_flow_imp.id(1966574048158857064)
,p_seq=>10
,p_name=>unistr('S\00E9rie 1')
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select nvl( userid_lc, apex_lang.message(''APEX.FEATURE.TOP_USERS.USERNAME.NOT_IDENTIFIED'') ) as label,',
'       count(*) as value',
'from apex_activity_log',
'where flow_id = :app_id',
'and time_stamp >= sysdate - ( 1/24/60/60 * :P10030_TIMEFRAME )',
'group by nvl( userid_lc, apex_lang.message(''APEX.FEATURE.TOP_USERS.USERNAME.NOT_IDENTIFIED'') )',
'order by 2 desc'))
,p_max_row_count=>10
,p_ajax_items_to_submit=>'P10030_TIMEFRAME'
,p_items_value_column_name=>'VALUE'
,p_items_label_column_name=>'LABEL'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(1966578910964857069)
,p_chart_id=>wwv_flow_imp.id(1966574048158857064)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'auto'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(1966579442055857069)
,p_chart_id=>wwv_flow_imp.id(1966574048158857064)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'auto'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(1966574230357857064)
,p_name=>'Erros Recentes'
,p_template=>4072358936313175081
,p_display_sequence=>40
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:i-h240:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight:t-Report--inline'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select sqlerrm    label,',
'       time_stamp value',
'  from apex_activity_log',
' where flow_id    = :app_id',
'   and time_stamp >= sysdate - ( 1/24/60/60 * :P10030_TIMEFRAME )',
'   and sqlerrm    is not null',
' order by 2 desc, 1'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P10030_TIMEFRAME'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>20
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>unistr('Dados n\00E3o encontrados.')
,p_query_row_count_max=>500
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1966583107234857074)
,p_query_column_id=>1
,p_column_alias=>'LABEL'
,p_column_display_sequence=>1
,p_column_heading=>'Label'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1966583531117857074)
,p_query_column_id=>2
,p_column_alias=>'VALUE'
,p_column_display_sequence=>2
,p_column_heading=>'Valor'
,p_column_format=>'SINCE'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(1966574240571857064)
,p_name=>'Atividade Mais Recente'
,p_template=>4072358936313175081
,p_display_sequence=>50
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:i-h240:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight:t-Report--inline'
,p_new_grid_row=>false
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select userid_lc       as username,',
'       max(time_stamp) as last_activity',
'  from apex_activity_log',
' where flow_id     = :app_id',
'   and time_stamp >= sysdate - ( 1/24/60/60 * :P10030_TIMEFRAME )',
'   and userid_lc  is not null',
' group by userid_lc',
' order by 2 desc'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P10030_TIMEFRAME'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>20
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'Nenhuma atividade encontrada'
,p_query_row_count_max=>500
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1966586137292857155)
,p_query_column_id=>1
,p_column_alias=>'USERNAME'
,p_column_display_sequence=>1
,p_column_heading=>unistr('Nome do Usu\00E1rio')
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1966586614168857155)
,p_query_column_id=>2
,p_column_alias=>'LAST_ACTIVITY'
,p_column_display_sequence=>2
,p_column_heading=>unistr('\00DAltima Atividade')
,p_column_format=>'SINCE'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1966574403501857064)
,p_plug_name=>'Filtros'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--slimPadding:t-ButtonRegion--noUI:t-Form--large'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1966588856033857196)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(1966573632318857064)
,p_button_name=>'VIEW_ACTIVITY_BY_USER'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Detalhes da View'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:10031:&APP_SESSION.::&DEBUG.:RP,10031::'
,p_icon_css_classes=>'fa-angle-right'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1966589293542857196)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(1966573746719857064)
,p_button_name=>'VIEW_ACTIVITY_DETAILS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Detalhes da View'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:10034:&APP_SESSION.::&DEBUG.:RP,10034::'
,p_icon_css_classes=>'fa-angle-right'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1966589688390857196)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(1966573983594857064)
,p_button_name=>'VIEW_ACTIVITY_BY_USER'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Detalhes da View'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:10031:&APP_SESSION.::&DEBUG.:RP,10031::'
,p_icon_css_classes=>'fa-angle-right'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1966590059692857197)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(1966574230357857064)
,p_button_name=>'VIEW_RECENT_ERRORS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Detalhes da View'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:10032:&APP_SESSION.::&DEBUG.:RP,10032::'
,p_icon_css_classes=>'fa-angle-right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1966574496618857064)
,p_name=>'P10030_TIMEFRAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(1966574403501857064)
,p_prompt=>'Prazo'
,p_source=>'900'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'TIMEFRAME (4 WEEKS)'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select disp,',
'       val as seconds',
'  from table( apex_util.get_timeframe_lov_data )',
' order by insert_order'))
,p_cHeight=>1
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'Y',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(1966574625141857064)
,p_name=>'Alterar Filtros'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P10030_TIMEFRAME'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1966591723411857198)
,p_event_id=>wwv_flow_imp.id(1966574625141857064)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(1966573632318857064)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1966592198194857199)
,p_event_id=>wwv_flow_imp.id(1966574625141857064)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(1966573983594857064)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1966592640511857199)
,p_event_id=>wwv_flow_imp.id(1966574625141857064)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(1966573746719857064)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1966593178255857199)
,p_event_id=>wwv_flow_imp.id(1966574625141857064)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(1966574230357857064)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1966593736009857200)
,p_event_id=>wwv_flow_imp.id(1966574625141857064)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(1966574240571857064)
);
end;
/
prompt --application/pages/page_10031
begin
wwv_flow_imp_page.create_page(
 p_id=>10031
,p_name=>unistr('Principais Usu\00E1rios')
,p_alias=>unistr('PRINCIPAIS-USU\00C1RIOS')
,p_page_mode=>'MODAL'
,p_step_title=>unistr('Principais Usu\00E1rios')
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(1966549865515857031)
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.hour-graph { display: table; width: 100%; }',
'span.hour { display: table-cell; padding: 0; font-size: 11px; text-align: center; min-width: 32px; }',
'span.hour-label { opacity: 0.5; }',
'span.hour-value { display: block; }',
'span.hour { background-color: var(--ut-palette-success); color:  var(--ut-palette-success-contrast); }',
'span.hour.is-null { background-color: var(--ut-component-highlight-background-color); color: var(--ut-component-text-default-color); }',
'span.hour.is-over1k { background-color: var(--ut-palette-primary); color:  var(--ut-palette-primary-contrast); }'))
,p_step_template=>2100407606326202693
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(1966548326246857028)
,p_required_patch=>wwv_flow_imp.id(1966545641652857026)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Use este relat\00F3rio e gr\00E1fico para ver os usu\00E1rios com mais visualiza\00E7\00F5es de p\00E1gina no per\00EDodo especificado.</p>'),
unistr('<p>Selecione o per\00EDodo do relat\00F3rio (Padr\00E3o = 1 dia) e escolha entre os \00EDcones de relat\00F3rio e de gr\00E1fico na parte superior da p\00E1gina.</p>'),
unistr('<p>Para o relat\00F3rio interativo, use o campo de pesquisa ou selecione o cabe\00E7alho da coluna <strong>Usu\00E1rio</strong>, para selecionar um usu\00E1rio espec\00EDfico. \00C9 poss\00EDvel executar v\00E1rias fun\00E7\00F5es, clicando no bot\00E3o <strong>A\00E7\00F5es</strong>, tais como coluna')
||unistr('s exibidas/ocultas, linhas por p\00E1gina e assim por diante. Clique no bot\00E3o <strong>Redefinir</strong> para redefinir o relat\00F3rio interativo de volta \00E0s defini\00E7\00F5es padr\00E3o.</p>')))
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1966626614572857232)
,p_plug_name=>unistr('Principais Usu\00E1rios')
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select the_user,',
'    ''<div class="hour-graph">''||',
'        ''<span class="hour''|| case when h00 = 0 then '' is-null'' when h00 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 0</span> <span class="hour-value">''|| ',
'        case when h00 > 999 then to_char((h00/1000),''99999999D0'') ||''k'' else to_char(h00) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h01 = 0 then '' is-null'' when h01 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 1</span> <span class="hour-value">''|| ',
'        case when h01 > 999 then to_char((h01/1000),''99999999D0'') ||''k'' else to_char(h01) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h02 = 0 then '' is-null'' when h02 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 2</span> <span class="hour-value">''|| ',
'        case when h02 > 999 then to_char((h02/1000),''99999999D0'') ||''k'' else to_char(h02) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h03 = 0 then '' is-null'' when h03 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 3</span> <span class="hour-value">''|| ',
'        case when h03 > 999 then to_char((h03/1000),''99999999D0'') ||''k'' else to_char(h03) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h04 = 0 then '' is-null'' when h04 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 4</span> <span class="hour-value">''|| ',
'        case when h04 > 999 then to_char((h04/1000),''99999999D0'') ||''k'' else to_char(h04) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h05 = 0 then '' is-null'' when h05 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 5</span> <span class="hour-value">''|| ',
'        case when h05 > 999 then to_char((h05/1000),''99999999D0'') ||''k'' else to_char(h05) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h06 = 0 then '' is-null'' when h06 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 6</span> <span class="hour-value">''|| ',
'        case when h06 > 999 then to_char((h06/1000),''99999999D0'') ||''k'' else to_char(h06) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h07 = 0 then '' is-null'' when h07 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 7</span> <span class="hour-value">''|| ',
'        case when h07 > 999 then to_char((h07/1000),''99999999D0'') ||''k'' else to_char(h07) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h08 = 0 then '' is-null'' when h08 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 8</span> <span class="hour-value">''|| ',
'        case when h08 > 999 then to_char((h08/1000),''99999999D0'') ||''k'' else to_char(h08) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h09 = 0 then '' is-null'' when h09 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 9</span> <span class="hour-value">''|| ',
'        case when h09 > 999 then to_char((h09/1000),''99999999D0'') ||''k'' else to_char(h09) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h10 = 0 then '' is-null'' when h10 > 999 then '' is-over1k'' end ||''"><span class="hour-label">10</span> <span class="hour-value">''|| ',
'        case when h10 > 999 then to_char((h10/1000),''99999999D0'') ||''k'' else to_char(h10) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h11 = 0 then '' is-null'' when h11 > 999 then '' is-over1k'' end ||''"><span class="hour-label">11</span> <span class="hour-value">''|| ',
'        case when h11 > 999 then to_char((h11/1000),''99999999D0'') ||''k'' else to_char(h11) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h12 = 0 then '' is-null'' when h12 > 999 then '' is-over1k'' end ||''"><span class="hour-label">12</span> <span class="hour-value">''|| ',
'        case when h12 > 999 then to_char((h12/1000),''99999999D0'') ||''k'' else to_char(h12) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h13 = 0 then '' is-null'' when h13 > 999 then '' is-over1k'' end ||''"><span class="hour-label">13</span> <span class="hour-value">''|| ',
'        case when h13 > 999 then to_char((h13/1000),''99999999D0'') ||''k'' else to_char(h13) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h14 = 0 then '' is-null'' when h14 > 999 then '' is-over1k'' end ||''"><span class="hour-label">14</span> <span class="hour-value">''|| ',
'        case when h14 > 999 then to_char((h14/1000),''99999999D0'') ||''k'' else to_char(h14) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h15 = 0 then '' is-null'' when h15 > 999 then '' is-over1k'' end ||''"><span class="hour-label">15</span> <span class="hour-value">''|| ',
'        case when h15 > 999 then to_char((h15/1000),''99999999D0'') ||''k'' else to_char(h15) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h16 = 0 then '' is-null'' when h16 > 999 then '' is-over1k'' end ||''"><span class="hour-label">16</span> <span class="hour-value">''|| ',
'        case when h16 > 999 then to_char((h16/1000),''99999999D0'') ||''k'' else to_char(h16) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h17 = 0 then '' is-null'' when h17 > 999 then '' is-over1k'' end ||''"><span class="hour-label">17</span> <span class="hour-value">''|| ',
'        case when h17 > 999 then to_char((h17/1000),''99999999D0'') ||''k'' else to_char(h17) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h18 = 0 then '' is-null'' when h18 > 999 then '' is-over1k'' end ||''"><span class="hour-label">18</span> <span class="hour-value">''|| ',
'        case when h18 > 999 then to_char((h18/1000),''99999999D0'') ||''k'' else to_char(h18) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h19 = 0 then '' is-null'' when h19 > 999 then '' is-over1k'' end ||''"><span class="hour-label">19</span> <span class="hour-value">''|| ',
'        case when h19 > 999 then to_char((h19/1000),''99999999D0'') ||''k'' else to_char(h19) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h20 = 0 then '' is-null'' when h20 > 999 then '' is-over1k'' end ||''"><span class="hour-label">20</span> <span class="hour-value">''|| ',
'        case when h20 > 999 then to_char((h20/1000),''99999999D0'') ||''k'' else to_char(h20) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h21 = 0 then '' is-null'' when h21 > 999 then '' is-over1k'' end ||''"><span class="hour-label">21</span> <span class="hour-value">''|| ',
'        case when h21 > 999 then to_char((h21/1000),''99999999D0'') ||''k'' else to_char(h21) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h22 = 0 then '' is-null'' when h22 > 999 then '' is-over1k'' end ||''"><span class="hour-label">22</span> <span class="hour-value">''|| ',
'        case when h22 > 999 then to_char((h22/1000),''99999999D0'') ||''k'' else to_char(h22) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h23 = 0 then '' is-null'' when h23 > 999 then '' is-over1k'' end ||''"><span class="hour-label">23</span> <span class="hour-value">''|| ',
'        case when h23 > 999 then to_char((h23/1000),''99999999D0'') ||''k'' else to_char(h23) end ||''</span></span>''||',
'        ''</div>'' hours,',
'        page_events,',
'    median_elapsed,',
'    rows_fetched,',
'    ir_searches,',
'    errors,',
'    most_recent',
'    from (  ',
'    select userid_lc                    as the_user,',
'        count(*)                        as page_events,',
'        median(elap)                    as median_elapsed,',
'        sum(num_rows)                   as rows_fetched,',
'        sum(decode(ir_search,null,0,1)) as ir_searches,',
'        sum(decode(sqlerrm,null,0,1))   as errors,',
'        max(time_stamp)                 as most_recent,',
'        sum(decode(to_char(time_stamp,''HH24''),0,1,0)) h00,',
'        sum(decode(to_char(time_stamp,''HH24''),1,1,0)) h01,',
'        sum(decode(to_char(time_stamp,''HH24''),2,1,0)) h02,',
'        sum(decode(to_char(time_stamp,''HH24''),3,1,0)) h03,',
'        sum(decode(to_char(time_stamp,''HH24''),4,1,0)) h04,',
'        sum(decode(to_char(time_stamp,''HH24''),5,1,0)) h05,',
'        sum(decode(to_char(time_stamp,''HH24''),6,1,0)) h06,',
'        sum(decode(to_char(time_stamp,''HH24''),7,1,0)) h07,',
'        sum(decode(to_char(time_stamp,''HH24''),8,1,0)) h08,',
'        sum(decode(to_char(time_stamp,''HH24''),9,1,0)) h09,',
'        sum(decode(to_char(time_stamp,''HH24''),10,1,0)) h10,',
'        sum(decode(to_char(time_stamp,''HH24''),11,1,0)) h11,',
'        sum(decode(to_char(time_stamp,''HH24''),12,1,0)) h12,',
'        sum(decode(to_char(time_stamp,''HH24''),13,1,0)) h13,',
'        sum(decode(to_char(time_stamp,''HH24''),14,1,0)) h14,',
'        sum(decode(to_char(time_stamp,''HH24''),15,1,0)) h15,',
'        sum(decode(to_char(time_stamp,''HH24''),16,1,0)) h16,',
'        sum(decode(to_char(time_stamp,''HH24''),17,1,0)) h17,',
'        sum(decode(to_char(time_stamp,''HH24''),18,1,0)) h18,',
'        sum(decode(to_char(time_stamp,''HH24''),19,1,0)) h19,',
'        sum(decode(to_char(time_stamp,''HH24''),20,1,0)) h20,',
'        sum(decode(to_char(time_stamp,''HH24''),21,1,0)) h21,',
'        sum(decode(to_char(time_stamp,''HH24''),22,1,0)) h22,',
'        sum(decode(to_char(time_stamp,''HH24''),23,1,0)) h23',
'    from apex_activity_log l',
'    where flow_id = :APP_ID',
'        and time_stamp >= sysdate - ( 1/24/60/60 * :P10031_TIMEFRAME )',
'        and userid is not null',
'    group by userid_lc) x'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P10031_TIMEFRAME'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P10031_VIEW_AS'
,p_plug_display_when_cond2=>'REPORT'
,p_prn_page_header=>unistr('Principais Usu\00E1rios')
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(1966627649019857232)
,p_name=>unistr('Principais Usu\00E1rios')
,p_max_row_count_message=>unistr('A contagem m\00E1xima de linhas deste relat\00F3rio \00E9 #MAX_ROW_COUNT# linhas. Aplique um filtro para reduzir o n\00FAmero de registros em sua consulta.')
,p_no_data_found_message=>unistr('Dados n\00E3o encontrados.')
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'JONAS.SPINDLER@MJ.GOV.BR'
,p_internal_uid=>966682612024342429
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1966628387105857237)
,p_db_column_name=>'THE_USER'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>unistr('Usu\00E1rio')
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1966628752101857237)
,p_db_column_name=>'HOURS'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Atividade por hora'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1966629223948857238)
,p_db_column_name=>'PAGE_EVENTS'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>unistr('Eventos de P\00E1gina')
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1966629565265857239)
,p_db_column_name=>'MEDIAN_ELAPSED'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Mediano Decorrido'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990D0000'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1966630010019857240)
,p_db_column_name=>'ROWS_FETCHED'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>unistr('Linhas Extra\00EDdas')
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1966630430395857241)
,p_db_column_name=>'IR_SEARCHES'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Pesquisa de IR'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1966630813786857242)
,p_db_column_name=>'ERRORS'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Erros'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1966631182156857243)
,p_db_column_name=>'MOST_RECENT'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Most_Recent'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(1966634219432857251)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'9666892'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'THE_USER:HOURS:PAGE_EVENTS'
,p_sort_column_1=>'PAGE_EVENTS'
,p_sort_direction_1=>'DESC'
,p_sort_column_2=>'MOST_RECENT'
,p_sort_direction_2=>'DESC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1966626720372857232)
,p_plug_name=>unistr('Bot\00F5es')
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--slimPadding:t-ButtonRegion--noUI:t-Form--large'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1966626854630857232)
,p_plug_name=>unistr('Gr\00E1fico de Principais Usu\00E1rios')
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>30
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P10031_VIEW_AS'
,p_plug_display_when_cond2=>'CHART'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(1966626955880857232)
,p_region_id=>wwv_flow_imp.id(1966626854630857232)
,p_chart_type=>'donut'
,p_height=>'600'
,p_animation_on_display=>'none'
,p_animation_on_data_change=>'auto'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_value_format_type=>'decimal'
,p_value_decimal_places=>0
,p_value_format_scaling=>'auto'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'off'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_pie_other_threshold=>.02
,p_pie_selection_effect=>'highlight'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function( options ){ ',
'',
'    this.pieSliceLabel = function(dataContext) {',
'        var series_name,',
'            percent = Math.round(dataContext.value/dataContext.totalValue*100);',
'        ',
'        if ( dataContext.seriesData ) {',
'            series_name = dataContext.seriesData.name;',
'        } else {',
'            series_name = ''Other'';',
'        }',
'        return series_name + " " + percent + "% ( " + dataContext.value + " )";',
'    }',
'    ',
'    // Set chart initialization options ',
'    options.dataLabel = pieSliceLabel; ',
'    return options; ',
'}'))
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(1966637758261857257)
,p_chart_id=>wwv_flow_imp.id(1966626955880857232)
,p_seq=>10
,p_name=>unistr('S\00E9rie 1')
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select userid_lc as userid,',
'       count(*) as page_views',
'  from apex_activity_log',
' where flow_id     = :app_id',
'   and time_stamp >= sysdate - ( 1/24/60/60 * :P10031_TIMEFRAME )',
'   and userid     is not null',
' group by userid_lc',
' order by 2'))
,p_ajax_items_to_submit=>'P10031_TIMEFRAME'
,p_items_value_column_name=>'PAGE_VIEWS'
,p_items_label_column_name=>'USERID'
,p_items_label_rendered=>true
,p_items_label_position=>'outsideSlice'
,p_items_label_display_as=>'LABEL'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1966635069827857254)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(1966626614572857232)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Redefinir'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&APP_SESSION.::&DEBUG.:&APP_PAGE_ID.,RR::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1966627046662857232)
,p_name=>'P10031_VIEW_AS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(1966626720372857232)
,p_prompt=>'Exibir Como'
,p_source=>'REPORT'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'VIEW_AS_REPORT_CHART'
,p_lov=>'.'||wwv_flow_imp.id(1966638245693857257)||'.'
,p_field_template=>2040785906935475274
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--radioButtonGroup'
,p_lov_display_extra=>'NO'
,p_escape_on_http_output=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'Y',
  'hide_radio_buttons', 'N',
  'number_of_columns', '2',
  'page_action_on_selection', 'SUBMIT')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1966627238382857232)
,p_name=>'P10031_TIMEFRAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(1966626720372857232)
,p_prompt=>'Prazo'
,p_source=>'900'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'TIMEFRAME (4 WEEKS)'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select disp,',
'       val as seconds',
'  from table( apex_util.get_timeframe_lov_data )',
' order by insert_order'))
,p_cHeight=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'Y',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(1966626753240857232)
,p_name=>unistr('Atualizar Relat\00F3rio')
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P10031_TIMEFRAME'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1966636396646857256)
,p_event_id=>wwv_flow_imp.id(1966626753240857232)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(1966626614572857232)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1966639811623857259)
,p_event_id=>wwv_flow_imp.id(1966626753240857232)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(1966626614572857232)
);
end;
/
prompt --application/pages/page_10032
begin
wwv_flow_imp_page.create_page(
 p_id=>10032
,p_name=>'Log de Erros do Aplicativo'
,p_alias=>'LOG-DE-ERROS-DO-APLICATIVO'
,p_page_mode=>'MODAL'
,p_step_title=>'Log de Erros do Aplicativo'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(1966549865515857031)
,p_step_template=>2100407606326202693
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(1966548326246857028)
,p_required_patch=>wwv_flow_imp.id(1966545641652857026)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Esta p\00E1gina fornece um relat\00F3rio interativo de todos os erros inesperados registrados por este aplicativo.</p>'),
unistr('<p>Clique nos cabe\00E7alhos da coluna para classificar e filtrar os dados ou clique no bot\00E3o <strong>A\00E7\00F5es</strong> para personalizar a exibi\00E7\00E3o da coluna e muitas funcionalidades adicionais avan\00E7adas. Clique no bot\00E3o <strong>Redefinir</strong> para red')
||unistr('efinir o relat\00F3rio interativo de volta \00E0s defini\00E7\00F5es padr\00E3o.</p>')))
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1966619550133857224)
,p_plug_name=>'Log de Erros do Aplicativo'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select step_id,',
'       userid,',
'       time_stamp err_time,',
'       sqlerrm,',
'       sqlerrm_component_type,',
'       sqlerrm_component_name',
'  from apex_activity_log',
' where flow_id = :app_id',
'   and sqlerrm is not null'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Log de Erros do Aplicativo'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(1966620155267857225)
,p_name=>'Log de Erros do Aplicativo'
,p_max_row_count_message=>unistr('A contagem m\00E1xima de linhas deste relat\00F3rio \00E9 #MAX_ROW_COUNT# linhas. Aplique um filtro para reduzir o n\00FAmero de registros em sua consulta.')
,p_no_data_found_message=>unistr('Dados n\00E3o encontrados.')
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'JONAS.SPINDLER@MJ.GOV.BR'
,p_internal_uid=>966675118272342422
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1966620891420857226)
,p_db_column_name=>'STEP_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>unistr('P\00E1gina')
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1966621246708857226)
,p_db_column_name=>'USERID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>unistr('Usu\00E1rio')
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1966621672544857226)
,p_db_column_name=>'ERR_TIME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Err Time'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1966622128328857227)
,p_db_column_name=>'SQLERRM'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Erro'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1966622497211857227)
,p_db_column_name=>'SQLERRM_COMPONENT_TYPE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Contexto'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1966622910788857227)
,p_db_column_name=>'SQLERRM_COMPONENT_NAME'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Nome do Componente'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(1966625415336857230)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'9666804'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'STEP_ID:USERID:ERR_TIME:SQLERRM:SQLERRM_COMPONENT_TYPE:SQLERRM_COMPONENT_NAME:'
,p_sort_column_1=>'ERROR_TIME'
,p_sort_direction_1=>'DESC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1966626300963857231)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(1966619550133857224)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Redefinir'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&APP_SESSION.::&DEBUG.:&APP_PAGE_ID.,RR::'
,p_icon_css_classes=>'fa-undo-alt'
);
end;
/
prompt --application/pages/page_10033
begin
wwv_flow_imp_page.create_page(
 p_id=>10033
,p_name=>unistr('Desempenho da P\00E1gina')
,p_alias=>unistr('DESEMPENHO-DA-P\00C1GINA')
,p_page_mode=>'MODAL'
,p_step_title=>unistr('Desempenho da P\00E1gina')
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(1966549865515857031)
,p_step_template=>2100407606326202693
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(1966548326246857028)
,p_required_patch=>wwv_flow_imp.id(1966545641652857026)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Esta p\00E1gina fornece um relat\00F3rio interativo do desempenho e popularidade da p\00E1gina. O relat\00F3rio \00E9 classificado por <strong>Desempenho Ponderado</strong> que \00E9 calculado multiplicando-se o tempo M\00E9dio Decorrido e o n\00FAmero de Visualiza\00E7\00F5es de P\00E1gina')
||'.</p>',
unistr('<p>Selecione o per\00EDodo do relat\00F3rio (Padr\00E3o = 1 dia) na parte superior da p\00E1gina, conforme necess\00E1rio.<br>'),
unistr('Clique nos cabe\00E7alhos da coluna para classificar e filtrar os dados ou clique no bot\00E3o <strong>A\00E7\00F5es</strong> para personalizar a exibi\00E7\00E3o da coluna e muitas funcionalidades adicionais avan\00E7adas. Clique no bot\00E3o <strong>Redefinir</strong> para redefi')
||unistr('nir o relat\00F3rio interativo de volta \00E0s defini\00E7\00F5es padr\00E3o.</p>')))
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1966605517771857211)
,p_plug_name=>unistr('Desempenho da P\00E1gina')
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select step_id page,',
'    (   select page_name',
'        from apex_application_pages p',
'        where p.page_id = l.step_id',
'            and p.application_id = :app_id ) page_name,',
'    median(elap)                   median_elapsed,',
'    count(*) * median(elap)        weighted_performance,',
'    sum(decode(sqlerrm,null,0,1))  errors,',
'    count(distinct userid)         distinct_users,',
'    count(distinct session_id)     application_sessions,',
'    count(*)                       page_views,',
'    max(elap)                      max_elapsed,',
'    sum(nvl(num_rows,0))           total_rows,',
'    sum(decode(page_mode,''P'',1,0)) partial_page_views,',
'    sum(decode(page_mode,''D'',1,0)) full_page_views,',
'    min(elap)                      min_elapsed,',
'    avg(elap)                      avg_elapsed',
'from apex_activity_log l',
'where flow_id = :app_id',
'    and time_stamp >= sysdate - ( 1/24/60/60 * :P10033_TIMEFRAME )',
'    and userid is not null',
'group by step_id'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P10033_TIMEFRAME'
,p_prn_page_header=>unistr('Desempenho da P\00E1gina')
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(1966606074959857211)
,p_name=>unistr('Desempenho da P\00E1gina')
,p_max_row_count_message=>unistr('A contagem m\00E1xima de linhas deste relat\00F3rio \00E9 #MAX_ROW_COUNT# linhas. Aplique um filtro para reduzir o n\00FAmero de registros em sua consulta.')
,p_no_data_found_message=>unistr('Dados n\00E3o encontrados.')
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'JONAS.SPINDLER@MJ.GOV.BR'
,p_internal_uid=>966661037964342408
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1966606794666857213)
,p_db_column_name=>'PAGE'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>unistr('P\00E1gina')
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1966607201270857213)
,p_db_column_name=>'PAGE_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>unistr('Nome da P\00E1gina')
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1966607579372857213)
,p_db_column_name=>'MEDIAN_ELAPSED'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Mediano Decorrido'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990D9999'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1966607951767857214)
,p_db_column_name=>'WEIGHTED_PERFORMANCE'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Desempenho Ponderado'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990D99'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1966608407602857214)
,p_db_column_name=>'ERRORS'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Erros'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1966608769680857214)
,p_db_column_name=>'DISTINCT_USERS'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>unistr('Usu\00E1rios Distintos')
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1966609152841857215)
,p_db_column_name=>'APPLICATION_SESSIONS'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>unistr('Sess\00F5es do Aplicativo')
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1966609542687857215)
,p_db_column_name=>'PAGE_VIEWS'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>unistr('Views de P\00E1gina')
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1966609968281857215)
,p_db_column_name=>'MAX_ELAPSED'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>unistr('M\00E1x. Decorrido')
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990D9999'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1966610417471857216)
,p_db_column_name=>'TOTAL_ROWS'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Total de Linhas'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1966610779310857216)
,p_db_column_name=>'PARTIAL_PAGE_VIEWS'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>unistr('Views Parciais da P\00E1gina')
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1966611198968857216)
,p_db_column_name=>'FULL_PAGE_VIEWS'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>unistr('Visualiza\00E7\00F5es de P\00E1gina Inteira')
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1966611615938857217)
,p_db_column_name=>'MIN_ELAPSED'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>unistr('M\00EDn. Decorrido')
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990D9999'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1966611969344857217)
,p_db_column_name=>'AVG_ELAPSED'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>unistr('M\00E9d. Decorrido')
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990D9999'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(1966616895589857222)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'9666719'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PAGE:PAGE_NAME:MEDIAN_ELAPSED:WEIGHTED_PERFORMANCE:ERRORS:DISTINCT_USERS:APPLICATION_SESSIONS:PAGE_VIEWS'
,p_sort_column_1=>'WEIGHTED_PERFORMANCE'
,p_sort_direction_1=>'DESC'
,p_sort_column_2=>'PAGE_VIEWS'
,p_sort_direction_2=>'DESC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1966605542525857211)
,p_plug_name=>unistr('Bot\00F5es')
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--slimPadding:t-ButtonRegion--noUI:t-Form--large'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1966617737296857222)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(1966605517771857211)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Redefinir'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&APP_SESSION.::&DEBUG.:&APP_PAGE_ID.,RR::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1966605348271857211)
,p_name=>'P10033_TIMEFRAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(1966605542525857211)
,p_prompt=>'Prazo'
,p_source=>'900'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'TIMEFRAME (4 WEEKS)'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select disp,',
'       val as seconds',
'  from table( apex_util.get_timeframe_lov_data )',
' order by insert_order'))
,p_cHeight=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'Y',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(1966605727111857211)
,p_name=>unistr('Atualizar Relat\00F3rio')
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P10033_TIMEFRAME'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1966619063142857224)
,p_event_id=>wwv_flow_imp.id(1966605727111857211)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(1966605517771857211)
);
end;
/
prompt --application/pages/page_10034
begin
wwv_flow_imp_page.create_page(
 p_id=>10034
,p_name=>unistr('Views de P\00E1gina')
,p_alias=>unistr('VIEWS-DE-P\00C1GINA')
,p_page_mode=>'MODAL'
,p_step_title=>unistr('Views de P\00E1gina')
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(1966549865515857031)
,p_step_template=>2100407606326202693
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(1966548326246857028)
,p_required_patch=>wwv_flow_imp.id(1966545641652857026)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Esta p\00E1gina fornece um relat\00F3rio interativo das visualiza\00E7\00F5es de p\00E1gina mais recentes.</p>'),
unistr('<p>Selecione o per\00EDodo do relat\00F3rio (Padr\00E3o = 1 dia) na parte superior da p\00E1gina, conforme necess\00E1rio.<br>'),
unistr('Clique nos cabe\00E7alhos da coluna para classificar e filtrar os dados ou clique no bot\00E3o <strong>A\00E7\00F5es</strong> para personalizar a exibi\00E7\00E3o da coluna e muitas funcionalidades adicionais avan\00E7adas. Clique no bot\00E3o <strong>Redefinir</strong> para redefi')
||unistr('nir o relat\00F3rio interativo de volta \00E0s defini\00E7\00F5es padr\00E3o.</p>')))
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1966594220973857200)
,p_plug_name=>unistr('Views de P\00E1gina')
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'    step_id||''. ''||(select page_name',
'                    from apex_application_pages p',
'                    where p.page_id = l.step_id',
'                        and p.application_id = :APP_ID) page_name,',
'    userid_lc     user_id,',
'    time_stamp    timestamp,',
'    elap          elapsed,',
'    step_id       page,',
'    decode(page_mode,''P'',''Partial'',''D'',''Full'',page_mode) page_mode,',
'    component_name,',
'    num_rows,',
'    ir_search,',
'    sqlerrm  error',
'from apex_activity_log l',
'where flow_id = :app_id',
'    and time_stamp >= sysdate - ( 1/24/60/60 * :P10034_TIMEFRAME )',
'    and userid is not null',
'    and step_id is not null',
'order by time_stamp desc'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P10034_TIMEFRAME'
,p_prn_page_header=>unistr('Views de P\00E1gina')
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(1966594832151857200)
,p_name=>unistr('Views de P\00E1gina')
,p_max_row_count_message=>unistr('A contagem m\00E1xima de linhas deste relat\00F3rio \00E9 #MAX_ROW_COUNT# linhas. Aplique um filtro para reduzir o n\00FAmero de registros em sua consulta.')
,p_no_data_found_message=>unistr('Dados n\00E3o encontrados.')
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'JONAS.SPINDLER@MJ.GOV.BR'
,p_internal_uid=>966649795156342397
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1966595453731857201)
,p_db_column_name=>'PAGE_NAME'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>unistr('Nome da P\00E1gina')
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1966595912811857202)
,p_db_column_name=>'USER_ID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>unistr('Usu\00E1rio')
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1966596332208857202)
,p_db_column_name=>'TIMESTAMP'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Timestamp'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1966596657866857202)
,p_db_column_name=>'ELAPSED'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Decorrido'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990D0000'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1966597125694857203)
,p_db_column_name=>'PAGE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>unistr('P\00E1gina')
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1966597466298857203)
,p_db_column_name=>'PAGE_MODE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Modo'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1966597917722857203)
,p_db_column_name=>'COMPONENT_NAME'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Nome do Componente'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1966598320771857204)
,p_db_column_name=>'NUM_ROWS'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>unistr('N\00FAm. de Linhas')
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1966598637647857204)
,p_db_column_name=>'IR_SEARCH'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Pesquisa de IR'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1966599100487857204)
,p_db_column_name=>'ERROR'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Erro'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(1966602754555857208)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'9666578'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PAGE_NAME:USER_ID:TIMESTAMP:ELAPSED:PAGE_MODE'
,p_sort_column_1=>'TIMESTAMP'
,p_sort_direction_1=>'DESC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1966594298759857200)
,p_plug_name=>unistr('Bot\00F5es')
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--slimPadding:t-ButtonRegion--noUI:t-Form--large'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1966603715489857209)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(1966594220973857200)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Redefinir'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&APP_SESSION.::&DEBUG.:&APP_PAGE_ID.,RR::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1966594073206857200)
,p_name=>'P10034_TIMEFRAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(1966594298759857200)
,p_prompt=>'Prazo'
,p_source=>'900'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'TIMEFRAME (4 WEEKS)'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select disp,',
'       val as seconds',
'  from table( apex_util.get_timeframe_lov_data )',
' order by insert_order'))
,p_cHeight=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'Y',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(1966594414036857200)
,p_name=>unistr('Atualizar Relat\00F3rio')
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P10034_TIMEFRAME'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1966604998221857211)
,p_event_id=>wwv_flow_imp.id(1966594414036857200)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(1966594220973857200)
);
end;
/
prompt --application/pages/page_10035
begin
wwv_flow_imp_page.create_page(
 p_id=>10035
,p_name=>unistr('Log de Automa\00E7\00F5es')
,p_alias=>unistr('LOG-DE-AUTOMA\00C7\00D5ES')
,p_page_mode=>'MODAL'
,p_step_title=>unistr('Log de Automa\00E7\00F5es')
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(1966549865515857031)
,p_step_template=>2100407606326202693
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(1966548326246857028)
,p_required_patch=>wwv_flow_imp.id(1966545641652857026)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Esta p\00E1gina oferece um relat\00F3rio interativo do log de automa\00E7\00F5es.</p>'),
unistr('<p>Analise as informa\00E7\00F5es registradas sobre execu\00E7\00F5es de automa\00E7\00E3o anteriores. O log cont\00E9m timestamps inicial e final, bem como detalhes sobre linhas processadas (bem-sucedidas e com erros). Fa\00E7a drill down at\00E9 Mensagens para ver mensagens individua')
||'is para linhas processadas.</p>',
''))
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1966640251607857259)
,p_plug_name=>unistr('Log de Automa\00E7\00F5es')
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select l.id,',
'       l.start_timestamp,',
'       a.name automation_name,',
'       l.status,',
'       l.successful_row_count,',
'       l.error_row_count,',
'       (select count(1) from apex_automation_msg_log m where m.automation_log_id = l.id) msg_count,',
'       l.is_job,',
'       l.end_timestamp',
'  from apex_appl_automations a, apex_automation_log l',
' where a.automation_id = l.automation_id',
' and l.application_id = :APP_ID'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>unistr('Log de Automa\00E7\00F5es')
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(1966640900702857260)
,p_name=>unistr('Log de Automa\00E7\00F5es')
,p_max_row_count_message=>unistr('A contagem m\00E1xima de linhas deste relat\00F3rio \00E9 #MAX_ROW_COUNT# linhas. Aplique um filtro para reduzir o n\00FAmero de registros em sua consulta.')
,p_no_data_found_message=>unistr('Dados n\00E3o encontrados.')
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'JONAS.SPINDLER@MJ.GOV.BR'
,p_internal_uid=>966695863707342457
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1966641604019857261)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1966642036584857261)
,p_db_column_name=>'START_TIMESTAMP'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Iniciado'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1966642356252857261)
,p_db_column_name=>'AUTOMATION_NAME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>unistr('Automa\00E7\00E3o')
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1966642795662857262)
,p_db_column_name=>'STATUS'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1966643211940857262)
,p_db_column_name=>'SUCCESSFUL_ROW_COUNT'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>unistr('Linhas com \00CAxito')
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1966643575944857262)
,p_db_column_name=>'ERROR_ROW_COUNT'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Linhas de Erros'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1966644011707857263)
,p_db_column_name=>'MSG_COUNT'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Mensagem'
,p_column_link=>'f?p=&APP_ID.:10036:&APP_SESSION.::&DEBUG.:RP,10036:P10036_LOG_ID:#ID#'
,p_column_linktext=>'#MSG_COUNT#'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1966644406274857263)
,p_db_column_name=>'IS_JOB'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Programado'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1966644740502857263)
,p_db_column_name=>'END_TIMESTAMP'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Encerrado'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(1966648219332857266)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'9667032'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'START_TIMESTAMP:AUTOMATION_NAME:STATUS:SUCCESSFUL_ROW_COUNT:ERROR_ROW_COUNT:MSG_COUNT'
,p_sort_column_1=>'START_TIMESTAMP'
,p_sort_direction_1=>'DESC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1966649091681857267)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(1966640251607857259)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Redefinir'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&APP_SESSION.::&DEBUG.:&APP_PAGE_ID.,RR::'
,p_icon_css_classes=>'fa-undo-alt'
);
end;
/
prompt --application/pages/page_10036
begin
wwv_flow_imp_page.create_page(
 p_id=>10036
,p_name=>'Mensagens de Log'
,p_alias=>'MENSAGENS-DE-LOG'
,p_page_mode=>'MODAL'
,p_step_title=>'Mensagens de Log'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(1966549865515857031)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(1966548326246857028)
,p_required_patch=>wwv_flow_imp.id(1966545641652857026)
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'03'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1966649698488857268)
,p_plug_name=>unistr('Execu\00E7\00E3o da Automa\00E7\00E3o')
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(1966652071516857270)
,p_name=>'Mensagens'
,p_template=>2100526641005906379
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight:t-Report--inline'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select message_timestamp,',
'       message,',
'       message_type,',
'       pk_value',
'  from apex_automation_msg_log',
' where automation_log_id = :P10036_LOG_ID'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>50
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>unistr('dados n\00E3o encontrados')
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>50
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_prn_output=>'N'
,p_prn_format=>'PDF'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1966652490264857271)
,p_query_column_id=>1
,p_column_alias=>'MESSAGE_TIMESTAMP'
,p_column_display_sequence=>1
,p_column_heading=>'Timestamp'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_default_sort_dir=>'desc'
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1966652867653857271)
,p_query_column_id=>2
,p_column_alias=>'MESSAGE'
,p_column_display_sequence=>2
,p_column_heading=>'Mensagem'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1966653328808857271)
,p_query_column_id=>3
,p_column_alias=>'MESSAGE_TYPE'
,p_column_display_sequence=>3
,p_column_heading=>'Tipo de Mensagem'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1966653730497857272)
,p_query_column_id=>4
,p_column_alias=>'PK_VALUE'
,p_column_display_sequence=>4
,p_column_heading=>unistr('Valor da Chave Prim\00E1ria')
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1966650104237857268)
,p_name=>'P10036_LOG_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(1966649698488857268)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1966650516397857268)
,p_name=>'P10036_AUTOMATION_NAME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(1966649698488857268)
,p_prompt=>unistr('Automa\00E7\00E3o')
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1966650840966857269)
,p_name=>'P10036_START_TIMESTAMP'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(1966649698488857268)
,p_prompt=>'Iniciado'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1966651285904857269)
,p_name=>'P10036_STATUS'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(1966649698488857268)
,p_prompt=>'Status'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(1966651647269857269)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Obter Detalhes do Log'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select automation_name,',
'       start_timestamp,',
'       status',
'  into :P10036_AUTOMATION_NAME,',
'       :P10036_START_TIMESTAMP,',
'       :P10036_STATUS',
'  from apex_automation_log',
' where id = :P10036_LOG_ID;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>966706610274342466
);
end;
/
prompt --application/pages/page_10040
begin
wwv_flow_imp_page.create_page(
 p_id=>10040
,p_name=>'Configurar Controle de Acesso'
,p_alias=>'CONFIGURAR-CONTROLE-DE-ACESSO'
,p_page_mode=>'MODAL'
,p_step_title=>'Configurar Controle de Acesso'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(1966549865515857031)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(1966548326246857028)
,p_required_patch=>wwv_flow_imp.id(1966545603817857026)
,p_dialog_resizable=>'Y'
,p_protection_level=>'U'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Selecione a op\00E7\00E3o apropriada para quaisquer usu\00E1rios autenticados.<br>'),
unistr('Selecionar <strong>N\00E3o</strong> torna o aplicativo mais seguro, pois somente os usu\00E1rios especificados podem acessar o aplicativo.'),
unistr('Por\00E9m, se seu aplicativo tiver uma comunidade de usu\00E1rios maior, ent\00E3o manter os usu\00E1rios pode implicar em gastos e talvez voc\00EA prefira escolher <strong>Sim</strong> e s\00F3 inserir Administradores do aplicativo e, possivelmente, Colaboradores.<br>'),
unistr('Se voc\00EA selecionar <strong>Sim</strong>, ent\00E3o tamb\00E9m dever\00E1 selecionar quantos usu\00E1rios n\00E3o inclu\00EDdos na lista de usu\00E1rios ser\00E3o tratados.</p>'),
unistr('<p>Selecione entre endere\00E7os de e-mail necess\00E1rios e qualquer valor alfanum\00E9rico para Nomes de usu\00E1rios.<br>'),
unistr('Geralmente, voc\00EA deve estabelecer esta defini\00E7\00E3o como <strong>Endere\00E7o de E-mail</strong> se seu aplicativo usar (ou for configurado para usar) um esquema de autentica\00E7\00E3o centralizado, como Oracle Access Manager ou SSO.</p>'),
unistr('<p><em><strong>Observa\00E7\00E3o:</strong> Este aplicativo suporta os seguintes 3 n\00EDveis de acesso: Leitor, Colaborador e Administrador.'),
'<ul>',
unistr('  <li><strong>Leitores</strong> t\00EAm acesso somente para leitura a todas as informa\00E7\00F5es e tamb\00E9m podem exibir relat\00F3rios.</li>'),
unistr('  <li><strong>Colaboradores</strong> podem criar, editar e excluir informa\00E7\00F5es e exibir relat\00F3rios.</li>'),
unistr('  <li><strong>Administradores</strong> al\00E9m do recurso de Colaboradores, tamb\00E9m podem executar a configura\00E7\00E3o do aplicativo, acessando a se\00E7\00E3o Administra\00E7\00E3o do aplicativo.</li>'),
'</ul>',
'</em></p>'))
,p_page_component_map=>'16'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1966655851579857274)
,p_plug_name=>unistr('Configura\00E7\00E3o do Controle de Acesso')
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1966655972495857274)
,p_plug_name=>unistr('Bot\00F5es')
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1966657206728857275)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(1966655972495857274)
,p_button_name=>'APPLY_CHANGES'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('Aplicar Altera\00E7\00F5es')
,p_button_position=>'CREATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1966657484164857275)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(1966655972495857274)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancelar'
,p_button_position=>'PREVIOUS'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(1966658915007857276)
,p_branch_name=>unistr('Ramificar para P\00E1gina Admin')
,p_branch_action=>'f?p=&APP_ID.:10000:&APP_SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1966659228209857277)
,p_name=>'P10040_ALLOW_OTHER_USERS'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(1966655851579857274)
,p_prompt=>unistr('Qualquer usu\00E1rio autenticado pode acessar este aplicativo')
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if apex_app_setting.get_value( p_name => ''ACCESS_CONTROL_SCOPE'' ) = ''ACL_ONLY'' then',
'    return ''N'';',
'else',
'    return ''Y'';',
'end if;'))
,p_source_type=>'FUNCTION_BODY'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_YES_NO'
,p_cSize=>64
,p_cMaxlength=>4000
,p_cHeight=>4
,p_grid_label_column_span=>3
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_inline_help_text=>unistr('Escolha <strong>N\00E3o</strong> se todos os usu\00E1rios forem definidos na lista de controle de acesso. Escolha <strong>Sim</strong> se os usu\00E1rios autenticados que n\00E3o estiverem na lista de controle de acesso tamb\00E9m puderem usar este aplicativo.')
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(1966657617681857275)
,p_name=>unistr('Cancelar Caixa de Di\00E1logo')
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(1966657484164857275)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1966658253460857276)
,p_event_id=>wwv_flow_imp.id(1966657617681857275)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(1966659545846857278)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Definir Controle de Acesso'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    if :P10040_ALLOW_OTHER_USERS = ''Y'' then',
'        apex_app_setting.set_value (',
'            p_name  => ''ACCESS_CONTROL_SCOPE'',',
'            p_value => ''ALL_USERS'');',
'    else',
'        apex_app_setting.set_value (',
'            p_name  => ''ACCESS_CONTROL_SCOPE'',',
'            p_value => ''ACL_ONLY'');',
'    end if;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>unistr('Defini\00E7\00F5es de Controle de Acesso salvas.')
,p_internal_uid=>966714508851342475
);
end;
/
prompt --application/pages/page_10041
begin
wwv_flow_imp_page.create_page(
 p_id=>10041
,p_name=>unistr('Gerenciar Acesso do Usu\00E1rio')
,p_alias=>unistr('GERENCIAR-ACESSO-DO-USU\00C1RIO')
,p_page_mode=>'MODAL'
,p_step_title=>unistr('Gerenciar Acesso do Usu\00E1rio')
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(1966549865515857031)
,p_step_template=>2100407606326202693
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(1966548326246857028)
,p_required_patch=>wwv_flow_imp.id(1966545603817857026)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Esta p\00E1gina mostra um relat\00F3rio de usu\00E1rios do aplicativo e o n\00EDvel de acesso concedido.</p>'),
unistr('<p>Clique nos cabe\00E7alhos da coluna para classificar e filtrar os dados ou clique no bot\00E3o <strong>A\00E7\00F5es</strong> para personalizar a exibi\00E7\00E3o da coluna e muitas funcionalidades avan\00E7adas adicionais.<br>'),
unistr('Clique no bot\00E3o <strong>Redefinir</strong> para redefinir o relat\00F3rio interativo de volta \00E0s defini\00E7\00F5es padr\00E3o.</p>'),
unistr('<p>Clique no \00EDcone de edi\00E7\00E3o (l\00E1pis amarelo) para editar os detalhes do usu\00E1rio e o n\00EDvel de acesso ou para excluir o usu\00E1rio.</p>'),
unistr('<p>Clique em <strong>Adicionar Usu\00E1rio</strong>, na parte superior do relat\00F3rio, para adicionar um novo usu\00E1rio e seu n\00EDvel de acesso.</p>')))
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1966660015490857278)
,p_plug_name=>unistr('Gerenciar Acesso do Usu\00E1rio')
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select id,',
'   user_name_lc USERNAME,',
'   role_names ACCESS_ROLE',
'from APEX_APPL_ACL_USERS',
'where APPLICATION_ID = :APP_ID'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>unistr('Gerenciar Acesso do Usu\00E1rio')
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(1966660834777857278)
,p_name=>unistr('Gerenciar Acesso do Usu\00E1rio')
,p_max_row_count_message=>unistr('A contagem m\00E1xima de linhas deste relat\00F3rio \00E9 #MAX_ROW_COUNT# linhas. Aplique um filtro para reduzir o n\00FAmero de registros em sua consulta.')
,p_no_data_found_message=>unistr('Dados n\00E3o encontrados.')
,p_base_pk1=>'ID'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:10042:&APP_SESSION.::&DEBUG.:RP:P10042_ID:\#ID#\'
,p_detail_link_text=>'<span role="img" aria-label="Editar" class="fa fa-edit" title="Editar"></span>'
,p_owner=>'JONAS.SPINDLER@MJ.GOV.BR'
,p_internal_uid=>966715797782342475
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1966661525759857280)
,p_db_column_name=>'ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1966661901717857280)
,p_db_column_name=>'USERNAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>unistr('Nome do Usu\00E1rio')
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1966662328084857281)
,p_db_column_name=>'ACCESS_ROLE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>unistr('Atribui\00E7\00F5es')
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(1966663935846857283)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'9667189'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'USERNAME:ACCESS_ROLE'
,p_sort_column_2=>'USERNAME'
,p_sort_direction_2=>'ASC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1966664780311857284)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(1966660015490857278)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft:t-Button--gapRight'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Redefinir'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&APP_SESSION.::&DEBUG.:&APP_PAGE_ID.,RR::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1966665189327857284)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(1966660015490857278)
,p_button_name=>'ADD_MULTIPLE_USERS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>unistr('Adicionar Diversos Usu\00E1rios')
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:10043:&APP_SESSION.::&DEBUG.:10043::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1966665612219857284)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(1966660015490857278)
,p_button_name=>'ADD_USER'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('Adicionar Usu\00E1rio')
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:10042:&APP_SESSION.::&DEBUG.:10042::'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(1966660111971857278)
,p_name=>unistr('Atualizar Relat\00F3rio')
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(1966660015490857278)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1966666155414857285)
,p_event_id=>wwv_flow_imp.id(1966660111971857278)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(1966660015490857278)
);
end;
/
prompt --application/pages/page_10042
begin
wwv_flow_imp_page.create_page(
 p_id=>10042
,p_name=>unistr('Gerenciar Acesso do Usu\00E1rio')
,p_alias=>unistr('GERENCIAR-ACESSO-DO-USU\00C1RIO1')
,p_page_mode=>'MODAL'
,p_step_title=>unistr('Gerenciar Acesso do Usu\00E1rio')
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(1966549865515857031)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(1966548326246857028)
,p_required_patch=>wwv_flow_imp.id(1966545603817857026)
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Use este form para inserir usu\00E1rios, seus endere\00E7os de e-mail e definir seu n\00EDvel de acesso.'),
unistr('As defini\00E7\00F5es estabelecidas em <em>Configurar Controle de Acesso</em> determinar\00E3o se o nome de usu\00E1rio deve ser o endere\00E7o de e-mail ou se pode ser qualquer entrada alfanum\00E9rica.</p>'),
unistr('<p>Este aplicativo suporta os seguintes 3 n\00EDveis de acesso: Leitor, Colaborador e Administrador.</p>'),
'<ul>',
unistr('  <li><strong>Leitores</strong> t\00EAm acesso somente para leitura a todas as informa\00E7\00F5es e tamb\00E9m podem exibir relat\00F3rios.</li>'),
unistr('  <li><strong>Colaboradores</strong> podem criar, editar e excluir informa\00E7\00F5es e exibir relat\00F3rios.</li>'),
unistr('  <li><strong>Administradores</strong>, al\00E9m do recurso de Colaboradores, tamb\00E9m podem executar configura\00E7\00E3o do aplicativo, acessando a se\00E7\00E3o Administra\00E7\00E3o do aplicativo.</li>'),
'</ul>',
unistr('<p>Ao editar um usu\00E1rio existente, voc\00EA pode bloquear sua conta, o que impedir\00E1 que ele acesse o aplicativo.</p>'),
unistr('<p><em><strong>Observa\00E7\00E3o:</strong> Se voc\00EA usar as contas do Oracle APEX, ent\00E3o os usu\00E1rios inseridos aqui tamb\00E9m devem ser definidos como usu\00E1rios finais por um Administrador do Espa\00E7o de Trabalho que tamb\00E9m pode definir as senhas dos usu\00E1rios.</em')
||'></p>'))
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1966666693814857285)
,p_plug_name=>unistr('Form em Gerenciar Acesso do Usu\00E1rio')
,p_region_template_options=>'#DEFAULT#:t-Form--stretchInputs'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'APEX_APPL_ACL_USERS'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1966666748748857285)
,p_plug_name=>unistr('Bot\00F5es')
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1966669550438857288)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(1966666748748857285)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('Aplicar Altera\00E7\00F5es')
,p_button_position=>'NEXT'
,p_button_condition=>'P10042_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1966669994155857289)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(1966666748748857285)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('Adicionar Usu\00E1rio')
,p_button_position=>'NEXT'
,p_button_condition=>'P10042_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1966667759350857287)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(1966666748748857285)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancelar'
,p_button_position=>'PREVIOUS'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1966669157822857288)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(1966666748748857285)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Excluir'
,p_button_position=>'PREVIOUS'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P10042_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1966670311982857289)
,p_name=>'P10042_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(1966666693814857285)
,p_item_source_plug_id=>wwv_flow_imp.id(1966666693814857285)
,p_use_cache_before_default=>'NO'
,p_source=>'ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1966670678773857289)
,p_name=>'P10042_APPLICATION_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(1966666693814857285)
,p_item_source_plug_id=>wwv_flow_imp.id(1966666693814857285)
,p_use_cache_before_default=>'NO'
,p_item_default=>'&APP_ID.'
,p_source=>'APPLICATION_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1966671119624857290)
,p_name=>'P10042_USER_NAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(1966666693814857285)
,p_item_source_plug_id=>wwv_flow_imp.id(1966666693814857285)
,p_use_cache_before_default=>'NO'
,p_prompt=>unistr('Nome do Usu\00E1rio')
,p_source=>'USER_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>255
,p_read_only_when=>'P10042_ID'
,p_read_only_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>1609122147107268652
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'send_on_page_submit', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1966671483260857290)
,p_name=>'P10042_ROLE_IDS'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(1966666693814857285)
,p_item_source_plug_id=>wwv_flow_imp.id(1966666693814857285)
,p_use_cache_before_default=>'NO'
,p_prompt=>unistr('Atribui\00E7\00F5es')
,p_source=>'ROLE_IDS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'ACCESS_ROLES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select role_name d, role_id r',
'from APEX_APPL_ACL_ROLES where application_id = :APP_ID ',
'order by 1'))
,p_field_template=>1609122147107268652
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Quando o Controle de Acesso \00E9 ativado, os Administradores t\00EAm a capacidade de restringir o acesso a determinadas funcionalidades do aplicativo para usu\00E1rios autenticados. Este aplicativo suporta os seguintes 3 n\00EDveis de acesso: Leitor, Colaborador')
||' e Administrador.<p>',
'<ul>',
unistr('  <li><strong>Leitores</strong> t\00EAm acesso somente para leitura a todas as informa\00E7\00F5es e tamb\00E9m podem exibir relat\00F3rios.</li>'),
unistr('  <li><strong>Colaboradores</strong> podem criar, editar e excluir informa\00E7\00F5es e exibir relat\00F3rios.</li>'),
unistr('  <li><strong>Administradores</strong>,al\00E9m da capacidade de Colaboradores, tamb\00E9m podem executar a configura\00E7\00E3o do aplicativo.</li>'),
'</ul>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '1')).to_clob
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(1966672799739857292)
,p_validation_name=>unistr('N\00E3o \00E9 poss\00EDvel remover a si pr\00F3prio da fun\00E7\00E3o de administrador')
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P10042_USER_NAME = :APP_USER and',
'    apex_acl.is_role_removed_from_user (',
'        p_application_id => :APP_ID,',
'        p_user_name      => :APP_USER,',
'        p_role_static_id => ''ADMINISTRATOR'',',
'        p_role_ids       => apex_string.split_numbers(',
'                                p_str => case when :REQUEST = ''DELETE'' then',
'                                             null',
'                                         else',
'                                             :P10042_ROLE_IDS',
'                                         end,',
'                                p_sep => '':'') ) then',
'    return false;',
'else',
'    return true;',
'end if;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>unistr('Voc\00EA n\00E3o pode remover de si mesmo a atribui\00E7\00E3o de administrador.')
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(1966667858800857287)
,p_name=>unistr('Cancelar Caixa de Di\00E1logo')
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(1966667759350857287)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1966668564227857288)
,p_event_id=>wwv_flow_imp.id(1966667858800857287)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(1966673134124857292)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_region_id=>wwv_flow_imp.id(1966666693814857285)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>unistr('Inicializar o form Gerenciar Acesso do Usu\00E1rio')
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>966728097129342489
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(1966673494461857293)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(1966666693814857285)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>unistr('Processar o form Gerenciar Acesso do Usu\00E1rio')
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'N'
,p_attribute_08=>'N'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>966728457466342490
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(1966673915292857293)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>unistr('Fechar Caixa de Di\00E1logo')
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>966728878297342490
);
end;
/
prompt --application/pages/page_10043
begin
wwv_flow_imp_page.create_page(
 p_id=>10043
,p_name=>unistr('Adicionar Diversos Usu\00E1rios - Etapa 1')
,p_alias=>unistr('ADICIONAR-DIVERSOS-USU\00C1RIOS-ETAPA-1')
,p_page_mode=>'MODAL'
,p_step_title=>unistr('Adicionar Diversos Usu\00E1rios')
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(1966549865515857031)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(1966548326246857028)
,p_required_patch=>wwv_flow_imp.id(1966545603817857026)
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_deep_linking=>'N'
,p_page_component_map=>'16'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1966674272135857293)
,p_plug_name=>unistr('Bot\00F5es')
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1966674396050857293)
,p_plug_name=>unistr('Cont\00EAiner do Assistente')
,p_region_template_options=>'#DEFAULT#:t-Form--stretchInputs'
,p_component_template_options=>'#DEFAULT#:t-WizardSteps--displayCurrentLabelOnly'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1966674518699857293)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(1966674272135857293)
,p_button_name=>'NEXT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('Pr\00F3ximo')
,p_button_position=>'NEXT'
,p_icon_css_classes=>'fa-chevron-right'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1966676529764857295)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(1966674272135857293)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancelar'
,p_button_position=>'PREVIOUS'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(1966677747621857296)
,p_branch_action=>'f?p=&APP_ID.:10044:&APP_SESSION.::&DEBUG.:RP,10044::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(1966674518699857293)
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1966678142717857296)
,p_name=>'P10043_ROLE'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(1966674396050857293)
,p_prompt=>unistr('Atribui\00E7\00F5es')
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'ACCESS_ROLES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select role_name d, role_id r',
'from APEX_APPL_ACL_ROLES where application_id = :APP_ID ',
'order by 1'))
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '3')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1966678607005857296)
,p_name=>'P10043_PRELIM_USERS'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(1966674396050857293)
,p_prompt=>unistr('Nomes de Usu\00E1rio')
,p_placeholder=>unistr('Digite os nomes de usu\00E1rios aqui')
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>80
,p_cMaxlength=>4000
,p_cHeight=>5
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_protection_level=>'I'
,p_inline_help_text=>unistr('Digite os nomes de usu\00E1rios separados por v\00EDrgulas, pontos e v\00EDrgulas ou espa\00E7o em branco. Os nomes de usu\00E1rio existentes ou duplicados ser\00E3o automaticamente ignorados.')
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1966678984768857297)
,p_name=>'P10043_USERNAME_FORMAT'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(1966674396050857293)
,p_prompt=>unistr('Formato de Nome de Usu\00E1rio')
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'EMAIL_USERNAME_FORMAT'
,p_lov=>'.'||wwv_flow_imp.id(1966679058968857297)||'.'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '1')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(1966676564370857295)
,p_name=>unistr('Cancelar Caixa de Di\00E1logo')
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(1966676529764857295)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1966677272377857295)
,p_event_id=>wwv_flow_imp.id(1966676564370857295)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(1966680046095857298)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>unistr('Criar Cole\00E7\00F5es')
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_line      varchar2(32767);',
'    l_emails    apex_t_varchar2;',
'    l_username  varchar2(4000);',
'    l_at        number;',
'    l_dot       number;',
'    l_valid     boolean := true;',
'    l_domain    varchar2(4000);',
'begin',
'    -- create collections',
'    apex_collection.create_or_truncate_collection(''ACL_BULK_USER_INVALID'');',
'    apex_collection.create_or_truncate_collection(''ACL_BULK_USER_VALID'');',
'',
'    -- replace delimiting characters with commas',
'    l_line := :P10043_PRELIM_USERS;',
'    l_line := replace(l_line, chr(10), '' '');',
'    l_line := replace(l_line, chr(13), '' '');',
'    l_line := replace(l_line, chr(9),  '' '');',
'    l_line := replace(l_line, ''<'', '' '');',
'    l_line := replace(l_line, ''>'', '' '');',
'    l_line := replace(l_line, '';'', '' '');',
'    l_line := replace(l_line, '':'', '' '');',
'    l_line := replace(l_line, ''('', '' '');',
'    l_line := replace(l_line, '')'', '' '');',
'    l_line := replace(l_line, '' '', '','');',
'',
'    -- get one comma separated line of emails',
'    for j in 1 .. 1000 loop',
'        if instr(l_line, '',,'') > 0 then',
'            l_line := replace(l_line, '',,'', '','');',
'        else',
'            exit;',
'        end if;',
'    end loop;',
'',
'    -- get an array of emails',
'    l_emails := apex_string.split(l_line, '','');',
'',
'    -- add emails to a collection',
'    l_username := null;',
'    l_domain   := null;',
'    l_at       := 0;',
'    l_dot      := 0;',
'    for j in 1..l_emails.count loop',
'        l_valid    := true;',
'        l_username := upper(trim(l_emails(j)));',
'        l_username := trim(both ''.'' from l_username);',
'        l_username := replace(l_username, '' '', null);',
'        l_username := replace(l_username, chr(10), null);',
'        l_username := replace(l_username, chr(9), null);',
'        l_username := replace(l_username, chr(13), null);',
'        l_username := replace(l_username, chr(49824), null);',
'',
'        if l_username is not null then',
'            if nvl(:P10043_USERNAME_FORMAT,''x'') = ''EMAIL'' then',
'              -- Validate',
'              l_at     := instr(nvl(l_username, ''x''), ''@'');',
'              l_domain := substr(l_username, l_at+1);',
'              l_dot    := instr(l_domain, ''.'');',
'              if l_at < 2 then',
'                  -- invalid email',
'                  apex_collection.add_member(',
'                      p_collection_name => ''ACL_BULK_USER_INVALID'',',
'                      p_c001            => l_username,',
'                      p_c002            => apex_lang.message(''APEX.FEATURE.ACL.BULK_USER.MISSING_AT_SIGN''));',
'                  commit;',
'                  l_valid := false;',
'              end if;',
'',
'              if l_dot = 0 and l_valid then',
'                  apex_collection.add_member(',
'                      p_collection_name => ''ACL_BULK_USER_INVALID'',',
'                      p_c001            => l_username,',
'                      p_c002            => apex_lang.message(''APEX.FEATURE.ACL.BULK_USER.MISSING_DOT''));',
'                  commit;',
'                  l_valid := false;',
'              end if;',
'            end if;',
'',
'            if l_valid and length(l_username) > 255 then',
'                apex_collection.add_member(',
'                    p_collection_name => ''ACL_BULK_USER_INVALID'',',
'                    p_c001            => l_username,',
'                    p_c002            => apex_lang.message(''APEX.FEATURE.ACL.BULK_USER.USERNAME_TOO_LONG''));',
'                commit;',
'                l_valid := false;',
'            end if;',
'',
'            if l_valid then',
'                for c1 in (select user_name username',
'                             from APEX_APPL_ACL_USERS',
'                            where user_name = l_username and application_id = :APP_ID)',
'                loop',
'                    apex_collection.add_member(',
'                        p_collection_name => ''ACL_BULK_USER_INVALID'',',
'                        p_c001            => l_username,',
'                        p_c002            => apex_lang.message(''APEX.FEATURE.ACL.BULK_USER.ALREADY_IN_ACL''));',
'                    commit;',
'                    l_valid := false;',
'                    exit;',
'                end loop;',
'            end if;',
'',
'            if l_valid then',
'                for c1 in (select c001',
'                             from apex_collections',
'                            where collection_name = ''ACL_BULK_USER_VALID''',
'                              and c001            = l_username)',
'                loop',
'                    apex_collection.add_member(',
'                        p_collection_name => ''ACL_BULK_USER_INVALID'',',
'                        p_c001            => l_username,',
'                        p_c002            => apex_lang.message(''APEX.FEATURE.ACL.BULK_USER.DUPLICATE_USER''));',
'                        commit;',
'                    l_valid := false;',
'                    exit;',
'                end loop;',
'            end if;',
'',
'            if l_valid then',
'                apex_collection.add_member(',
'                    p_collection_name => ''ACL_BULK_USER_VALID'',',
'                    p_c001            => l_username,',
'                    p_c002            => null,',
'                    p_c003            => :P10043_ROLE);',
'                    commit;',
'            end if;',
'',
'        end if;',
'        l_username := null;',
'    end loop;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(1966674518699857293)
,p_internal_uid=>966735009100342495
);
end;
/
prompt --application/pages/page_10044
begin
wwv_flow_imp_page.create_page(
 p_id=>10044
,p_name=>unistr('Adicionar Diversos Usu\00E1rios - Etapa 2')
,p_alias=>unistr('ADICIONAR-DIVERSOS-USU\00C1RIOS-ETAPA-2')
,p_page_mode=>'MODAL'
,p_step_title=>unistr('Adicionar Diversos Usu\00E1rios')
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(1966549865515857031)
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.a-ListView-item .fa {',
'  color: var(--ut-component-text-muted-color);',
'}',
'',
'.a-ListView-item .u-success-text {',
'  color: var(--ut-palette-success) !important;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(1966548326246857028)
,p_required_patch=>wwv_flow_imp.id(1966545603817857026)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_deep_linking=>'N'
,p_page_component_map=>'25'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1966674562326857293)
,p_plug_name=>unistr('Bot\00F5es')
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1966674701302857293)
,p_plug_name=>unistr('Cont\00EAiner do Assistente')
,p_region_template_options=>'#DEFAULT#:t-Form--stretchInputs'
,p_component_template_options=>'#DEFAULT#:t-WizardSteps--displayCurrentLabelOnly'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>40
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(1966674884030857293)
,p_name=>unistr('Exce\00E7\00F5es')
,p_parent_plug_id=>wwv_flow_imp.id(1966674701302857293)
,p_template=>2664334895415463485
,p_display_sequence=>60
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:is-collapsed:t-Region--noUI:t-Region--scrollBody'
,p_component_template_options=>'t-Report--stretch:t-Report--staticRowColors:t-Report--rowHighlightOff'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select c001 username, c002 reason',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_INVALID''',
'order by 1'))
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_INVALID'''))
,p_display_condition_type=>'EXISTS'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>10000
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>unistr('dados n\00E3o encontrados')
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1966681972910857303)
,p_query_column_id=>1
,p_column_alias=>'USERNAME'
,p_column_display_sequence=>1
,p_column_heading=>unistr('Nome do Usu\00E1rio')
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1966682411654857303)
,p_query_column_id=>2
,p_column_alias=>'REASON'
,p_column_display_sequence=>2
,p_column_heading=>'Motivo'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1966674948400857293)
,p_plug_name=>unistr('&P10044_VALID_COUNT. Usu\00E1rios a serem Adicionados')
,p_parent_plug_id=>wwv_flow_imp.id(1966674701302857293)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--staticRowColors:t-Report--rowHighlightOff'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>50
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct c001 username',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_VALID''',
'order by 1'))
,p_plug_source_type=>'NATIVE_JQM_LIST_VIEW'
,p_plug_query_num_rows=>10000
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_VALID'''))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'list_view_features', 'ADVANCED_FORMATTING',
  'text_formatting', '&USERNAME!HTML.')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1966675136090857293)
,p_plug_name=>'Itens Ocultos'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1966685504948857346)
,p_plug_name=>unistr('Existem Usu\00E1rios V\00E1lidos - Informa\00E7\00F5es da P\00E1gina')
,p_region_template_options=>'#DEFAULT#:margin-bottom-sm'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_function_body_language=>'PLSQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'return ''<p>'' ||',
'       apex_lang.message (',
'           ''APEX.FEATURE.ACL.BULK_USER.CREATE_CONFIRM'',',
'           apex_escape.html(:P10044_VALID_COUNT),',
'           apex_escape.html(:P10044_ROLE)',
'       ) ||',
'       ''</p>'';'))
,p_plug_source_type=>'NATIVE_DYNAMIC_CONTENT'
,p_plug_query_num_rows=>15
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_VALID'''))
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1966686162160857347)
,p_plug_name=>unistr('N\00E3o Existem Usu\00E1rios V\00E1lidos - Informa\00E7\00F5es da P\00E1gina')
,p_region_template_options=>'#DEFAULT#:margin-bottom-sm'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>unistr('<p>Nenhum novo usu\00E1rio v\00E1lido encontrado</p>')
,p_plug_query_num_rows=>15
,p_plug_display_condition_type=>'NOT_EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_VALID'''))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1966675188040857293)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(1966674562326857293)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('Adicionar Usu\00E1rios')
,p_button_position=>'NEXT'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_VALID'''))
,p_button_condition_type=>'EXISTS'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1966686849288857348)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(1966674562326857293)
,p_button_name=>'PREVIOUS'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Anterior'
,p_button_position=>'PREVIOUS'
,p_button_redirect_url=>'javascript:history.back();'
,p_icon_css_classes=>'fa-chevron-left'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1966687299319857349)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(1966674562326857293)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancelar'
,p_button_position=>'PREVIOUS'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1966688597672857350)
,p_name=>'P10044_ROLE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(1966675136090857293)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select LISTAGG( role_name, '', '')',
'         WITHIN GROUP (ORDER BY role_name) role_name',
'from APEX_APPL_ACL_ROLES',
'where application_id = :APP_ID',
'and instr(:P10043_ROLE, role_id, 1) > 0'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_field_template=>1609121967514267634
,p_lov_display_extra=>'NO'
,p_protection_level=>'I'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1966688955211857350)
,p_name=>'P10044_VALID_COUNT'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(1966675136090857293)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select count(*)',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_VALID'''))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_field_template=>1609121967514267634
,p_lov_display_extra=>'NO'
,p_protection_level=>'I'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1966689378097857351)
,p_name=>'P10044_INVALID_COUNT'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(1966675136090857293)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select count(*)',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_VALID'''))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_field_template=>1609121967514267634
,p_lov_display_extra=>'NO'
,p_protection_level=>'I'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(1966687424892857349)
,p_name=>unistr('Cancelar Caixa de Di\00E1logo')
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(1966687299319857349)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1966688064281857349)
,p_event_id=>wwv_flow_imp.id(1966687424892857349)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(1966689762450857351)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>unistr('Adicionar Usu\00E1rios \00E0 Lista de Controle de Acesso')
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_user_role_ids apex_application_global.vc_arr2;',
'begin',
'    for c in (  select distinct c001 as username, c003 as user_roles',
'                from   apex_collections',
'                where  collection_name = ''ACL_BULK_USER_VALID'' )',
'    loop',
'         l_user_role_ids := apex_util.string_to_table(c.user_roles);',
'         for i in 1..l_user_role_ids.count loop',
'             apex_acl.add_user_role(p_application_id => :APP_ID, p_user_name => c.username, p_role_id => l_user_role_ids(i));',
'         end loop;',
'    end loop;',
'',
'    apex_collection.delete_collection(''ACL_BULK_USER_INVALID'');',
'    apex_collection.delete_collection(''ACL_BULK_USER_VALID'');',
'    :P10043_PRELIM_USERS := null;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(1966675188040857293)
,p_process_success_message=>unistr('Usu\00E1rio(s) adicionado(s).')
,p_internal_uid=>966744725455342548
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(1966690177818857351)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>unistr('Fechar Caixa de Di\00E1logo')
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>966745140823342548
);
end;
/
prompt --application/pages/page_10050
begin
wwv_flow_imp_page.create_page(
 p_id=>10050
,p_name=>'Feedback'
,p_alias=>'FEEDBACK'
,p_page_mode=>'MODAL'
,p_step_title=>'Feedback'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(1966549865515857031)
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.feedback-positive, .feedback-negative, .feedback-neutral { padding: 8px; border-radius: 100%; background-color: white; margin: 4px; }',
'.feedback-positive { color: var(--ut-feedback-positive-text-color, var(--ut-palette-success)); }',
'.feedback-neutral { color: var(--ut-feedback-neutral-text-color, var(--ut-palette-warning)); }',
'.feedback-negative { color: var(--ut-feedback-negative-text-color, var(--ut-palette-danger)); }'))
,p_page_template_options=>'#DEFAULT#'
,p_required_patch=>wwv_flow_imp.id(1966545788512857026)
,p_dialog_width=>'480'
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1966690587207857352)
,p_plug_name=>'Form em Feedback'
,p_region_template_options=>'#DEFAULT#:t-Form--stretchInputs'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1966690658438857352)
,p_plug_name=>unistr('Bot\00F5es')
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1966690745024857352)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(1966690658438857352)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--gapLeft'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Submeter Feedback'
,p_button_position=>'CREATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1966693767491857354)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(1966690658438857352)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancelar'
,p_button_position=>'EDIT'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(1966701515837857359)
,p_branch_action=>'f?p=&APP_ID.:10051:&APP_SESSION.::&DEBUG.:RP::'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1966695096010857355)
,p_name=>'P10050_APPLICATION_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(1966690587207857352)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1966695477438857355)
,p_name=>'P10050_PAGE_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(1966690587207857352)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1966695844035857355)
,p_name=>'P10050_USER_AGENT'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(1966690587207857352)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select sys.owa_util.get_cgi_env(''user-agent'') x',
'from dual'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1966696267487857356)
,p_name=>'P10050_RATING'
,p_item_sequence=>35
,p_item_plug_id=>wwv_flow_imp.id(1966690587207857352)
,p_prompt=>unistr('Experi\00EAncia')
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'FEEDBACK_RATING'
,p_lov=>'.'||wwv_flow_imp.id(1966696340566857356)||'.'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--radioButtonGroup'
,p_lov_display_extra=>'NO'
,p_escape_on_http_output=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'Y',
  'hide_radio_buttons', 'N',
  'number_of_columns', '3',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1966698167150857357)
,p_name=>'P10050_FEEDBACK'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(1966690587207857352)
,p_prompt=>'Feedback'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>64
,p_cMaxlength=>4000
,p_cHeight=>4
,p_field_template=>1609121967514267634
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(1966701042997857359)
,p_validation_name=>unistr('\00C9 Obrigat\00F3rio pelo Menos um Feedback')
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P10050_FEEDBACK is null and :P10050_RATING is null then',
'    return false;',
'else',
'    return true;',
'end if;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>unistr('Forne\00E7a feedback ou sua experi\00EAncia.')
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(1966693900582857354)
,p_name=>unistr('Cancelar Caixa de Di\00E1logo')
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(1966693767491857354)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1966694600215857354)
,p_event_id=>wwv_flow_imp.id(1966693900582857354)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(1966698585344857357)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Submeter Feedback'
,p_attribute_01=>'PLSQL_PACKAGE'
,p_attribute_03=>'APEX_UTIL'
,p_attribute_04=>'SUBMIT_FEEDBACK'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(1966690745024857352)
,p_process_success_message=>'Feedback Enviado'
,p_internal_uid=>966753548349342554
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(1966699133679857358)
,p_page_process_id=>wwv_flow_imp.id(1966698585344857357)
,p_page_id=>10050
,p_name=>'p_comment'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>true
,p_display_sequence=>1
,p_value_type=>'ITEM'
,p_value=>'P10050_FEEDBACK'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(1966699622713857358)
,p_page_process_id=>wwv_flow_imp.id(1966698585344857357)
,p_page_id=>10050
,p_name=>'p_application_id'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>true
,p_display_sequence=>2
,p_value_type=>'ITEM'
,p_value=>'APP_ID'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(1966700096064857358)
,p_page_process_id=>wwv_flow_imp.id(1966698585344857357)
,p_page_id=>10050
,p_name=>'p_page_id'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>true
,p_display_sequence=>3
,p_value_type=>'ITEM'
,p_value=>'P10050_PAGE_ID'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(1966700616575857358)
,p_page_process_id=>wwv_flow_imp.id(1966698585344857357)
,p_page_id=>10050
,p_name=>'p_rating'
,p_direction=>'IN'
,p_data_type=>'NUMBER'
,p_has_default=>true
,p_display_sequence=>4
,p_value_type=>'ITEM'
,p_value=>'P10050_RATING'
);
end;
/
prompt --application/pages/page_10051
begin
wwv_flow_imp_page.create_page(
 p_id=>10051
,p_name=>'Feedback Enviado'
,p_alias=>'FEEDBACK-ENVIADO'
,p_page_mode=>'MODAL'
,p_step_title=>'Feedback Enviado'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(1966549865515857031)
,p_page_template_options=>'#DEFAULT#'
,p_required_patch=>wwv_flow_imp.id(1966545788512857026)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'11'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1966691195548857352)
,p_plug_name=>'Feedback Enviado'
,p_icon_css_classes=>'fa-check-circle'
,p_region_template_options=>'#DEFAULT#:t-Alert--wizard:t-Alert--customIcons:t-Alert--success'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2040683448887306517
,p_plug_display_sequence=>10
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1966691060829857352)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(1966691195548857352)
,p_button_name=>'CLOSE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Fechar'
,p_button_position=>'CLOSE'
,p_button_css_classes=>'w40p'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(1966691327701857352)
,p_name=>unistr('Cancelar Caixa de Di\00E1logo')
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(1966691060829857352)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1966703044931857360)
,p_event_id=>wwv_flow_imp.id(1966691327701857352)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
end;
/
prompt --application/pages/page_10053
begin
wwv_flow_imp_page.create_page(
 p_id=>10053
,p_name=>'Gerenciar Feedback'
,p_alias=>'GERENCIAR-FEEDBACK'
,p_page_mode=>'MODAL'
,p_step_title=>'Gerenciar Feedback'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(1966549865515857031)
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Color feedback rating icons */',
'.feedback-positive { color: var(--ut-feedback-positive-text-color, var(--ut-palette-success)); }',
'.feedback-neutral { color: var(--ut-feedback-neutral-text-color, var(--ut-palette-warning)); }',
'.feedback-negative { color: var(--ut-feedback-negative-text-color, var(--ut-palette-danger)); }'))
,p_step_template=>2100407606326202693
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(1966548326246857028)
,p_required_patch=>wwv_flow_imp.id(1966545788512857026)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>O feedback pode ser inserido pelos usu\00E1rios finais em qualquer p\00E1gina normal dentro do aplicativo.</p>'),
unistr('<p>Este relat\00F3rio mostra o feedback informado, qualquer resposta inserida pelos administradores e o status do feedback.</p>'),
unistr('<p>Clique no \00EDcone de edi\00E7\00E3o (l\00E1pis amarelo) para inserir uma resposta ou atualizar o status do feedback.</p>'),
unistr('<p><em><strong>Observa\00E7\00E3o:</strong> Se os destinat\00E1rios de feedback forem definidos, ent\00E3o os envios de feedback tamb\00E9m ser\00E3o feitos por e-mail aos endere\00E7os de e-mail da lista de destinat\00E1rios de feedback.</em></p>')))
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1966692493777857352)
,p_plug_name=>'Gerenciar Feedback'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select feedback_id id,',
'    page_id||''. ''||page_name page_name,',
'    created_on created,',
'    lower(created_by) created_by,',
'    feedback,',
'    feedback_rating rating,',
'    case feedback_rating',
'      when 1 then ''fa-frown-o feedback-negative'' ',
'      when 2 then ''fa-emoji-neutral feedback-neutral''  ',
'      when 3 then ''fa-smile-o feedback-positive''',
'    end rating_icon,',
'    feedback_status status,',
'    public_response response,',
'    http_user_agent user_agent,',
'    updated_on updated,',
'    lower(updated_by) updated_by,',
'    page_id',
'from apex_team_feedback f',
'where application_id = :APP_ID'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Gerenciar Feedback'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(1966716010273857369)
,p_name=>'Gerenciar Feedback'
,p_max_row_count_message=>unistr('A contagem m\00E1xima de linhas deste relat\00F3rio \00E9 #MAX_ROW_COUNT# linhas. Aplique um filtro para reduzir o n\00FAmero de registros em sua consulta.')
,p_no_data_found_message=>unistr('Dados n\00E3o encontrados.')
,p_base_pk1=>'ID'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:10054:&APP_SESSION.::&DEBUG.:RP:P10054_ID:\#ID#\'
,p_detail_link_text=>'<span role="img" aria-label="Editar" class="fa fa-edit" title="Editar"></span>'
,p_owner=>'JONAS.SPINDLER@MJ.GOV.BR'
,p_internal_uid=>966770973278342566
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1966716659202857370)
,p_db_column_name=>'ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1966717132450857370)
,p_db_column_name=>'PAGE_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>unistr('P\00E1gina')
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1966717440542857371)
,p_db_column_name=>'CREATED'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Arquivado'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1966717878341857371)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Arquivado por'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1966718298292857371)
,p_db_column_name=>'FEEDBACK'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Feedback'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1966718679272857372)
,p_db_column_name=>'RATING'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>unistr('Classifica\00E7\00E3o')
,p_column_html_expression=>'<span class="fa #RATING_ICON#" aria-hidden="true" title="#RATING#"></span>'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_rpt_named_lov=>wwv_flow_imp.id(1966696340566857356)
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1966719077007857372)
,p_db_column_name=>'RATING_ICON'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'RATING ICON'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1966719481375857372)
,p_db_column_name=>'STATUS'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Status'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_rpt_named_lov=>wwv_flow_imp.id(1966708746209857365)
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1966719884857857373)
,p_db_column_name=>'RESPONSE'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Resposta'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1966720307152857373)
,p_db_column_name=>'USER_AGENT'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>unistr('Agente do Usu\00E1rio')
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1966720662990857373)
,p_db_column_name=>'UPDATED'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Atualizado'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1966721037198857374)
,p_db_column_name=>'UPDATED_BY'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Atualizado por'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1966721449006857374)
,p_db_column_name=>'PAGE_ID'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>unistr('P\00E1gina')
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(1966726120544857379)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'9667811'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PAGE_NAME:CREATED:CREATED_BY:FEEDBACK:RATING:STATUS:RESPONSE:UPDATED:UPDATED_BY'
,p_sort_column_1=>'UPDATED'
,p_sort_direction_1=>'DESC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1966727013471857379)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(1966692493777857352)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Redefinir'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&APP_SESSION.::&DEBUG.:&APP_PAGE_ID.,RR::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(1966692432412857352)
,p_name=>unistr('Atualizar Relat\00F3rio')
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(1966692493777857352)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1966727689009857380)
,p_event_id=>wwv_flow_imp.id(1966692432412857352)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(1966692493777857352)
);
end;
/
prompt --application/pages/page_10054
begin
wwv_flow_imp_page.create_page(
 p_id=>10054
,p_name=>'Feedback'
,p_alias=>'FEEDBACK1'
,p_page_mode=>'MODAL'
,p_step_title=>'Feedback'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(1966549865515857031)
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Color feedback rating icons */',
'.feedback-positive { color: var(--ut-feedback-positive-text-color, var(--ut-palette-success)); }',
'.feedback-neutral { color: var(--ut-feedback-neutral-text-color, var(--ut-palette-warning)); }',
'.feedback-negative { color: var(--ut-feedback-negative-text-color, var(--ut-palette-danger)); }'))
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(1966548326246857028)
,p_required_patch=>wwv_flow_imp.id(1966545788512857026)
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1966691759786857352)
,p_plug_name=>unistr('\00C1rea de Itens do Form')
,p_region_template_options=>'#DEFAULT#:t-Form--stretchInputs'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1966691865879857352)
,p_plug_name=>unistr('Bot\00F5es')
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1966692035995857352)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(1966691865879857352)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--gapLeft'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('Aplicar Altera\00E7\00F5es')
,p_button_position=>'CREATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1966704690744857361)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(1966691865879857352)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancelar'
,p_button_position=>'EDIT'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1966692224897857352)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(1966691865879857352)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Excluir'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P10054_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1966706258518857363)
,p_name=>'P10054_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(1966691759786857352)
,p_display_as=>'NATIVE_HIDDEN'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1966706706670857363)
,p_name=>'P10054_PAGE_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(1966691759786857352)
,p_prompt=>unistr('P\00E1gina')
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>1609121967514267634
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1966707105439857363)
,p_name=>'P10054_FILED'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(1966691759786857352)
,p_prompt=>'Arquivado'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1966707516204857363)
,p_name=>'P10054_RATING_ICON'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(1966691759786857352)
,p_prompt=>unistr('Classifica\00E7\00E3o')
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'HTML',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1966707841839857364)
,p_name=>'P10054_FEEDBACK'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(1966691759786857352)
,p_prompt=>'Feedback'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>1609121967514267634
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1966708258257857364)
,p_name=>'P10054_RESPONSE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(1966691759786857352)
,p_prompt=>'Resposta'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>64
,p_cMaxlength=>4000
,p_cHeight=>4
,p_field_template=>1609121967514267634
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1966708687691857365)
,p_name=>'P10054_FEEDBACK_STATUS'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(1966691759786857352)
,p_prompt=>'Status'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'FEEDBACK_STATUS'
,p_lov=>'.'||wwv_flow_imp.id(1966708746209857365)||'.'
,p_field_template=>1609121967514267634
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'N',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1966710951354857366)
,p_name=>'P10054_USER_AGENT'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(1966691759786857352)
,p_prompt=>unistr('Agente do Usu\00E1rio')
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>1609121967514267634
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(1966704764255857361)
,p_name=>unistr('Cancelar Caixa de Di\00E1logo')
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(1966704690744857361)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1966705472432857362)
,p_event_id=>wwv_flow_imp.id(1966704764255857361)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(1966711473870857367)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Carregar Dados'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'for l_feedback in (',
'   select page_id,',
'          page_name,',
'          case feedback_rating',
'                when 1 then ''<span class="fa fa-frown-o feedback-negative" aria-hidden="true" title="Negativo"></span>'' ',
'                when 2 then ''<span class="fa fa-emoji-neutral feedback-neutral" aria-hidden="true" title="Neutro"></span>''  ',
'                when 3 then ''<span class="fa fa-smile-o feedback-positive" aria-hidden="true" title="Positivo"></span>'' ',
'                end rating_icon,',
'          lower(created_by) || '' - '' || apex_util.get_since(created_on) filed,',
'          feedback,',
'          public_response,',
'          feedback_status,',
'          http_user_agent',
'     from apex_team_feedback',
'    where feedback_id = :P10054_ID )',
'loop',
'   :P10054_PAGE_ID         := l_feedback.page_id||''. ''||l_feedback.page_name;',
'   :P10054_FILED           := l_feedback.filed;',
'   :P10054_RATING_ICON     := l_feedback.rating_icon;',
'   :P10054_FEEDBACK        := l_feedback.feedback;',
'   :P10054_RESPONSE        := l_feedback.public_response;',
'   :P10054_FEEDBACK_STATUS := l_feedback.feedback_status;',
'   :P10054_USER_AGENT      := l_feedback.http_user_agent;',
'end loop;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>966766436875342564
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(1966711796927857367)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Responder ao Feedback'
,p_attribute_01=>'PLSQL_PACKAGE'
,p_attribute_03=>'APEX_UTIL'
,p_attribute_04=>'REPLY_TO_FEEDBACK'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(1966692035995857352)
,p_process_success_message=>unistr('A\00E7\00E3o Processada.')
,p_internal_uid=>966766759932342564
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(1966712253478857367)
,p_page_process_id=>wwv_flow_imp.id(1966711796927857367)
,p_page_id=>10054
,p_name=>'p_feedback_id'
,p_direction=>'IN'
,p_data_type=>'NUMBER'
,p_has_default=>false
,p_display_sequence=>1
,p_value_type=>'ITEM'
,p_value=>'P10054_ID'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(1966712768583857367)
,p_page_process_id=>wwv_flow_imp.id(1966711796927857367)
,p_page_id=>10054
,p_name=>'p_status'
,p_direction=>'IN'
,p_data_type=>'NUMBER'
,p_has_default=>true
,p_display_sequence=>2
,p_value_type=>'ITEM'
,p_value=>'P10054_FEEDBACK_STATUS'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(1966713274552857368)
,p_page_process_id=>wwv_flow_imp.id(1966711796927857367)
,p_page_id=>10054
,p_name=>'p_public_response'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>true
,p_display_sequence=>3
,p_value_type=>'ITEM'
,p_value=>'P10054_RESPONSE'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(1966713666150857368)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Excluir Feedback'
,p_attribute_01=>'PLSQL_PACKAGE'
,p_attribute_03=>'APEX_UTIL'
,p_attribute_04=>'DELETE_FEEDBACK'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(1966692224897857352)
,p_process_success_message=>unistr('Feedback Exclu\00EDdo')
,p_internal_uid=>966768629155342565
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(1966714204023857368)
,p_page_process_id=>wwv_flow_imp.id(1966713666150857368)
,p_page_id=>10054
,p_name=>'p_feedback_id'
,p_direction=>'IN'
,p_data_type=>'NUMBER'
,p_has_default=>false
,p_display_sequence=>1
,p_value_type=>'ITEM'
,p_value=>'P10054_ID'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(1966714701950857368)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>unistr('Limpar Cache de P\00E1gina(s)')
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(1966692224897857352)
,p_internal_uid=>966769664955342565
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(1966715114193857369)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>unistr('Fechar Caixa de Di\00E1logo')
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>966770077198342566
);
end;
/
prompt --application/pages/page_10060
begin
wwv_flow_imp_page.create_page(
 p_id=>10060
,p_name=>'Sobre'
,p_alias=>'SOBRE'
,p_step_title=>'Sobre'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(1966549865515857031)
,p_page_template_options=>'#DEFAULT#'
,p_required_patch=>wwv_flow_imp.id(1966546262077857026)
,p_protection_level=>'C'
,p_help_text=>unistr('Todo texto de ajuda do aplicativo pode ser acessado nesta p\00E1gina. Os links da regi\00E3o "Documenta\00E7\00E3o" fornecem uma explica\00E7\00E3o mais detalhada das funcionalidades do aplicativo.')
,p_page_component_map=>'11'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1966728561942857381)
,p_plug_name=>unistr('P\00E1gina Sobre')
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--padded:t-ContentBlock--h1:t-ContentBlock--lightBG'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2322115667525957943
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>'O texto sobre este aplicativo pode ser colocado aqui.'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
end;
/
prompt --application/pages/page_10061
begin
wwv_flow_imp_page.create_page(
 p_id=>10061
,p_name=>'Ajuda'
,p_alias=>'AJUDA'
,p_page_mode=>'MODAL'
,p_step_title=>'Ajuda'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_required_patch=>wwv_flow_imp.id(1966546262077857026)
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'25'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1966729258519857381)
,p_plug_name=>unistr('Caixa de Di\00E1logo Pesquisar')
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_function_body_language=>'PLSQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'for l_page in ( select page_title,',
'                       help_text',
'                  from apex_application_pages',
'                 where application_id = :APP_ID',
'                   and page_id = :P10061_PAGE_ID )',
'loop',
'    if l_page.help_text is null then',
unistr('        return ''N\00E3o h\00E1 ajuda dispon\00EDvel para esta p\00E1gina.'';'),
'    else',
'        return case when substr(l_page.help_text, 1, 3) != ''<p>'' then ''<p>'' end ||',
'               apex_application.do_substitutions(l_page.help_text) ||',
'               case when substr(trim(l_page.help_text), -4) != ''</p>'' then ''</p>'' end;',
'    end if;',
'end loop;'))
,p_plug_source_type=>'NATIVE_DYNAMIC_CONTENT'
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1966729697290857382)
,p_name=>'P10061_PAGE_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(1966729258519857381)
,p_display_as=>'NATIVE_HIDDEN'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
end;
/
prompt --application/pages/page_20000
begin
wwv_flow_imp_page.create_page(
 p_id=>20000
,p_name=>unistr('Defini\00E7\00F5es')
,p_alias=>unistr('DEFINI\00C7\00D5ES')
,p_page_mode=>'MODAL'
,p_step_title=>unistr('Defini\00E7\00F5es')
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(1966752907194857480)
,p_step_template=>1661186590416509825
,p_page_template_options=>'#DEFAULT#:t-Dialog--noPadding:js-dialog-class-t-Drawer--pullOutEnd:js-dialog-class-t-Drawer--md'
,p_required_patch=>wwv_flow_imp.id(1966753419157857481)
,p_protection_level=>'C'
,p_help_text=>unistr('Esta p\00E1gina cont\00E9m uma lista de defini\00E7\00F5es relacionadas ao usu\00E1rio do aplicativo atual.')
,p_page_component_map=>'23'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1966758026559857487)
,p_plug_name=>'&APP_USER.'
,p_region_template_options=>'#DEFAULT#:t-HeroRegion--hideIcon'
,p_plug_template=>2674017834225413037
,p_plug_display_sequence=>10
,p_plug_display_condition_type=>'NOT_EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from apex_application_auth ',
' where application_id            = :APP_ID ',
'   and is_current_authentication = ''Y'' ',
'   and scheme_type_code          = ''NATIVE_APEX_ACCOUNTS'''))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1966758347290857488)
,p_plug_name=>'&APP_USER.'
,p_region_template_options=>'#DEFAULT#:t-CardsRegion--styleB'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2072724515482255512
,p_plug_display_sequence=>20
,p_query_type=>'TABLE'
,p_query_table=>'APEX_WORKSPACE_APEX_USERS'
,p_query_where=>'user_name = :APP_USER'
,p_include_rowid_column=>false
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_show_total_row_count=>false
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 ',
'  from apex_application_auth ',
' where application_id            = :APP_ID ',
'   and is_current_authentication = ''Y'' ',
'   and scheme_type_code          = ''NATIVE_APEX_ACCOUNTS'''))
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(1966758919215857489)
,p_region_id=>wwv_flow_imp.id(1966758347290857488)
,p_layout_type=>'ROW'
,p_card_css_classes=>'a-CardView--noUI'
,p_title_adv_formatting=>false
,p_title_column_name=>'USER_NAME'
,p_sub_title_adv_formatting=>false
,p_sub_title_column_name=>'EMAIL'
,p_body_adv_formatting=>false
,p_second_body_adv_formatting=>false
,p_icon_source_type=>'INITIALS'
,p_icon_class_column_name=>'EMAIL'
,p_icon_position=>'START'
,p_media_adv_formatting=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1966759399397857489)
,p_plug_name=>unistr('Defini\00E7\00F5es')
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-MediaList--showBadges:u-colors'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>30
,p_list_id=>wwv_flow_imp.id(1966756979474857485)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2067994871570597190
);
end;
/
prompt --application/pages/page_20010
begin
wwv_flow_imp_page.create_page(
 p_id=>20010
,p_name=>unistr('Notifica\00E7\00F5es de Envio')
,p_alias=>unistr('NOTIFICA\00C7\00D5ES-DE-ENVIO')
,p_page_mode=>'MODAL'
,p_step_title=>unistr('Defini\00E7\00F5es - Notifica\00E7\00F5es de Envio')
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(1966752907194857480)
,p_javascript_code_onload=>'apex.pwa.initPushSubscriptionPage();'
,p_step_template=>1661186590416509825
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_required_patch=>wwv_flow_imp.id(1966753089609857481)
,p_protection_level=>'C'
,p_help_text=>unistr('Esta p\00E1gina cont\00E9m as defini\00E7\00F5es para controlar a inscri\00E7\00E3o na notifica\00E7\00E3o por push do usu\00E1rio atual.')
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1966754389926857482)
,p_plug_name=>unistr('Envio de Notifica\00E7\00F5es N\00E3o Suportado')
,p_region_css_classes=>'a-pwaPush--subscriptionRegion--not-supported'
,p_icon_css_classes=>'fa-bell-slash-o'
,p_region_template_options=>'#DEFAULT#:t-Alert--colorBG:t-Alert--wizard:t-Alert--customIcons:t-Alert--warning:t-Alert--removeHeading js-removeLandmark:t-Form--xlarge'
,p_region_attributes=>'#APEX_CSP_DISPLAY_NONE#'
,p_plug_template=>2040683448887306517
,p_plug_display_sequence=>20
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>unistr('No momento, n\00E3o h\00E1 suporte para notifica\00E7\00F5es por push no seu browser.')
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1966754744414857484)
,p_plug_name=>unistr('Notifica\00E7\00F5es de Envio')
,p_region_css_classes=>'a-pwaPush--subscriptionRegion'
,p_icon_css_classes=>'fa-bell-o'
,p_region_template_options=>'#DEFAULT#:t-Alert--colorBG:t-Alert--wizard:t-Alert--customIcons:t-Alert--info:t-Alert--removeHeading js-removeLandmark:t-Form--xlarge'
,p_plug_template=>2040683448887306517
,p_plug_display_sequence=>30
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>unistr('O recurso de notifica\00E7\00F5es por push deve estar ativado em cada dispositivo no qual voc\00EA deseja receber as notifica\00E7\00F5es. Na primeira vez que voc\00EA ativar as notifica\00E7\00F5es por push, conceda permiss\00F5es ao seu browser. Essa defini\00E7\00E3o pode ser alterada a qua')
||'lquer momento.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1966754061182857482)
,p_button_sequence=>10
,p_button_name=>'BACK'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--link:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>unistr('Defini\00E7\00F5es')
,p_button_redirect_url=>'f?p=&APP_ID.:20000:&APP_SESSION.::&DEBUG.:::'
,p_button_css_classes=>'t-Button--inlineLink'
,p_icon_css_classes=>'fa-chevron-left'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1966755249897857484)
,p_name=>'P20010_ENABLE_PUSH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(1966754744414857484)
,p_prompt=>unistr('Ativar notifica\00E7\00F5es por push neste dispositivo')
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#:margin-top-sm'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(1966755609414857484)
,p_name=>'Alterar P20010_ENABLE_PUSH'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P20010_ENABLE_PUSH'
,p_condition_element=>'P20010_ENABLE_PUSH'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'Y'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1966756112647857485)
,p_event_id=>wwv_flow_imp.id(1966755609414857484)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>unistr('Inscrever-se nas notifica\00E7\00F5es por push')
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.pwa.subscribePushNotifications();'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1966756566948857485)
,p_event_id=>wwv_flow_imp.id(1966755609414857484)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>unistr('Cancelar inscri\00E7\00E3o nas notifica\00E7\00F5es por push')
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.pwa.unsubscribePushNotifications();'
);
end;
/
prompt --application/deployment/definition
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
wwv_flow_imp.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false)
);
commit;
end;
/
set verify on feedback on define on
prompt  ...done
