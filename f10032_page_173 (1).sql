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
--     PAGE: 173
--   Manifest End
--   Version:         21.1.7
--   Instance ID:     697968588975354
--

begin
null;
end;
/
prompt --application/pages/delete_00173
begin
wwv_flow_api.remove_page (p_flow_id=>wwv_flow.g_flow_id, p_page_id=>173);
end;
/
prompt --application/pages/page_00173
begin
wwv_flow_api.create_page(
 p_id=>173
,p_user_interface_id=>wwv_flow_api.id(158393926828282951)
,p_name=>'DGMS BILLS SETUP FORM'
,p_alias=>'DGMS-BILLS-SETUP-FORM'
,p_step_title=>'DGMS BILLS SETUP FORM'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';',
'$(''#P173_PLOT_ID'').change(function(){',
'',
'     apex.server.process(',
'    ''GET CUSTOMER DET'',                        ',
'    {x01: $v(''P173_PLOT_ID'')},',
'    {',
'        success: function (pData) {',
'            apex.item(''P173_CUSTOMER_NAME'').setValue(pData.CUSTOMER);',
'            apex.item(''P173_CLIENT_IDS'').setValue(pData.CLIENT_IDS);',
'',
'        },',
'       dataType: null               // Response type (here: plain text)',
'    }',
'    );',
'});',
'',
'// $(''#P173_SITE_NAME'').change(function(){',
'//         $s(''P173_ORG_ID'',$v(''P173_SITE_NAME''));',
'// });',
'',
'// $(''#P173_METER_TYPES'').change(function(){',
'',
'//     if(apex.item(''P173_METER_TYPES'').getValue() == ''COMMUNITY BILL''){',
'  ',
'//         //   $x_Show("P175_TARIFF_PER_UNIT");',
'//         $x_Hide("P173_PREV_READING");',
'//         $x_Hide("P173_METER_REF_NO");',
'        // $x_Hide("P175_AQUIFER_CHARGES");',
'',
'',
'',
'        //  }',
'// $(''#P173_ID'').change(function(){',
'',
'//      apex.server.process(',
'//     ''GET PLOT ID'',                        ',
'//     {x01: $v(''P173_ID'')},',
'//     {',
'//         success: function (pData) {',
'//             apex.item(''P173_PLOT_ID'').setValue(pData.PLOT_ID);',
'',
'//         },',
'//        dataType: null               // Response type (here: plain text)',
'//     }',
'//     );',
'// });',
''))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'        if($v(''P173_ID'') != ''''){',
'           // document.getElementById("P173_METER_TYPES").readOnly = true;',
'          //  document.getElementById("P173_PLOT_ID").readOnly = true;',
'            //$(document.wwv_flow.P173_PLOT_ID).attr(''disabled'',true); ',
'            $x(''P173_PREV_READING'').readOnly=true;',
'            $x(''P173_METER_REF_NO'').readOnly=true;',
'            $x(''P173_PLOT_NO'').readOnly=true;',
'            $x(''P173_CUSTOMER_NAME'').readOnly=true;',
'           // $x(''P173_METER_TYPES'').readOnly=true;',
'            $x(''P173_ORGANIZATION'').readOnly=true;',
'            $x(''P173_PLOT_NO'').readOnly=true;',
'            $x(''P173_PLOT_ID'').readOnly=true;',
'        };',
'',
'// if($v(''P173_ID'') != ''''){',
'//      apex.server.process(',
'//     ''GET PLOT ID'',                        ',
'//     {x01: $v(''P173_ID'')},',
'//     {',
'//         success: function (pData) {',
'//             apex.item(''P173_PLOT_ID'').setValue(pData.PLOT_ID);',
'//         },',
'//        dataType: null               // Response type (here: plain text)',
'//     }',
'//     )};'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'UMAR'
,p_last_upd_yyyymmddhh24miss=>'20240220184033'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(174299137463871728)
,p_plug_name=>'DGMS BILLS SETUP FORM'
,p_region_template_options=>'#DEFAULT#:t-Region--accent15:t-Region--scrollBody'
,p_region_attributes=>'style="background-color:#CCCFD1;"'
,p_plug_template=>wwv_flow_api.id(158483500507283087)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(179269509874748703)
,p_plug_name=>'Setup Meter'
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
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(174306405952871754)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(179269509874748703)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(158418434726282996)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:172:&SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(174307601050871759)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(179269509874748703)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(158418434726282996)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_button_condition=>'P173_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(174308080132871759)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(179269509874748703)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(158418434726282996)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_button_condition=>'P173_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(174308301189871759)
,p_branch_action=>'f?p=&APP_ID.:172:&SESSION.::&DEBUG.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(174299408140871733)
,p_name=>'P173_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(174299137463871728)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(174299891809871739)
,p_name=>'P173_CUSTOMER_NAME'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(174299137463871728)
,p_prompt=>'<B>Customer Name</B>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>500
,p_tag_attributes=>'READONLY'
,p_field_template=>wwv_flow_api.id(158420883850282999)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(174300201525871744)
,p_name=>'P173_PLOT_ID'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(174299137463871728)
,p_prompt=>'<B>Plots / Appartments / Houses</B>'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'            DPD.PLOT_NO   AS D,  DPD.ID AS R ',
'    FROM  ',
'                    DGMS_PLOT_DETAILS DPD',
'            JOIN DGMS_PLOTS_BOOKING DPB ON DPB.PLOT_ID = DPD.ID ',
'            AND DPB.BOOKING_STATUS = ''BOOKED'' ',
'    LEFT JOIN  DGMS_BILLS_SETUP DBS ON DPD.ID = DBS.PLOT_ID  ',
'WHERE ',
'    DPD.ORG_ID = :P173_ORGANIZATION',
'    AND (DPD.PLOT_TYPE != ''FILE'' OR DPD.PLOT_TYPE IS NULL)',
'    AND DBS.ID IS  NULL;',
'',
'    '))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P173_ORGANIZATION'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>32
,p_cMaxlength=>100
,p_field_template=>wwv_flow_api.id(158420883850282999)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(174300637374871744)
,p_name=>'P173_PREV_READING'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(174299137463871728)
,p_prompt=>'<B>Prev Reading</B>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(158420883850282999)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(174301071307871745)
,p_name=>'P173_METER_REF_NO'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(174299137463871728)
,p_prompt=>'<B>Meter Ref No.</B>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>500
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(158420883850282999)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(174301497141871745)
,p_name=>'P173_CREATED_BY'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(174299137463871728)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(174301828103871745)
,p_name=>'P173_CREATED_ON'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(174299137463871728)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(174302216204871747)
,p_name=>'P173_UPDATED_BY'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(174299137463871728)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(174302625904871747)
,p_name=>'P173_UPDATED_ON'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(174299137463871728)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(174303049073871747)
,p_name=>'P173_ORG_ID'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_api.id(174299137463871728)
,p_item_default=>'SELECT TO_NUMBER(:p_org_id) FROM DUAL;'
,p_item_default_type=>'SQL_QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(174475802922060631)
,p_name=>'P173_METER_TYPES'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(174299137463871728)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(179219423968245904)
,p_name=>'P173_LIVING_STATUS'
,p_is_required=>true
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(174299137463871728)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<B>Living Status</B>'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select * from (select ''RESIDENTIAL'' r,''RESIDENTIAL''d from dual',
'union',
'select ''COMMERCIAL''r, ''COMMERCIAL''d from dual',
'union',
'select ''UNDER CONSTRUCTION'',''UNDER CONSTRUCTION'' from dual',
'union',
'select ''EMPTY'',''EMPTY'' from dual) --where  d not in (select LIVING_STATUS from DGMS_BILLS_SETUP_CHILD where BILL_SETUP_ID=246 )'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(158420883850282999)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(179269421001748702)
,p_name=>'P173_CLIENT_IDS'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(174299137463871728)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(182412815047377105)
,p_name=>'P173_PORTION'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(174299137463871728)
,p_prompt=>'<B>Portion</B>'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC2:BASEMENT;BASEMENT,MEZZANINE;MEZZANINE,GROUND FLOOR;GROUND FLOOR,FIRST FLOOR;FIRST FLOOR,SECOND FLOOR;SECOND FLOOR,THIRD FLOOR;THIRD FLOOR,FOURTH FLOOR;FOURTH FLOOR,FIFTH FLOOR;FIFTH FLOOR,SIXTH FLOOR;SIXTH FLOOR,SEVENTH FLOOR;SEVENTH FLOOR'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(158420883850282999)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(203130312238943605)
,p_name=>'P173_PAYABLE_ARREARS'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(174299137463871728)
,p_item_default=>'0'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(206419305025028937)
,p_name=>'P173_PLOT_NO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(174299137463871728)
,p_prompt=>'<b>Plot No</b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'READONLY'
,p_field_template=>wwv_flow_api.id(158420883850282999)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(238029421298586426)
,p_name=>'P173_ORGANIZATION'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(174299137463871728)
,p_prompt=>'<b>Organization</b>'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT ASS.DESCRIPTION AS D, ASS.SITE_ID AS R ',
'FROM APP_SETUP_SITE ASS',
'WHERE ASS.OPERATION_TYPE = ''061-0005'' AND ASS.STATUS = ''Y'' AND ASS.SITE_ID <> ''4006'' and ASS.SITE_ID NOT IN (''4021'')',
'ORDER BY SITE_ID ASC;'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(158420883850282999)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(239569816962462820)
,p_name=>'P173_METER_STATUS'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_api.id(174299137463871728)
,p_item_default=>'ACTIVE'
,p_prompt=>'<b>Meter Status</b>'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_attributes=>'READONLY'
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(158420883850282999)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(240437228195089206)
,p_name=>'P173_PREV_READING1'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(174299137463871728)
,p_prompt=>'<b>Prev Reading of 2nd Meter</b>'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_display_when=>'P173_ID'
,p_display_when_type=>'ITEM_IS_NULL'
,p_field_template=>wwv_flow_api.id(158420883850282999)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(240437376118089207)
,p_name=>'P173_PREV_READING2'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(174299137463871728)
,p_prompt=>'<b>Previous Reading of 3rd Meter</b>'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_display_when=>'P173_ID'
,p_display_when_type=>'ITEM_IS_NULL'
,p_field_template=>wwv_flow_api.id(158420883850282999)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(240437458012089208)
,p_name=>'P173_METER_REF_NO1'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(174299137463871728)
,p_prompt=>'<b>Meter Ref No of 2nd Meter</b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_display_when=>'P173_ID'
,p_display_when_type=>'ITEM_IS_NULL'
,p_field_template=>wwv_flow_api.id(158420883850282999)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(240437510260089209)
,p_name=>'P173_METER_REF_NO2'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_api.id(174299137463871728)
,p_prompt=>'<b>Meter Ref No of 3rd Meter</b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_display_when=>'P173_ID'
,p_display_when_type=>'ITEM_IS_NULL'
,p_field_template=>wwv_flow_api.id(158420883850282999)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(240438044533089214)
,p_name=>'P173_PREV_READING_U'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_api.id(174299137463871728)
,p_prompt=>'<b>Prev Reading of 2nd Meter</b>'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_display_when=>'P173_ID'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_api.id(158420883850282999)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(240438187190089215)
,p_name=>'P173_METER_REF_NO_U'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_api.id(174299137463871728)
,p_prompt=>'<b>Meter Ref No of 2nd Meter</b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_display_when=>'P173_ID'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_api.id(158420883850282999)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(240438248935089216)
,p_name=>'P173_PREV_READING_U2'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_api.id(174299137463871728)
,p_prompt=>'<b>Previous Reading of 3rd Meter</b>'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_display_when=>'P173_ID'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_api.id(158420883850282999)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(240438303846089217)
,p_name=>'P173_METER_REF_NO_U2'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_api.id(174299137463871728)
,p_prompt=>'<b>Meter Ref No of 3rd Meter</b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_display_when=>'P173_ID'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_api.id(158420883850282999)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(182413070464377107)
,p_validation_name=>'DUPLICATE RECODE'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_count NUMBER;',
'BEGIN',
'    IF :P173_METER_TYPES = ''COMMUNITY BILL'' THEN',
'        -- Count the number of records matching the condition',
'        SELECT COUNT(*) INTO v_count FROM DGMS_BILLS_SETUP WHERE ID = :P173_ID;',
'',
'        -- Check if any record exists',
'        IF v_count > 0 THEN',
'            -- Return an error message if a record already exists',
'            RETURN (''This Record Already Exists!'');',
'        END IF;',
'    END IF;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        -- Handle any exceptions here if required',
'        RETURN (''An error occurred. Please contact the administrator.'');',
'END;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_always_execute=>'Y'
,p_validation_condition_type=>'NEVER'
,p_when_button_pressed=>wwv_flow_api.id(174307601050871759)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(209731834290740402)
,p_validation_name=>'DUPLICATE RECODE '
,p_validation_sequence=>20
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'V_COUNT NUMBER;',
'chk NUMBER;',
'--CH varchar(6);',
'--LIVING_STATUSs  varchar(20);',
'BEGIN',
'if:P173_METER_TYPES!=''COMMUNITY BILL'' then',
'    SELECT COUNT(1) INTO V_COUNT FROM DGMS_BILLS_SETUP WHERE METER_TYPES = :P173_METER_TYPES AND PLOT_ID = :P173_PLOT_ID',
'    AND PORTION =:P173_PORTION;',
'  ',
'    if  V_COUNT>0 then',
'        if :P173_ID is not null  then',
' ',
'            SELECT COUNT(1) INTO chk ',
'            FROM DGMS_BILLS_SETUP_CHILD',
'            WHERE BILL_SETUP_ID=:P173_ID and LIVING_STATUS=:P173_LIVING_STATUS',
'            AND PLOT_ID = :P173_PLOT_ID;',
'        ',
'            IF chk > 0 THEN      ',
'            return(''This Record Is Already Exsist......!'');',
'            end if;',
'        else ',
'            return(''This Record Is Already Exsist......!'');',
'        end if ;',
'    end if;',
'end if;',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_always_execute=>'Y'
,p_when_button_pressed=>wwv_flow_api.id(174308080132871759)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(209524237153632845)
,p_validation_name=>'PRE READING IS NOT NULL'
,p_validation_sequence=>30
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if --:P173_METER_TYPES!=''COMMUNITY BILL'' and ',
':P173_PREV_READING is null then',
'return(''Previous Reading is not null ...!'');',
'end if;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_always_execute=>'Y'
,p_validation_condition=>'SAVE,CREATE'
,p_validation_condition_type=>'REQUEST_IN_CONDITION'
,p_associated_item=>wwv_flow_api.id(174300637374871744)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(209524347802632846)
,p_validation_name=>'Meter Ref No. IS NOT NULL'
,p_validation_sequence=>40
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if --:P173_METER_TYPES!=''COMMUNITY BILL'' and ',
':P173_METER_REF_NO is null then',
'return(''Meter ref no. is not null ...!'');',
'end if;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_always_execute=>'Y'
,p_validation_condition=>'SAVE,CREATE'
,p_validation_condition_type=>'REQUEST_IN_CONDITION'
,p_associated_item=>wwv_flow_api.id(174301071307871745)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(209524408651632847)
,p_validation_name=>'PORTION IS NOT NULL'
,p_validation_sequence=>50
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P173_METER_TYPES!=''COMMUNITY BILL'' and :P173_PORTION is null then',
'return(''Portion is not null ...!'');',
'end if;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_always_execute=>'Y'
,p_validation_condition=>'SAVE,CREATE'
,p_validation_condition_type=>'REQUEST_IN_CONDITION'
,p_associated_item=>wwv_flow_api.id(182412815047377105)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(236938000355870047)
,p_validation_name=>'New'
,p_validation_sequence=>60
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- DECLARE',
'--     v_status VARCHAR2(1);',
'-- BEGIN',
'',
'--     SELECT STATUS INTO v_status',
'--     FROM DGMS_BILLS_SETUP_CHILD',
'--     WHERE LIVING_STATUS = :P173_LIVING_STATUS;',
'',
'    ',
'--     IF v_status = ''Y'' THEN',
'--     RETURN (''Cannot update because the status is already set to "Y".'');',
'       ',
'   ',
'--     ELSIF v_status = ''N'' THEN',
'--         UPDATE DGMS_BILLS_SETUP_CHILD',
'--         SET STATUS = ''Y''',
'--         WHERE LIVING_STATUS = :P173_LIVING_STATUS;',
'--     END IF;',
'-- END;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_always_execute=>'Y'
,p_validation_condition=>'P173_ID'
,p_validation_condition_type=>'ITEM_IS_NOT_NULL'
,p_when_button_pressed=>wwv_flow_api.id(174307601050871759)
,p_associated_item=>wwv_flow_api.id(179219423968245904)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(206419193980028935)
,p_name=>'PAGE LOAD'
,p_event_sequence=>10
,p_condition_element=>'P173_PLOT_ID'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(206419241207028936)
,p_event_id=>wwv_flow_api.id(206419193980028935)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'',
'    DPD.PLOT_NO into :P173_PLOT_NO',
'    ',
'FROM DGMS_PLOT_DETAILS DPD ',
'where DPD.ID =:P173_PLOT_ID;-- AND ORG_ID= :P_ORG_ID; --:P173_ORGANIZATION;'))
,p_attribute_02=>'P173_PLOT_ID'
,p_attribute_03=>'P173_PLOT_NO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(206419626028028940)
,p_event_id=>wwv_flow_api.id(206419193980028935)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P173_PLOT_ID'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(206419492766028938)
,p_event_id=>wwv_flow_api.id(206419193980028935)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P173_PLOT_NO'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(206419745412028941)
,p_event_id=>wwv_flow_api.id(206419193980028935)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P173_PLOT_NO'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(206419545946028939)
,p_event_id=>wwv_flow_api.id(206419193980028935)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P173_PLOT_ID,P173_ORGANIZATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(209177784848837531)
,p_name=>'For Community'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P173_METER_TYPES'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(209177874901837532)
,p_event_id=>wwv_flow_api.id(209177784848837531)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P173_PREV_READING2,P173_METER_REF_NO,P173_PORTION'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(182034339539771936)
,p_event_id=>wwv_flow_api.id(209177784848837531)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P173_PREV_READING2,P173_METER_REF_NO,P173_PORTION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(239586123724541417)
,p_name=>'hide items while update'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P173_ID'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(239586244204541418)
,p_event_id=>wwv_flow_api.id(239586123724541417)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P173_ORGANIZATION,,P173_PLOT_ID'
,p_server_condition_type=>'ITEM_IS_NOT_NULL'
,p_server_condition_expr1=>'P173_ID'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(212077012874416111)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Process form DGMS BILLS SETUP FORM_1'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'chk number;',
'begin',
'',
'        SELECT COUNT(1) INTO chk ',
'        FROM DGMS_BILLS_SETUP_CHILD',
'        WHERE BILL_SETUP_ID=:P173_ID',
'        AND LIVING_STATUS=:P173_LIVING_STATUS',
'        AND PLOT_ID = :P173_PLOT_ID',
'        and ORG_ID =:P173_ORGANIZATION;--:P_ORG_ID;',
'',
'if :P173_ID is null  then',
'    insert into DGMS_BILLS_SETUP',
'    (   "CUSTOMER_NAME",',
'        "PLOT_ID",',
'        "PREV_READING",',
'        "METER_REF_NO", ',
'        "PREV_READING1",',
'        "METER_REF_NO1",',
'        "PREV_READING2",',
'        "METER_REF_NO2",',
'        "METER_TYPES",	-- "LIVING_STATUS", ',
'        "CLIENT_IDS", ',
'        "PORTION", ',
'        "METER_STATUS" ,',
'        "ACTIVE", ',
'        "SITE_NAME",',
'        "LIVING_STATUS",',
'        "PAYABLE_ARREARS")',
'    values',
'    (   :P173_CUSTOMER_NAME,',
'        :P173_PLOT_ID,',
'        :P173_PREV_READING,',
'        :P173_METER_REF_NO,',
'        :P173_PREV_READING1,',
'        :P173_METER_REF_NO1,',
'        :P173_PREV_READING2,',
'        :P173_METER_REF_NO2,',
'        ''COMMUNITY BILL'',--:P173_METER_TYPES,',
'        :P173_CLIENT_IDS,',
'        :P173_PORTION,',
'        :P173_METER_STATUS,',
'        ''Y'',',
'        :P173_ORGANIZATION,',
'        :P173_LIVING_STATUS,',
'        :P173_PAYABLE_ARREARS);',
'    commit;',
'',
'            SELECT "DGMS_BILLS_SETUP_SEQ".CURRVAL ',
'            INTO :P173_ID ',
'            FROM DUAL;  ',
'        insert into DGMS_BILLS_SETUP_CHILD',
'        (   "PLOT_ID",',
'            "BILL_SETUP_ID",',
'            "LIVING_STATUS",',
'            "STATUS")',
'        values',
'        (   :P173_PLOT_ID,',
'            :P173_ID,',
'            :P173_LIVING_STATUS,',
'            ''Y'');',
'        commit;',
'elsif :P173_ID is not null then',
'',
'        update DGMS_BILLS_SETUP',
'        set PORTION=:P173_PORTION,',
'        PREV_READING1=:P173_PREV_READING_U,',
'        METER_REF_NO1=:P173_METER_REF_NO_U,',
'        PREV_READING2=:P173_PREV_READING_U2,',
'        METER_REF_NO2=:P173_METER_REF_NO_U2',
'     ',
'        where id=:P173_ID;',
'        commit;',
'    if chk=0  then',
'        update DGMS_BILLS_SETUP_CHILD',
'        set STATUS=''N''',
'        where BILL_SETUP_ID=:P173_ID;',
'        commit;',
'        insert into DGMS_BILLS_SETUP_CHILD',
'        (   "PLOT_ID",',
'        "BILL_SETUP_ID",',
'        "LIVING_STATUS",',
'    	"STATUS")',
'        values',
'        (   :P173_PLOT_ID,',
'        :P173_ID,',
'        :P173_LIVING_STATUS,',
'        ''Y'');',
'        commit;',
'    end if;',
'',
'end if;',
'end;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(212077123391416112)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'RETRIVE DATA'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P173_ID is not null then',
'select  DBS.CUSTOMER_NAME',
'        ,DBS.PLOT_ID',
'        ,DBS.PREV_READING',
'        ,DBS.METER_REF_NO',
'        ,DBS.METER_TYPES',
'        ,DBS.PORTION',
'        ,DBS.PAYABLE_ARREARS',
'        ,DBSC.LIVING_STATUS',
'        ,DBS.METER_STATUS',
'into    :P173_CUSTOMER_NAME',
'        ,:P173_PLOT_ID',
'        ,:P173_PREV_READING',
'        ,:P173_METER_REF_NO',
'        ,:P173_METER_TYPES',
'        ,:P173_PORTION',
'        ,:P173_PAYABLE_ARREARS',
'        ,:P173_LIVING_STATUS',
'        ,:P173_METER_STATUS',
'from DGMS_BILLS_SETUP DBS',
'JOIN DGMS_BILLS_SETUP_CHILD DBSC ON DBSC.BILL_SETUP_ID=DBS.ID and DBSC.STATUS=''Y'' and DBSC.PLOT_ID=DBS.PLOT_ID',
'where DBS.ID =:P173_ID;',
'end if;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(179219539686245905)
,p_process_sequence=>10
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GET CUSTOMER DET'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'V_PLOT_ID VARCHAR2(250) := apex_application.g_x01;',
'V_CLIENT_IDS VARCHAR2(250);',
'V_CUSTOMER VARCHAR2(500);',
'',
'begin',
'',
'    SELECT  LISTAGG((F_NAME ||'' ''||CASE WHEN GUARDIAN_REALATION IS NULL AND GUARDIAN_F_NAME IS NULL THEN NULL ELSE NVL(GUARDIAN_REALATION,''S/D/W/O'') END',
'    ||'' ''||GUARDIAN_F_NAME), ''AND '') WITHIN GROUP (ORDER BY 1),LISTAGG(DMR.ID,'':'') INTO V_CUSTOMER,V_CLIENT_IDS',
'    from   DGMS_PLOTS_BOOKING DPB',
'    LEFT join DGMS_MEMBER_REGISTRATION dmr   on  dmr.ID IN  (SELECT regexp_substr(DPB.CLIENT_IDS,''[^:]+'', 1, LEVEL) FROM DUAL ',
'    connect BY regexp_substr(DPB.CLIENT_IDS, ''[^:]+'', 1, LEVEL) is not null)  ',
'    WHERE DPB.PLOT_ID  = V_PLOT_ID AND BOOKING_STATUS = ''BOOKED'';',
'',
'apex_json.open_object;',
'    apex_json.write(''success'', true);',
'    apex_json.write(''CUSTOMER'',V_CUSTOMER);',
'    apex_json.write(''CLIENT_IDS'',V_CLIENT_IDS);',
'apex_json.close_object;',
'',
'exception when others',
'then',
'null;',
'end;',
'',
'',
'',
'    ',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
begin
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(179269820648748706)
,p_process_sequence=>20
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GET PLOT ID'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'V_ID NUMBER := apex_application.g_x01;',
'v_plot_id number;',
'',
'begin',
'SELECT  PLOT_ID  INTO v_plot_id',
'FROM DGMS_BILLS_SETUP',
'WHERE ID = V_ID;',
'',
'apex_json.open_object;',
'    apex_json.write(''succes'', true);',
'    apex_json.write(''PLOT_ID'',v_plot_id);',
'apex_json.close_object;',
'exception when others',
'then',
'null;',
'end;',
'',
'',
'',
'    '))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_type=>'NEVER'
);
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
