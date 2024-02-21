prompt --application/set_environment
set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- ORACLE Application Express (APEX) export file
--
-- You should run the script connected to SQL*Plus as the Oracle user
-- APEX_210100 or as the owner (parsing schema) of the application.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_api.import_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>17018364046666370
,p_default_application_id=>10032
,p_default_id_offset=>188773846644493155
,p_default_owner=>'DGMS'
);
end;
/
 
prompt APPLICATION 10032 - FAISAL MOVERS HOUSING
--
-- Application Export:
--   Application:     10032
--   Name:            FAISAL MOVERS HOUSING
--   Date and Time:   10:53 Wednesday February 21, 2024
--   Exported By:     UMAR
--   Flashback:       0
--   Export Type:     Page Export
--   Manifest
--     PAGE: 172
--   Manifest End
--   Version:         21.1.7
--   Instance ID:     697968588975354
--

begin
null;
end;
/
prompt --application/pages/delete_00172
begin
wwv_flow_api.remove_page (p_flow_id=>wwv_flow.g_flow_id, p_page_id=>172);
end;
/
prompt --application/pages/page_00172
begin
wwv_flow_api.create_page(
 p_id=>172
,p_user_interface_id=>wwv_flow_api.id(158393926828282951)
,p_name=>'DGMS BILLS SETUP REPORT'
,p_alias=>'DGMS-BILLS-SETUP-REPORT'
,p_step_title=>'DGMS BILLS SETUP REPORT'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'UMAR'
,p_last_upd_yyyymmddhh24miss=>'20240220130841'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(174309863451871766)
,p_plug_name=>'Report 1'
,p_region_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="background-color:#ffe4c4;";'
,p_plug_template=>wwv_flow_api.id(158485371535283090)
,p_plug_display_sequence=>30
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'        DBS.ID,',
'        DBS.ID ID1, ',
'        DBS.METER_TYPES,',
'        DBS.CUSTOMER_NAME,',
'        -- DBSC.LIVING_STATUS,',
'        DBS.PORTION,',
'        DBS.PLOT_ID,',
'        -- LISTAGG(DPD.PLOT_NO, '':'') OVER (PARTITION BY DBS.ID) PLOT_NO,',
'        DBS.PREV_READING,',
'        DBS.METER_REF_NO,',
'        DBS.CREATED_BY,',
'        DBS.CREATED_ON,',
'        DBS.REMARKS,',
'   ',
'        DBS.ACTIVE,',
'        DBS.SITE_NAME,',
'        -- (SELECT DESCRIPTION FROM APP_SETUP_SITE ASS WHERE ASS.SITE_ID = SITE_NAME) AS DESCRIPTION,',
'        PAYABLE_ARREARS,',
'        RECEIVABLE_ARREARS,',
'        PREV_READING1,METER_REF_NO1,PREV_READING2,METER_REF_NO2,',
'        DBS.ORG_ID,',
'    ',
'        case when METER_STATUS =''ACTIVE'' THEN "METER_STATUS" ELSE NULL END AS METER_STATUS,',
'        case when METER_STATUS =''INACTIVE'' THEN METER_STATUS ELSE NULL END AS METER_INACTIVE,',
'      --  METER_STATUS MS,',
'     ',
'',
'      ',
'        ''Living Status'' LS',
'from DGMS_BILLS_SETUP DBS',
'-- JOIN DGMS_BILLS_SETUP_CHILD DBSC ON DBSC.BILL_SETUP_ID=DBS.ID AND DBSC.STATUS=''Y'' ',
'-- AND  DBSC.ORG_ID = CASE WHEN  TO_NUMBER( :P_ORG_ID) = 4021 THEN DBSC.ORG_ID ELSE TO_NUMBER( :P_ORG_ID) END',
'--WHERE  DBS.ORG_ID = CASE WHEN  TO_NUMBER( :P_ORG_ID) = 4021 THEN DBS.ORG_ID ELSE TO_NUMBER( :P_ORG_ID) END',
'-- AND DBS.METER_TYPES = :P172_METER_TYPE',
'ORDER BY ID DESC;'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_page_header=>'Report 1'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(174310269714871767)
,p_name=>'Report 1'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_download_formats=>'CSV:HTML:EMAIL:XLSX:PDF:RTF'
,p_detail_link=>'f?p=&APP_ID.:173:&SESSION.::&DEBUG.:RP,:P173_ID:\#ID#\'
,p_detail_link_text=>'<span aria-label="Edit"><span class="fa fa-edit" aria-hidden="true" title="Edit"></span></span>'
,p_owner=>'SHAHBAZ'
,p_internal_uid=>174310269714871767
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(174310301786871772)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(206420121255028945)
,p_db_column_name=>'PLOT_ID'
,p_display_order=>11
,p_column_identifier=>'Y'
,p_column_label=>'Plot No.'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_api.id(205080054037051039)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(174310771479871772)
,p_db_column_name=>'CUSTOMER_NAME'
,p_display_order=>21
,p_column_identifier=>'B'
,p_column_label=>'Customer Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(182412999017377106)
,p_db_column_name=>'PORTION'
,p_display_order=>31
,p_column_identifier=>'O'
,p_column_label=>'Portion'
,p_column_type=>'STRING'
,p_display_condition_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_display_condition=>'P172_METER_TYPE'
,p_display_condition2=>'COMMUNITY BILL'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(174311942913871773)
,p_db_column_name=>'METER_REF_NO'
,p_display_order=>41
,p_column_identifier=>'E'
,p_column_label=>'Meter Ref No'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_display_condition_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_display_condition=>'P172_METER_TYPE'
,p_display_condition2=>'COMMUNITY BILL'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(173393477102478727)
,p_db_column_name=>'PREV_READING'
,p_display_order=>51
,p_column_identifier=>'K'
,p_column_label=>'Prev Reading'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_display_condition_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_display_condition=>'P172_METER_TYPE'
,p_display_condition2=>'COMMUNITY BILL'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(174475905303060632)
,p_db_column_name=>'METER_TYPES'
,p_display_order=>61
,p_column_identifier=>'L'
,p_column_label=>'Meter Types'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(203130571163943607)
,p_db_column_name=>'PAYABLE_ARREARS'
,p_display_order=>81
,p_column_identifier=>'W'
,p_column_label=>'Arrears'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(203870540299165102)
,p_db_column_name=>'SITE_NAME'
,p_display_order=>91
,p_column_identifier=>'T'
,p_column_label=>'Site Name'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_api.id(207818491378989254)
,p_rpt_show_filter_lov=>'N'
,p_display_condition_type=>'NEVER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(209733224898740416)
,p_db_column_name=>'ORG_ID'
,p_display_order=>101
,p_column_identifier=>'Z'
,p_column_label=>'Site Name'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_api.id(207818491378989254)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(182413188660377108)
,p_db_column_name=>'ACTIVE'
,p_display_order=>111
,p_column_identifier=>'P'
,p_column_label=>'Active'
,p_column_link=>'javascript:$s(''P172_METER_ID'',''#ID#'');'
,p_column_linktext=>'#ACTIVE#'
,p_column_link_attr=>'class="t-Button t-Button--simple t-Button--hot t-Button--stretch"'
,p_column_type=>'STRING'
,p_display_condition_type=>'NEVER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(203871580609165112)
,p_db_column_name=>'RECEIVABLE_ARREARS'
,p_display_order=>121
,p_column_identifier=>'X'
,p_column_label=>'Receivable Arrears'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(174312368611871773)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>131
,p_column_identifier=>'F'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(174312738340871774)
,p_db_column_name=>'CREATED_ON'
,p_display_order=>141
,p_column_identifier=>'G'
,p_column_label=>'Created On'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(212078764955416128)
,p_db_column_name=>'LS'
,p_display_order=>151
,p_column_identifier=>'AA'
,p_column_label=>'Living Status Detail'
,p_column_link=>'javascript:$s(''P172_LIVING_ID'',''#ID#'');apex.region(''LS'').refresh();openModal(''LS'');'
,p_column_linktext=>'#LS#'
,p_column_link_attr=>'class="t-Button t-Button--simple t-Button--hot t-Button--stretch"'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(239585297156541408)
,p_db_column_name=>'ID1'
,p_display_order=>171
,p_column_identifier=>'AC'
,p_column_label=>'Id1'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(239569956170462821)
,p_db_column_name=>'REMARKS'
,p_display_order=>181
,p_column_identifier=>'AD'
,p_column_label=>'Remarks'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(239586879269541424)
,p_db_column_name=>'METER_STATUS'
,p_display_order=>191
,p_column_identifier=>'AI'
,p_column_label=>'Meter Status'
,p_column_link=>'javascript:$s(''P172_METER_ID'',''#ID#'');openModal(''METER'');apex.region(''METER'').refresh();'
,p_column_linktext=>'#METER_STATUS#'
,p_column_link_attr=>'class="t-Button t-Button--simple t-Button--hot t-Button--stretch"'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(238343480598161735)
,p_db_column_name=>'METER_INACTIVE'
,p_display_order=>201
,p_column_identifier=>'AJ'
,p_column_label=>'Meter Inactive'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(240437671932089210)
,p_db_column_name=>'PREV_READING1'
,p_display_order=>211
,p_column_identifier=>'AK'
,p_column_label=>'Prev Reading1'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(240437780043089211)
,p_db_column_name=>'METER_REF_NO1'
,p_display_order=>221
,p_column_identifier=>'AL'
,p_column_label=>'Meter Ref No1'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(240437864437089212)
,p_db_column_name=>'PREV_READING2'
,p_display_order=>231
,p_column_identifier=>'AM'
,p_column_label=>'Prev Reading2'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(240437991879089213)
,p_db_column_name=>'METER_REF_NO2'
,p_display_order=>241
,p_column_identifier=>'AN'
,p_column_label=>'Meter Ref No2'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(174315715243873487)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1743158'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ID:PLOT_ID:CUSTOMER_NAME:LS:PORTION:METER_TYPES:METER_REF_NO:PREV_READING:PAYABLE_ARREARS:CREATED_BY:CREATED_ON:ORG_ID:REMARKS:METER_INACTIVE:METER_STATUS::PREV_READING1:METER_REF_NO1:PREV_READING2:METER_REF_NO2'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(179269648501748704)
,p_plug_name=>'Meter Details'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useRegionTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(158474134065283074)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(158541112395283177)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(158417037603282996)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(182412484564377101)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(158514529862283130)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(212077251158416113)
,p_name=>'Living Status Detail'
,p_region_name=>'LS'
,p_template=>wwv_flow_api.id(158490988835283096)
,p_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-DialogRegion--noPadding:js-dialog-size600x400:t-Form--slimPadding'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID,',
'    --    PLOT_ID,',
'    --    BILL_SETUP_ID,',
'       LIVING_STATUS,',
'       STATUS',
'    --    SPORTS_CLUB,',
'    --    TRAFFIC_VIOLATION_CHARGES,',
'    --    DAMAGE_CHARGES,',
'    --    BY_LAWS_VIOLATION_CHARGES,',
'    --    CREATED_BY,',
'    --    CREATED_ON,',
'    --    UPDATED_BY,',
'    --    UPDATED_ON,',
'    --    ORG_ID',
'  from DGMS_BILLS_SETUP_CHILD',
'  where BILL_SETUP_ID =:P172_LIVING_ID'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P172_LIVING_ID'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(158455959472283055)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(212077348729416114)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>10
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(212077676163416117)
,p_query_column_id=>2
,p_column_alias=>'LIVING_STATUS'
,p_column_display_sequence=>40
,p_column_heading=>'Living Status'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(212077736195416118)
,p_query_column_id=>3
,p_column_alias=>'STATUS'
,p_column_display_sequence=>50
,p_column_heading=>'Status'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(238030294062586434)
,p_plug_name=>'Meter Status'
,p_region_name=>'METER'
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>wwv_flow_api.id(158490988835283096)
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID,',
' ',
'        METER_STATUS METER,',
'       REMARKS',
'  from DGMS_BILLS_SETUP',
'  WHERE ID =:P172_METER_ID'))
,p_is_editable=>false
,p_plug_source_type=>'NATIVE_FORM'
,p_ajax_items_to_submit=>'P172_METER_ID'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(239585358495541409)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(238030294062586434)
,p_button_name=>'SUBMIT'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(158418434726282996)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'<b>Inactive Meter</b>'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(174315116424871780)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(179269648501748704)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(158418434726282996)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:173:&SESSION.::&DEBUG.:173::'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(182412547833377102)
,p_name=>'P172_METER_TYPE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(182412484564377101)
,p_item_default=>'ELECTRICITY BILL'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC2:ELECTRICITY BILL;ELECTRICITY BILL,WATER BILL;WATER BILL,COMMUNITY BILL;COMMUNITY BILL'
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(158420883850282999)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--radioButtonGroup'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'3'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(182413383871377110)
,p_name=>'P172_METER_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(174309863451871766)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(212078820016416129)
,p_name=>'P172_LIVING_ID'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(174309863451871766)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(212079159424416132)
,p_name=>'P172_L_STATUS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(174309863451871766)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(238030409425586436)
,p_name=>'P172_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(238030294062586434)
,p_item_source_plug_id=>wwv_flow_api.id(238030294062586434)
,p_source=>'ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(239569516140462817)
,p_name=>'P172_METER_STATUS1'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(174309863451871766)
,p_item_default=>'ACTIVE'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(239569659865462818)
,p_name=>'P172_METER_STATUS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(238030294062586434)
,p_item_source_plug_id=>wwv_flow_api.id(238030294062586434)
,p_source=>'METER'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(239570397202462825)
,p_name=>'P172_METER_STATUS_HIDE_SHOW1'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(174309863451871766)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(239584996609541405)
,p_name=>'P172_REMARKS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(238030294062586434)
,p_item_source_plug_id=>wwv_flow_api.id(238030294062586434)
,p_prompt=>'<b>Remarks</b>'
,p_source=>'REMARKS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cMaxlength=>1000
,p_cHeight=>5
,p_field_template=>wwv_flow_api.id(158420883850282999)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(182412670079377103)
,p_name=>'REFRESH REPORT'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P172_METER_TYPE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(182412766295377104)
,p_event_id=>wwv_flow_api.id(182412670079377103)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(174309863451871766)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(182413465703377111)
,p_name=>'INACTIVE METER RECORD'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P172_METER_ID'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(182413514428377112)
,p_event_id=>wwv_flow_api.id(182413465703377111)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- UPDATE DGMS_BILLS_SETUP SET METER_STATUS = CASE WHEN METER_STATUS = ''ACTIVE'' THEN  ''INACTIVE'' ELSE NULL END ',
'-- WHERE ID = :P172_METER_ID;',
'-- COMMIT;'))
,p_attribute_02=>'P172_METER_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(212079035647416131)
,p_event_id=>wwv_flow_api.id(182413465703377111)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(182413689056377113)
,p_event_id=>wwv_flow_api.id(182413465703377111)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(212077251158416113)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(239585462643541410)
,p_name=>'New'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(239585358495541409)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(239585501312541411)
,p_event_id=>wwv_flow_api.id(239585462643541410)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- update  DGMS_BILLS_SETUP',
'-- SET METER_STATUS=:P172_METER_STATUS, ',
'-- REMARKS=:P172_REMARKS',
'-- WHERE ID=:P172_METER_ID;',
'-- COMMIT;',
'',
'',
'UPDATE DGMS_BILLS_SETUP ',
'SET ',
'    METER_STATUS = CASE WHEN METER_STATUS = ''ACTIVE'' THEN ''INACTIVE'' ELSE NULL END ,',
'    REMARKS = :P172_REMARKS',
'WHERE ',
'    ID = :P172_METER_ID;',
'',
'COMMIT;',
'',
'',
''))
,p_attribute_02=>'P172_REMARKS,P172_METER_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(239585651223541412)
,p_event_id=>wwv_flow_api.id(239585462643541410)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(174309863451871766)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(239570992250462831)
,p_event_id=>wwv_flow_api.id(239585462643541410)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CANCEL_EVENT'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P172_REMARKS'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(239585749506541413)
,p_event_id=>wwv_flow_api.id(239585462643541410)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(238030294062586434)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(212078902723416130)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'LIVING STATUS'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'stat varchar2(10);',
'begin',
'begin',
'UPDATE DGMS_BILLS_SETUP_CHILD SET STATUS = CASE WHEN STATUS = ''Y'' THEN  ''N'' ELSE ''Y'' END ',
'WHERE ID = :P172_METER_ID;',
'COMMIT;',
'end;',
'select STATUS into stat from DGMS_BILLS_SETUP_CHILD WHERE ID = :P172_METER_ID;',
'if stat=''Y'' then',
'UPDATE ',
'DGMS_BILLS_SETUP_CHILD ',
'set STATUS=''N''',
'WHERE BILL_SETUP_ID = :P172_LIVING_ID and LIVING_STATUS !=:P172_L_STATUS ;',
'commit;',
'end if;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>':P172_L_STATUS is not null and :P172_METER_ID is not null and :P172_LIVING_ID is not null'
,p_process_when_type=>'EXPRESSION'
,p_process_when2=>'PLSQL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(238030310942586435)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_api.id(238030294062586434)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form DGMS BILLS SETUP REPORT'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
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
