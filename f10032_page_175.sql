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
--   Date and Time:   11:10 Tuesday March 5, 2024
--   Exported By:     UMAR
--   Flashback:       0
--   Export Type:     Page Export
--   Manifest
--     PAGE: 175
--   Manifest End
--   Version:         21.1.7
--   Instance ID:     697968588975354
--

begin
null;
end;
/
prompt --application/pages/delete_00175
begin
wwv_flow_api.remove_page (p_flow_id=>wwv_flow.g_flow_id, p_page_id=>175);
end;
/
prompt --application/pages/page_00175
begin
wwv_flow_api.create_page(
 p_id=>175
,p_user_interface_id=>wwv_flow_api.id(158393926828282951)
,p_name=>'DGMS BILLS DETAIL FORM'
,p_alias=>'DGMS-BILLS-DETAIL-FORM'
,p_step_title=>'DGMS BILLS DETAIL FORM'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';',
'',
'//  if(apex.item(''P175_BILL_TYPE'').getValue() != ''COMMUNITY BILL''){',
'//     $(''#P175_BILL_SETUP_ID'').change(function(){',
'    ',
'//     apex.server.process(',
'//     ''BILL SETUP'',                        ',
'//     {x01: $v(''P175_BILL_SETUP_ID'')},',
'//     {',
'//         success: function (pData) {',
'//             $s(''P175_PLOT_ID'',pData.PLOT);',
'//             apex.item(''P175_METER'').setValue(pData.METER);',
'        ',
'//         apex.item(''P175_PREV_READING'').setValue(pData.PREV_READING); ',
'            ',
'//             apex.item(''P175_ARREARS'').setValue(pData.ARREARS);',
'            ',
'//         },',
'//        dataType: null               // Response type (here: plain text)',
'//     }',
'//     );',
'// }',
'',
'// ); ',
'// }',
'',
'// $(''#P175_BILL_SETUP_ID'').change(function(){',
'//     apex.server.process(',
'//     ''GET UNIT VALUE'',                        ',
'//     {x01: $v(''P175_BILL_TYPE''),x02: $v(''P175_BILL_SETUP_ID'')},',
'//     {',
'//         success: function (pData) {',
'//             apex.item(''P175_PER_UNIT_RATE_300'').setValue(pData.TRF_UPTO);',
'//             apex.item(''P175_PER_UNIT_RATE_300_ABOVE'').setValue(pData.TRF_ABV);',
'//             apex.item(''P175_TARIFF_PER_UNIT'').setValue(pData.TRF_PER_UNIT);',
'//             //apex.item(''P175_MAINTENANCE'').setValue(pData.COST);',
'            ',
'//         },',
'//        dataType: null               // Response type (here: plain text)',
'//     }',
'//     );',
'// });',
'',
'// $(''#P175_CURRENT_READING'').change(function(){',
'',
'//     $s(''P175_UNIT_CONSUMED'','''');                   ',
'//     var V_CURR_READ = $v(''P175_CURRENT_READING'');',
'//     var V_prev_READ = $v(''P175_PREV_READING'');',
'',
'//     var unit_consumed = 0;',
'//     unit_consumed = V_CURR_READ - V_prev_READ;',
'//     if(unit_consumed >= 0){',
'//     $s(''P175_UNIT_CONSUMED'',unit_consumed);',
'//     get_data();',
'//  }   }',
'// );',
'',
'// $(''#P175_PER_UNIT_RATE_300_ABOVE'').change(function(){',
'//     get_data();',
'//  }   ',
'// );',
'',
'// $(''#P175_PER_UNIT_RATE_300'').change(function(){',
'//     get_data();',
'// } ',
'// );',
'',
'// $(''#P175_BILL_TYPE'').change(function(){',
'   ',
'',
'//     if(apex.item(''P175_BILL_TYPE'').getValue() != ''COMMUNITY BILL''){',
'    ',
'//         $x_Hide("DET_FORM");',
'',
'         ',
'//     }',
'//     else{',
'',
'//         $x_Show("DET_FORM");',
'         ',
'//     }',
'// });',
'//HIDING BELOW CODE FROM HERE',
'/*$(''#P175_BILL_TYPE'').change(function(){',
'',
'    if(apex.item(''P175_BILL_TYPE'').getValue() == ''WATER BILL''){',
'    ',
'        $x_Show("P175_TARIFF_PER_UNIT");',
'        $x_Hide("P175_PLOT_NO");',
'        $x_Hide("P175_MAINTENANCE");',
'        $x_Hide("P175_AQUIFER_CHARGES");',
'        $x_Hide("P175_RENT");',
'        $x_Hide("P175_ELECTRICITY_CHARGES");',
'        $x_Hide("P175_SPORTS_CLUB");',
'        $x_Hide("P175_TRAFFIC_VIOLATION_CHARGES");',
'        $x_Hide("P175_DAMAGE_CHARGES");',
'        $x_Hide("P175_BY_LAWS_VIOLATION_CHARGES");',
'          $x_Hide("P175_OTHERS_CHARGES");',
'          $x_Hide("P175_WATER");',
'          $x_Hide("P175_CCTV_REBATE_FOR_PHASE_2");',
'         $x(''P175_ARREARS'').readOnly = true;',
'        //    $x(''P175_BILL_MONTH'').readOnly = true;',
'        $x_Hide("P175_PER_UNIT_RATE_300");',
'        $x_Hide("P175_PER_UNIT_RATE_300_ABOVE");',
'',
'',
'         $x_Show("P175_BILL_SETUP_ID");',
'        $x_Show("P175_BILL_MONTH");',
'        $x_Show("P175_ISSUE_DATE");',
'        $x_Show("P175_DUE_DATE");',
'        $x_Show("P175_READING_DATE");',
'        $x_Show("P175_CURRENT_READING");',
'        $x_Show("P175_PREV_READING");',
'        $x_Show("P175_UNIT_CONSUMED");',
'',
'    }',
'',
'    else if(apex.item(''P175_BILL_TYPE'').getValue() == ''ELECTRICITY BILL''){',
'    ',
'        $x_Hide("P175_TARIFF_PER_UNIT");',
'        ',
'        //  $x_Hide("P175_PLOT_NO");',
'        $x_Hide("P175_MAINTENANCE");',
'        $x_Hide("P175_AQUIFER_CHARGES");',
'        $x_Hide("P175_RENT");',
'        $x_Hide("P175_ELECTRICITY_CHARGES");',
'        $x_Hide("P175_SPORTS_CLUB");',
'        $x_Hide("P175_TRAFFIC_VIOLATION_CHARGES");',
'        $x_Hide("P175_DAMAGE_CHARGES");',
'        $x_Hide("P175_BY_LAWS_VIOLATION_CHARGES");',
'          $x_Hide("P175_OTHERS_CHARGES");',
'          $x_Hide("P175_WATER");',
'          $x_Hide("P175_CCTV_REBATE_FOR_PHASE_2");',
'    ',
'',
'         $x(''P175_ARREARS'').readOnly = true;',
'        // $x(''P175_BILL_MONTH'').readOnly = true;',
'        $x_Show("P175_PER_UNIT_RATE_300");',
'        $x_Show("P175_PER_UNIT_RATE_300_ABOVE");',
'         $x_Show("P175_BILL_SETUP_ID");',
'        $x_Show("P175_BILL_MONTH");',
'        $x_Show("P175_ISSUE_DATE");',
'        $x_Show("P175_DUE_DATE");',
'        $x_Show("P175_READING_DATE");',
'        $x_Show("P175_CURRENT_READING");',
'        $x_Show("P175_PREV_READING");',
'        $x_Show("P175_UNIT_CONSUMED");',
'    }',
'   ',
'    else if(apex.item(''P175_BILL_TYPE'').getValue() == ''COMMUNITY BILL''){',
'    ',
'        $x_Hide("P175_TARIFF_PER_UNIT");',
'        $x_Hide("P175_PER_UNIT_RATE_300");',
'        $x_Hide("P175_PER_UNIT_RATE_300_ABOVE");',
'        $x_Show("P175_BILL_SETUP_ID");',
'        $x_Show("P175_BILL_MONTH");',
'        $x_Show("P175_ISSUE_DATE");',
'        $x_Show("P175_DUE_DATE");',
'        $x_Hide("P175_READING_DATE");',
'        $x_Hide("P175_CURRENT_READING");',
'        $x_Hide("P175_PREV_READING");',
'        $x_Hide("P175_UNIT_CONSUMED");',
'             $x(''P175_ARREARS'').readOnly = true;',
'',
'        //    $x(''P175_ARREARS'').readOnly = false;',
'        //   $x(''P175_BILL_MONTH'').readOnly = false;',
'',
'        //   $x_Show("P175_PLOT_NO");',
'        $x_Show("P175_MAINTENANCE");',
'        $x_Show("P175_AQUIFER_CHARGES");',
'        $x_Show("P175_RENT");',
'        $x_Show("P175_ELECTRICITY_CHARGES");',
'        $x_Show("P175_SPORTS_CLUB");',
'        $x_Show("P175_TRAFFIC_VIOLATION_CHARGES");',
'        $x_Show("P175_DAMAGE_CHARGES");',
'        $x_Show("P175_BY_LAWS_VIOLATION_CHARGES");',
'          $x_Show("P175_OTHERS_CHARGES");',
'          $x_Show("P175_WATER");',
'          $x_Show("P175_CCTV_REBATE_FOR_PHASE_2");',
'',
'',
'    }',
'});*/',
'',
'// function get_data(){            ',
'//     var RATE_300_ABOVE = $(''#P175_PER_UNIT_RATE_300_ABOVE'').val(); ',
'//     var UNITS =   $(''#P175_UNIT_CONSUMED'').val();',
'//     var PER_UNIT =   $(''#P175_TARIFF_PER_UNIT'').val();',
'//     var unit_300_RATE = 0;',
'//     RATE_300 = $v(''P175_PER_UNIT_RATE_300'');',
'//     var after_due = 0;',
'//     var unit_300_RATE_ABOVE = 0;',
'//     var unit_300_RATE_ABOVE1 = 0;',
'//     unit_300_RATE_ABOVE1 = UNITS * PER_UNIT;',
'//     if (UNITS > 300) {',
'//         unit_300_RATE = 300 * RATE_300; ',
'//         UNITS = UNITS - 300;',
'//         unit_300_RATE_ABOVE = (UNITS * RATE_300_ABOVE) + (unit_300_RATE) ;',
'//         //unit_300_RATE_ABOVE1 = UNITS * PER_UNIT;',
'//         unit_300_RATE_ABOVE =  unit_300_RATE_ABOVE + (unit_300_RATE) + parseInt($(''#P175_ARREARS'').val()||0) ;',
'        ',
'//     }',
'//     else',
'//     {',
'//         unit_300_RATE = UNITS * RATE_300 ;',
'//         //unit_300_RATE_ABOVE1 = UNITS * PER_UNIT;',
'//         unit_300_RATE_ABOVE = unit_300_RATE + (unit_300_RATE) + parseInt($(''#P175_ARREARS'').val()||0) ;',
'        ',
'//     }',
'                    //  + parseInt($(''#P175_ARREARS'').val()||0) AND + parseInt($(''#P175_ARREARS'').val()||0) FOR TEST ',
'//     // $s(''P175_PAYABLE'',0);== ''WATER BILL''',
'// //     // //---------------------------------------//',
'    //  if(apex.item(''P175_BILL_TYPE'').getValue() !=''COMMUNITY BILL''){ ',
'',
'// // //         //$s(''P175_WATER'',Math.ceil(unit_300_RATE_ABOVE1));',
'// // //        // unit_300_RATE_ABOVE1 = (unit_300_RATE_ABOVE1) ',
'// // //                                 // + parseInt($(''#P175_MAINTENANCE'').val()||0) + ',
'// // //                                 // parseInt($(''#P175_AQUIFER_CHARGES'').val()||0) +',
'// // //                                 // parseInt($(''#P175_RENT'').val()||0) +',
'// // //                                 // parseInt($(''#P175_ELECTRICITY_CHARGES'').val()||0) +',
'// // //                                 // parseInt( $(''#P175_SPORTS_CLUB'').val()||0) +',
'// // //                                 // parseInt($(''#P175_TRAFFIC_VIOLATION_CHARGES'').val()||0) +',
'// // //                                 // parseInt($(''#P175_DAMAGE_CHARGES'').val()||0) +',
'// // //                                 // parseInt($(''#P175_BY_LAWS_VIOLATION_CHARGES'').val()||0) +',
'// // //                                 // parseInt($(''#P175_OTHERS_CHARGES'').val()||0);',
'',
'        ',
'//         $s(''P175_PAYABLE'',Math.ceil(unit_300_RATE_ABOVE)) ; ',
'//         after_due =((Math.ceil(unit_300_RATE_ABOVE)) +  (Math.ceil(unit_300_RATE_ABOVE)* 10/100)) ;',
'// // //         // * 10/100);',
'//         $s(''P175_PAYABLE_AFTER_DUE_DATE'',Math.ceil(after_due));',
'         ',
'//     }',
'//     else{',
'',
'//         $s(''P175_PAYABLE'',Math.ceil(unit_300_RATE_ABOVE1));',
'//         after_due =((Math.ceil(unit_300_RATE_ABOVE1)) + (Math.ceil(unit_300_RATE_ABOVE1) * 10/100));',
'// //         //  * 10/100);',
'//         $s(''P175_PAYABLE_AFTER_DUE_DATE'',Math.ceil(after_due));',
'        ',
'//     }',
'    ////ELECTRICAL////////',
'    //      if(apex.item(''P175_BILL_TYPE'').getValue() == ''ELECTRICITY BILL''){ ',
'',
'',
'    //     $s(''P175_PAYABLE'',Math.ceil(unit_300_RATE_ABOVE1)); ',
'    //     after_due =(Math.ceil(unit_300_RATE_ABOVE1) )+  (Math.ceil(unit_300_RATE_ABOVE1)* 10/100) ;',
'    //     // * 10/100);) +  (Math.ceil(unit_300_RATE_ABOVE1)',
'    //     $s(''P175_PAYABLE_AFTER_DUE_DATE'',Math.ceil(after_due));',
'         ',
'    // }',
'    // else{',
'',
'//         $s(''P175_PAYABLE'',Math.ceil(unit_300_RATE_ABOVE));',
'//         after_due =(Math.ceil(unit_300_RATE_ABOVE)) + (Math.ceil(unit_300_RATE_ABOVE)* 10/100);',
'// // //         //  * 10/100);) +  (Math.ceil(unit_300_RATE_ABOVE)',
'//         $s(''P175_PAYABLE_AFTER_DUE_DATE'',Math.ceil(after_due));',
'        ',
'//     }',
'',
'',
'// }; ',
'',
'// // (Math.ceil(unit_300_RATE_ABOVE1)) +',
'// // (Math.ceil(unit_300_RATE_ABOVE)) +',
'',
'// // $(''#P175_MAINTENANCE'').change(function(){',
'// //     get_data();',
'// // } ',
'// // );',
'// // $(''#P175_AQUIFER_CHARGES'').change(function(){',
'// //     get_data();',
'// // } ',
'// // );',
'// // $(''#P175_RENT'').change(function(){',
'// //     get_data();',
'// // } ',
'// // );',
'// // $(''#P175_ELECTRICITY_CHARGES'').change(function(){',
'// //     get_data();',
'// // } ',
'// // );',
'// // $(''#P175_SPORTS_CLUB'').change(function(){',
'// //     get_data();',
'// // } ',
'// // );',
'// // $(''#P175_TRAFFIC_VIOLATION_CHARGES'').change(function(){',
'// //     get_data();',
'// // } ',
'// // );',
'// // $(''#P175_DAMAGE_CHARGES'').change(function(){',
'// //     get_data();',
'// // } ',
'// // );',
'// // $(''#P175_BY_LAWS_VIOLATION_CHARGES'').change(function(){',
'// //     get_data();',
'// // } ',
'// // );',
'// // $(''#P175_OTHERS_CHARGES'').change(function(){',
'// //     get_data();',
'// // } ',
'// // );',
'',
'// $(''#P175_UNIT_CONSUMED'').change(function(){',
'//     get_data();',
'// } ',
'// );',
'// $(''#P175_TARIFF_PER_UNIT'').change(function(){',
'//     get_data();',
'// } ',
'// );'))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'    // if (apex.item(''P175_APPROVAL_STATUS'').getValue() == ''PENDING''){ ',
'    //     $x_Show("SAVE");',
'    // }',
'    // else{',
'    //     $x_Hide("SAVE");',
'    // };    ',
'    ',
'    // apex.server.process(',
'    // ''GET UNIT VALUE'',                        ',
'    // {x01: $v(''P175_BILL_TYPE''),x02: $v(''P175_BILL_SETUP_ID'')},',
'    // {',
'    //     success: function (pData) {',
'    //         apex.item(''P175_PER_UNIT_RATE_300'').setValue(pData.TRF_UPTO);',
'    //         apex.item(''P175_PER_UNIT_RATE_300_ABOVE'').setValue(pData.TRF_ABV);',
'    //         apex.item(''P175_TARIFF_PER_UNIT'').setValue(pData.TRF_PER_UNIT);',
'    //      //   apex.item(''P175_MAINTENANCE'').setValue(pData.COST);',
'    //     },',
'    //    dataType: null               // Response type (here: plain text)',
'    // }',
'    // );',
'',
'        // if(apex.item(''P175_BILL_TYPE'').getValue() == ''WATER BILL''){',
'    ',
'        // $x_Show("P175_TARIFF_PER_UNIT");',
'        // $x_Hide("P175_PER_UNIT_RATE_300");',
'        // $x_Hide("P175_PER_UNIT_RATE_300_ABOVE");',
'',
'        // }',
'        // else',
'        // {',
'',
'        // $x_Hide("P175_TARIFF_PER_UNIT");',
'        // $x_Show("P175_PER_UNIT_RATE_300");',
'        // $x_Show("P175_PER_UNIT_RATE_300_ABOVE");',
'         ',
'        // };',
'',
'// $(''#P175_BILL_TYPE'').change(function(){',
'    // HIDING FROM HERE !',
'',
'    /*if(apex.item(''P175_BILL_TYPE'').getValue() == ''WATER BILL''){',
'    ',
'        $x_Show("P175_TARIFF_PER_UNIT");',
'        // $x_Hide("P175_PLOT_NO");',
'        $x_Hide("P175_MAINTENANCE");',
'        $x_Hide("P175_AQUIFER_CHARGES");',
'        $x_Hide("P175_RENT");',
'        $x_Hide("P175_ELECTRICITY_CHARGES");',
'        $x_Hide("P175_SPORTS_CLUB");',
'        $x_Hide("P175_TRAFFIC_VIOLATION_CHARGES");',
'        $x_Hide("P175_DAMAGE_CHARGES");',
'        $x_Hide("P175_BY_LAWS_VIOLATION_CHARGES");',
'          $x_Hide("P175_OTHERS_CHARGES");',
'          $x_Hide("P175_WATER");',
'          $x_Hide("P175_CCTV_REBATE_FOR_PHASE_2");',
'         $x(''P175_ARREARS'').readOnly = true;',
'        //    $x(''P175_BILL_MONTH'').readOnly = true;',
'        $x_Hide("P175_PER_UNIT_RATE_300");',
'        $x_Hide("P175_PER_UNIT_RATE_300_ABOVE");',
'',
'',
'         $x_Show("P175_BILL_SETUP_ID");',
'        $x_Show("P175_BILL_MONTH");',
'        $x_Show("P175_ISSUE_DATE");',
'        $x_Show("P175_DUE_DATE");',
'        $x_Show("P175_READING_DATE");',
'        $x_Show("P175_CURRENT_READING");',
'        $x_Show("P175_PREV_READING");',
'        $x_Show("P175_UNIT_CONSUMED");',
'',
'    }',
'',
'    else if(apex.item(''P175_BILL_TYPE'').getValue() == ''ELECTRICITY BILL''){',
'    ',
'        $x_Hide("P175_TARIFF_PER_UNIT");',
'        ',
'        //  $x_Hide("P175_PLOT_NO");',
'        $x_Hide("P175_MAINTENANCE");',
'        $x_Hide("P175_AQUIFER_CHARGES");',
'        $x_Hide("P175_RENT");',
'        $x_Hide("P175_ELECTRICITY_CHARGES");',
'        $x_Hide("P175_SPORTS_CLUB");',
'        $x_Hide("P175_TRAFFIC_VIOLATION_CHARGES");',
'        $x_Hide("P175_DAMAGE_CHARGES");',
'        $x_Hide("P175_BY_LAWS_VIOLATION_CHARGES");',
'          $x_Hide("P175_OTHERS_CHARGES");',
'          $x_Hide("P175_WATER");',
'          $x_Hide("P175_CCTV_REBATE_FOR_PHASE_2");',
'    ',
'',
'         $x(''P175_ARREARS'').readOnly = true;',
'        // $x(''P175_BILL_MONTH'').readOnly = true;',
'        $x_Show("P175_PER_UNIT_RATE_300");',
'        $x_Show("P175_PER_UNIT_RATE_300_ABOVE");',
'         $x_Show("P175_BILL_SETUP_ID");',
'        $x_Show("P175_BILL_MONTH");',
'        $x_Show("P175_ISSUE_DATE");',
'        $x_Show("P175_DUE_DATE");',
'        $x_Show("P175_READING_DATE");',
'        $x_Show("P175_CURRENT_READING");',
'        $x_Show("P175_PREV_READING");',
'        $x_Show("P175_UNIT_CONSUMED");',
'    }',
'   ',
'    else if(apex.item(''P175_BILL_TYPE'').getValue() == ''COMMUNITY BILL''){',
'    ',
'        $x_Hide("P175_TARIFF_PER_UNIT");',
'        $x_Hide("P175_PER_UNIT_RATE_300");',
'        $x_Hide("P175_PER_UNIT_RATE_300_ABOVE");',
'        $x_Show("P175_BILL_SETUP_ID");',
'        $x_Show("P175_BILL_MONTH");',
'        $x_Show("P175_ISSUE_DATE");',
'        $x_Show("P175_DUE_DATE");',
'        $x_Hide("P175_READING_DATE");',
'        $x_Hide("P175_CURRENT_READING");',
'        $x_Hide("P175_PREV_READING");',
'        $x_Hide("P175_UNIT_CONSUMED");',
'             $x(''P175_ARREARS'').readOnly = true;',
'',
'        //    $x(''P175_ARREARS'').readOnly = false;',
'        //   $x(''P175_BILL_MONTH'').readOnly = false;',
'',
'        //   $x_Show("P175_PLOT_NO");',
'        $x_Show("P175_MAINTENANCE");',
'        $x_Show("P175_AQUIFER_CHARGES");',
'        $x_Show("P175_RENT");',
'        $x_Show("P175_ELECTRICITY_CHARGES");',
'        $x_Show("P175_SPORTS_CLUB");',
'        $x_Show("P175_TRAFFIC_VIOLATION_CHARGES");',
'        $x_Show("P175_DAMAGE_CHARGES");',
'        $x_Show("P175_BY_LAWS_VIOLATION_CHARGES");',
'          $x_Show("P175_OTHERS_CHARGES");',
'          $x_Show("P175_WATER");',
'          $x_Show("P175_CCTV_REBATE_FOR_PHASE_2");',
'',
'',
'    }*/ //HIDING TILL HERE',
'// });',
'',
'// var selectedValue = $v(''P175_BILL_SETUP_ID''); // Replace ''P1_PARENT_LOV_ITEM'' with the actual item name.',
'',
'// // Set the value in the Interactive Grid column',
'// apex.region(''GRID'').widget().interactiveGrid(''getActions'').invoke(''PLOT_ID'', {',
'//   columnName: ''PLOT_ID'', // Replace ''PLOT_ID'' with the actual column name in your Interactive Grid',
'//   value: selectedValue',
'// });'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'UMAR'
,p_last_upd_yyyymmddhh24miss=>'20240305105836'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(174382427556141889)
,p_plug_name=>'Bills Creation'
,p_region_name=>'EW_BILL'
,p_region_template_options=>'#DEFAULT#:t-Region--accent8:t-Region--scrollBody'
,p_region_attributes=>'style="background-color:#ffe4c4;";'
,p_plug_template=>wwv_flow_api.id(158483500507283087)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(173393799791478730)
,p_plug_name=>'Commuinty'
,p_region_name=>'DET_FORM'
,p_parent_plug_id=>wwv_flow_api.id(174382427556141889)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--accent1:t-Region--noBorder:t-Region--scrollBody'
,p_region_attributes=>'style="background-color:#ffe4c4;";'
,p_plug_template=>wwv_flow_api.id(158483500507283087)
,p_plug_display_sequence=>30
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(174475418924060627)
,p_plug_name=>'PAYABLES'
,p_parent_plug_id=>wwv_flow_api.id(174382427556141889)
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--textContent:t-Region--scrollBody:t-Form--slimPadding'
,p_region_attributes=>'style="background-color:#ffe4c4;";'
,p_plug_template=>wwv_flow_api.id(158483500507283087)
,p_plug_display_sequence=>40
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(239587083110541426)
,p_plug_name=>'Meter Wise Details'
,p_region_name=>'LINEID'
,p_parent_plug_id=>wwv_flow_api.id(174382427556141889)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(158483500507283087)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DBS.ID,',
'       DBS.CUSTOMER_NAME,',
'       DBS.PLOT_ID,',
'       DBS.PREV_READING,',
'       DBS.METER_REF_NO,',
'       DBS.BILL_ID,',
'       DBS.CURRENT_READING,',
'       DBS.BILL_PAYMENT,',
'       DBS.UNIT_CONSUMED',
'  from DGMS_BILLS_SETUP DBS',
'WHERE DBS.BILL_ID=:P175_ID',
'',
'  ',
'',
'',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P175_ID'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Details'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(239587294757541428)
,p_name=>'ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(239587528424541431)
,p_name=>'PREV_READING'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PREV_READING'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Prev Reading'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_attribute_03=>'right'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(239587627610541432)
,p_name=>'METER_REF_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'METER_REF_NO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'Meter Ref No'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
,p_is_required=>false
,p_max_length=>500
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DBS.METER_REF_NO AS D, DBS.METER_REF_NO AS R    ',
'FROM DGMS_BILLS_SETUP DBS',
'WHERE DBS.PLOT_ID = :PLOT_ID',
'',
'',
'',
'',
'',
''))
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_lov_cascade_parent_items=>'PLOT_ID'
,p_ajax_optimize_refresh=>true
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(241766629424903018)
,p_name=>'CUSTOMER_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CUSTOMER_NAME'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>120
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(241768089210903032)
,p_name=>'BILL_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BILL_ID'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Bill Id'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>180
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'right'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(241863898802322906)
,p_name=>'APEX$ROW_SELECTOR'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(241863986676322907)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(241864424919322912)
,p_name=>'PLOT_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PLOT_ID'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Plot ID'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>100
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(241867087930322938)
,p_name=>'CURRENT_READING'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CURRENT_READING'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Current Reading'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>140
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>100
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(241867133345322939)
,p_name=>'BILL_PAYMENT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BILL_PAYMENT'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Bill Payment'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>150
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>100
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(241867226689322940)
,p_name=>'UNIT_CONSUMED'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UNIT_CONSUMED'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Unit Consumed'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>160
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>100
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_interactive_grid(
 p_id=>wwv_flow_api.id(239587104413541427)
,p_internal_uid=>239587104413541427
,p_is_editable=>true
,p_edit_operations=>'i'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>false
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>false
,p_fixed_row_height=>false
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_toolbar_buttons=>'RESET'
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>false
,p_define_chart_view=>false
,p_enable_download=>false
,p_download_formats=>null
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_api.create_ig_report(
 p_id=>wwv_flow_api.id(241869195597322643)
,p_interactive_grid_id=>wwv_flow_api.id(239587104413541427)
,p_static_id=>'2418692'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_api.create_ig_report_view(
 p_id=>wwv_flow_api.id(241869391480322642)
,p_report_id=>wwv_flow_api.id(241869195597322643)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(241869802055322636)
,p_view_id=>wwv_flow_api.id(241869391480322642)
,p_display_seq=>1
,p_column_id=>wwv_flow_api.id(239587294757541428)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(241872529478322626)
,p_view_id=>wwv_flow_api.id(241869391480322642)
,p_display_seq=>4
,p_column_id=>wwv_flow_api.id(239587528424541431)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(241873444730322623)
,p_view_id=>wwv_flow_api.id(241869391480322642)
,p_display_seq=>3
,p_column_id=>wwv_flow_api.id(239587627610541432)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(241946761593558527)
,p_view_id=>wwv_flow_api.id(241869391480322642)
,p_display_seq=>1
,p_column_id=>wwv_flow_api.id(241863986676322907)
,p_is_visible=>true
,p_is_frozen=>true
,p_width=>40
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(241993800316972426)
,p_view_id=>wwv_flow_api.id(241869391480322642)
,p_display_seq=>2
,p_column_id=>wwv_flow_api.id(241864424919322912)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(242686844729189806)
,p_view_id=>wwv_flow_api.id(241869391480322642)
,p_display_seq=>10
,p_column_id=>wwv_flow_api.id(241766629424903018)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(242759308949162554)
,p_view_id=>wwv_flow_api.id(241869391480322642)
,p_display_seq=>5
,p_column_id=>wwv_flow_api.id(241867087930322938)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(242760256742162551)
,p_view_id=>wwv_flow_api.id(241869391480322642)
,p_display_seq=>8
,p_column_id=>wwv_flow_api.id(241867133345322939)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(242761196808162549)
,p_view_id=>wwv_flow_api.id(241869391480322642)
,p_display_seq=>7
,p_column_id=>wwv_flow_api.id(241867226689322940)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(243190024331138379)
,p_view_id=>wwv_flow_api.id(241869391480322642)
,p_display_seq=>9
,p_column_id=>wwv_flow_api.id(241768089210903032)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(180795760020701202)
,p_plug_name=>'Bills Registration'
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
end;
/
begin
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(183427074452467901)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(173393799791478730)
,p_button_name=>'ADD'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(158418434726282996)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add'
,p_button_position=>'BELOW_BOX'
,p_button_condition_type=>'NEVER'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(241864192736322909)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(239587083110541426)
,p_button_name=>'ADD_DETAIL'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>wwv_flow_api.id(158418434726282996)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Detail'
,p_button_position=>'REGION_TEMPLATE_COPY'
,p_button_condition_type=>'NEVER'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(241769323629903045)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(239587083110541426)
,p_button_name=>'save'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(158418434726282996)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save'
,p_button_position=>'REGION_TEMPLATE_COPY'
,p_button_condition_type=>'NEVER'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(174399669116141901)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(180795760020701202)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(158418434726282996)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:174:&SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(174400876354141903)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(180795760020701202)
,p_button_name=>'SAVE'
,p_button_static_id=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(158418434726282996)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_button_condition=>'P175_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(174401266037141903)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(180795760020701202)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(158418434726282996)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_button_condition=>'P175_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(174401518678141903)
,p_branch_name=>'Go To Page 174'
,p_branch_action=>'f?p=&APP_ID.:174:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(173394154491478734)
,p_name=>'P175_MAINTENANCE'
,p_item_sequence=>370
,p_item_plug_id=>wwv_flow_api.id(174382427556141889)
,p_item_default=>'0'
,p_prompt=>'Maintenance Charges'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_css_classes=>'only-numeric'
,p_field_template=>wwv_flow_api.id(158420883850282999)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(173394263026478735)
,p_name=>'P175_U_ID'
,p_item_sequence=>360
,p_item_plug_id=>wwv_flow_api.id(174382427556141889)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(173394335269478736)
,p_name=>'P175_AQUIFER_CHARGES'
,p_item_sequence=>390
,p_item_plug_id=>wwv_flow_api.id(174382427556141889)
,p_item_default=>'0'
,p_prompt=>'Aquifer Charges'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_css_classes=>'only-numeric'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(158420883850282999)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(173394484061478737)
,p_name=>'P175_WASA_CHARGES'
,p_item_sequence=>400
,p_item_plug_id=>wwv_flow_api.id(174382427556141889)
,p_item_default=>'0'
,p_prompt=>'Wasa Charges'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_css_classes=>'only-numeric'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(158420883850282999)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(173394592447478738)
,p_name=>'P175_ELECTRICITY_CHARGES'
,p_item_sequence=>410
,p_item_plug_id=>wwv_flow_api.id(174382427556141889)
,p_item_default=>'0'
,p_prompt=>'Electricity Charges'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_css_classes=>'only-numeric'
,p_field_template=>wwv_flow_api.id(158420883850282999)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(173394644182478739)
,p_name=>'P175_SPORTS_CLUB'
,p_item_sequence=>420
,p_item_plug_id=>wwv_flow_api.id(174382427556141889)
,p_item_default=>'0'
,p_prompt=>'Sports Club'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_css_classes=>'only-numeric'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(158420883850282999)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(173394751873478740)
,p_name=>'P175_TRAFFIC_VIOLATION_CHARGES'
,p_item_sequence=>430
,p_item_plug_id=>wwv_flow_api.id(174382427556141889)
,p_item_default=>'0'
,p_prompt=>'Traffic Violation Charges'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_css_classes=>'only-numeric'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(158420883850282999)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(173394809696478741)
,p_name=>'P175_DAMAGE_CHARGES'
,p_item_sequence=>440
,p_item_plug_id=>wwv_flow_api.id(174382427556141889)
,p_item_default=>'0'
,p_prompt=>'Damage Charges'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_css_classes=>'only-numeric'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(158420883850282999)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(173394932429478742)
,p_name=>'P175_BY_LAWS_VIOLATION_CHARGES'
,p_item_sequence=>450
,p_item_plug_id=>wwv_flow_api.id(174382427556141889)
,p_item_default=>'0'
,p_prompt=>'By Laws Violation Charges'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_css_classes=>'only-numeric'
,p_field_template=>wwv_flow_api.id(158420883850282999)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(173395086898478743)
,p_name=>'P175_OTHERS_CHARGES'
,p_item_sequence=>460
,p_item_plug_id=>wwv_flow_api.id(174382427556141889)
,p_item_default=>'0'
,p_prompt=>'Others Charges'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_css_classes=>'only-numeric'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(158420883850282999)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(174382873898141889)
,p_name=>'P175_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(174382427556141889)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(174383251794141890)
,p_name=>'P175_BILL_SETUP_ID'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(174382427556141889)
,p_prompt=>'PLOT #/Customer Name'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'BILL_SETUP_PLOT_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    DPD.PLOT_NO,',
'    DPB.CLIENT_REG_NO,DBS.PLOT_ID, DPD.CATEGORY,--DBR.TARIFF_PER_UNIT,DBR.MAINTENANCE,DBR.WASA__CHARGES,',
'    DPD.PLOT_NO || '' - '' || DPB.CLIENT_REG_NO || '' '' || DBS.PLOT_ID  ||'' - ''||DPD.CATEGORY AS D,',
'    DPD.ID AS R',
'FROM',
'    DGMS_PLOT_DETAILS DPD',
'     JOIN DGMS_PLOTS_BOOKING DPB ON DPB.PLOT_ID = DPD.ID  AND DPB.BOOKING_STATUS = ''BOOKED''  AND DPB.ORG_ID = :P175_ORGANIZATION',
'    ',
'    LEFT JOIN DGMS_BILLS_SETUP DBS ON DBS.PLOT_ID = DPB.PLOT_ID   --AND DBS.ORG_ID =:P175_ORGANIZATION',
'    LEFT JOIN DGMS_BILL_RATES DBR ON DBR.ID = DPD.ID',
'    AND DPD.ORG_ID =:P175_ORGANIZATION;'))
,p_lov_cascade_parent_items=>'P175_ORGANIZATION'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>32
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_display_when=>'P175_ID'
,p_display_when_type=>'ITEM_IS_NULL'
,p_field_template=>wwv_flow_api.id(158420883850282999)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
,p_attribute_10=>'CATEGORY:P175_MARLA_CATEGORY'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(174383698540141890)
,p_name=>'P175_PLOT_ID'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(174382427556141889)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(174384069715141890)
,p_name=>'P175_METER'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(174382427556141889)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(174384420325141891)
,p_name=>'P175_BILL_MONTH'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(174382427556141889)
,p_prompt=>'Bill Month'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select trim(to_char(R,''MONTH''))||''-''||to_char(R,''RRRR'') R,trim(to_char(R,''MONTH''))||''-''||to_char(R,''RRRR'') D',
'',
'from (',
'select ',
'    add_months(sysdate,level-13) R',
'from',
'    dual',
'connect by level <= 12',
'union',
'select ',
'   add_months(sysdate,level -1) R',
'from',
'    dual',
'connect by level <= 12) where to_char(R,''MONTH-RRRR'')=case when :P175_MONTH is not null then',
'to_char(add_months(to_date(:P175_MONTH,''DD-MON-YYYY HH:MI AM''),1)',
',''MONTH-RRRR'') else to_char(R,''MONTH-RRRR'') end '))
,p_lov_cascade_parent_items=>'P175_MONTH'
,p_ajax_items_to_submit=>'P175_MONTH'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_cMaxlength=>100
,p_read_only_when=>'P175_ID'
,p_read_only_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_api.id(158420883850282999)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
,p_attribute_07=>'Search..'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(174384886242141891)
,p_name=>'P175_ISSUE_DATE'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(174382427556141889)
,p_prompt=>'Issue Date'
,p_format_mask=>'DD-MON-YYYY'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>32
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_read_only_when=>'P175_ID'
,p_read_only_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_api.id(158420883850282999)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'N'
,p_attribute_12=>'MONTH-PICKER:YEAR-PICKER'
,p_attribute_13=>'VISIBLE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(174385205424141891)
,p_name=>'P175_DUE_DATE'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(174382427556141889)
,p_prompt=>'Due Date'
,p_format_mask=>'DD-MON-YYYY'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>32
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_read_only_when=>'P175_ID'
,p_read_only_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_api.id(158420883850282999)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'N'
,p_attribute_12=>'MONTH-PICKER:YEAR-PICKER'
,p_attribute_13=>'VISIBLE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(174385695004141892)
,p_name=>'P175_PER_UNIT_RATE_300'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_api.id(174382427556141889)
,p_display_as=>'NATIVE_HIDDEN'
,p_display_when_type=>'NEVER'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(174386032444141892)
,p_name=>'P175_PER_UNIT_RATE_300_ABOVE'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_api.id(174382427556141889)
,p_display_as=>'NATIVE_HIDDEN'
,p_display_when_type=>'NEVER'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(174386440036141892)
,p_name=>'P175_PAYABLE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(174475418924060627)
,p_prompt=>'Payable'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_tag_attributes=>'READONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(158420883850282999)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(174386883596141892)
,p_name=>'P175_PAYABLE_AFTER_DUE_DATE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(174475418924060627)
,p_prompt=>'Payable After Due Date'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_tag_attributes=>'READONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(158420883850282999)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(174387297370141893)
,p_name=>'P175_UNIT_CONSUMED'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(174382427556141889)
,p_prompt=>'Consumed Unit'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_tag_attributes=>'READONLY'
,p_begin_on_new_line=>'N'
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(158420883850282999)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(174387661109141893)
,p_name=>'P175_CURRENT_READING'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(174382427556141889)
,p_prompt=>'Current Reading'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_tag_css_classes=>'only-numeric1'
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(158420883850282999)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(174388026235141893)
,p_name=>'P175_PREV_READING'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(174382427556141889)
,p_prompt=>'Prev Reading'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_tag_css_classes=>'only-numeric'
,p_tag_attributes=>'READONLY'
,p_begin_on_new_line=>'N'
,p_display_when_type=>'NEVER'
,p_read_only_when=>'P175_ID'
,p_read_only_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_api.id(158420883850282999)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(174388499576141894)
,p_name=>'P175_CREATED_BY'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_api.id(174382427556141889)
,p_display_as=>'NATIVE_HIDDEN'
,p_display_when_type=>'NEVER'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(174388897719141894)
,p_name=>'P175_CREATED_ON'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_api.id(174382427556141889)
,p_display_as=>'NATIVE_HIDDEN'
,p_display_when_type=>'NEVER'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(174389298289141894)
,p_name=>'P175_UPDATED_BY'
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_api.id(174382427556141889)
,p_display_as=>'NATIVE_HIDDEN'
,p_display_when_type=>'NEVER'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(174389653698141894)
,p_name=>'P175_UPDATED_ON'
,p_item_sequence=>310
,p_item_plug_id=>wwv_flow_api.id(174382427556141889)
,p_display_as=>'NATIVE_HIDDEN'
,p_display_when_type=>'NEVER'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(174390005463141895)
,p_name=>'P175_ORG_ID'
,p_item_sequence=>320
,p_item_plug_id=>wwv_flow_api.id(174382427556141889)
,p_item_default=>'SELECT TO_NUMBER(:p_org_id) FROM DUAL;'
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>'New'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(158420883850282999)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(174390475578141895)
,p_name=>'P175_BILL_TYPE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(174382427556141889)
,p_item_default=>'ELECTRICITY BILL'
,p_prompt=>'<B>Bill Type</B>'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC2:ELECTRICITY BILL;ELECTRICITY BILL,WATER BILL;WATER BILL,COMMUNITY BILL;COMMUNITY BILL'
,p_display_when_type=>'NEVER'
,p_read_only_when=>'P175_ID'
,p_read_only_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_api.id(158420883850282999)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large:t-Form-fieldContainer--radioButtonGroup'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'3'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(174390852577141896)
,p_name=>'P175_ACTIVE'
,p_item_sequence=>330
,p_item_plug_id=>wwv_flow_api.id(174382427556141889)
,p_prompt=>'New'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(158420883850282999)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(174391286601141896)
,p_name=>'P175_STATUS'
,p_item_sequence=>340
,p_item_plug_id=>wwv_flow_api.id(174382427556141889)
,p_prompt=>'New'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(158420883850282999)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(174391619118141896)
,p_name=>'P175_MONTH'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(174382427556141889)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(174392020057141897)
,p_name=>'P175_APPROVAL_STATUS'
,p_item_sequence=>350
,p_item_plug_id=>wwv_flow_api.id(174382427556141889)
,p_item_default=>'PENDING'
,p_prompt=>'New'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(158420883850282999)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(174475792681060630)
,p_name=>'P175_ARREARS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(174475418924060627)
,p_prompt=>'<B>Arrears</B>'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_css_classes=>'only-numeric'
,p_tag_attributes=>'READONLY'
,p_display_when_type=>'NEVER'
,p_read_only_when=>'P175_ID'
,p_read_only_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_api.id(158420883850282999)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(174477474295060647)
,p_name=>'P175_READING_DATE'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(174382427556141889)
,p_prompt=>'Reading Date'
,p_format_mask=>'DD-MON-YYYY'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_read_only_when=>'P175_ID'
,p_read_only_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_api.id(158420883850282999)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'N'
,p_attribute_12=>'MONTH-PICKER:YEAR-PICKER'
,p_attribute_13=>'VISIBLE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(179323094576122205)
,p_name=>'P175_TARIFF_PER_UNIT'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(174382427556141889)
,p_prompt=>'Water Tariff Per Unit'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_css_classes=>'only-numeric1'
,p_begin_on_new_line=>'N'
,p_display_when=>'P175_ID'
,p_display_when_type=>'ITEM_IS_NULL'
,p_field_template=>wwv_flow_api.id(158420883850282999)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(208784338798026008)
,p_name=>'P175_WATER'
,p_item_sequence=>380
,p_item_plug_id=>wwv_flow_api.id(174382427556141889)
,p_item_default=>'0'
,p_prompt=>'Water'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(158420883850282999)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(208784417158026009)
,p_name=>'P175_CCTV_REBATE_FOR_PHASE_2'
,p_item_sequence=>470
,p_item_plug_id=>wwv_flow_api.id(174382427556141889)
,p_item_default=>'0'
,p_prompt=>'CCTV Rebate For Phase 2'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(158420883850282999)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(212079847236416139)
,p_name=>'P175_DISCOUNT_STATUS'
,p_item_sequence=>490
,p_item_plug_id=>wwv_flow_api.id(174382427556141889)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(212080996740416150)
,p_name=>'P175_BILL_SU_C_ID'
,p_item_sequence=>500
,p_item_plug_id=>wwv_flow_api.id(174382427556141889)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(215022717680938601)
,p_name=>'P175_BILL_SETUP_ID_1'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(174382427556141889)
,p_prompt=>'Customer Name/Meter Reference #'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_display_when=>'P175_ID'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_read_only_when=>'P175_ID'
,p_read_only_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_api.id(158420883850282999)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(238432008109584948)
,p_name=>'P175_BILL_TYPE1'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(174382427556141889)
,p_item_default=>'COMMUNITY BILL'
,p_display_as=>'NATIVE_HIDDEN'
,p_display_when=>'P175_BILL_TYPE1'
,p_display_when2=>'COMMUNITY BILL'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(238432122624584949)
,p_name=>'P175_CURRENT_READING1'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(174382427556141889)
,p_prompt=>'Current Reading1'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(158420883850282999)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(238432242014584950)
,p_name=>'P175_PREVIOUS_READING1'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(174382427556141889)
,p_prompt=>'Previous Reading1'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_attributes=>'READONLY'
,p_begin_on_new_line=>'N'
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(158420883850282999)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(239571649509462838)
,p_name=>'P175_ORGANIZATION'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(174382427556141889)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Organization'
,p_placeholder=>'Select Organisation'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT ASS.DESCRIPTION AS D, ASS.SITE_ID AS R ',
'FROM APP_SETUP_SITE ASS',
'WHERE ASS.OPERATION_TYPE = ''061-0005'' AND ASS.STATUS = ''Y'' AND ASS.SITE_ID <> ''4006'' and ASS.SITE_ID NOT IN (''4021'')',
'ORDER BY SITE_ID ASC;'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_display_when=>'P175_ID'
,p_display_when_type=>'ITEM_IS_NULL'
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
 p_id=>wwv_flow_api.id(239571767690462839)
,p_name=>'P175_RENT'
,p_item_sequence=>520
,p_item_plug_id=>wwv_flow_api.id(174382427556141889)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(240436758970089201)
,p_name=>'P175_CONSUMED_UNITS1'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_api.id(174382427556141889)
,p_prompt=>'Consumed Units'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_attributes=>'READONLY'
,p_begin_on_new_line=>'N'
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(158420883850282999)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(240436895791089202)
,p_name=>'P175_CURRENT_READING2'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_api.id(174382427556141889)
,p_prompt=>'Current Reading 2'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(158420883850282999)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(240436975100089203)
,p_name=>'P175_PREVIOUS_READING2'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_api.id(174382427556141889)
,p_prompt=>'Previous Reading2'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_attributes=>'READONLY'
,p_begin_on_new_line=>'N'
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(158420883850282999)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(240437095728089204)
,p_name=>'P175_CONSUMED_UNITS2'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_api.id(174382427556141889)
,p_prompt=>'Consumed Units'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_attributes=>'READONLY'
,p_begin_on_new_line=>'N'
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(158420883850282999)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(240437113294089205)
,p_name=>'P175_INTERNET_CHARGES'
,p_item_sequence=>480
,p_item_plug_id=>wwv_flow_api.id(174382427556141889)
,p_item_default=>'0'
,p_prompt=>'Storm Fiber'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(158420883850282999)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(240438427140089218)
,p_name=>'P175_SUM_OF_CONSUMED_UNITS'
,p_item_sequence=>510
,p_item_plug_id=>wwv_flow_api.id(174382427556141889)
,p_prompt=>'<B>Sum Of Consumed Units</B>'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(158420883850282999)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(241381817807919129)
,p_name=>'P175_MARLA_CATEGORY'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_api.id(174382427556141889)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(241383151750919142)
,p_name=>'P175_BILL'
,p_item_sequence=>540
,p_item_plug_id=>wwv_flow_api.id(174382427556141889)
,p_prompt=>'<B>BILL PAYMENT</B>'
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
 p_id=>wwv_flow_api.id(241767715347903029)
,p_name=>'P175_HEAD_ID'
,p_item_sequence=>550
,p_item_plug_id=>wwv_flow_api.id(174382427556141889)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(241864038715322908)
,p_name=>'P175_PLOT_ID1'
,p_item_sequence=>530
,p_item_plug_id=>wwv_flow_api.id(174382427556141889)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(174472954044060602)
,p_validation_name=>'OTHER BILL DETAILS'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN ',
'',
'    IF :P175_MAINTENANCE IS NOT NULL AND :P175_WATER IS NOT NULL AND :P175_AQUIFER_CHARGES IS NOT NULL AND :P175_RENT IS NOT NULL AND :P175_ELECTRICITY_CHARGES IS NOT NULL AND  ',
'    :P175_SPORTS_CLUB IS NOT NULL AND :P175_TRAFFIC_VIOLATION_CHARGES IS NOT NULL AND :P175_DAMAGE_CHARGES IS NOT NULL AND :P175_BY_LAWS_VIOLATION_CHARGES IS NOT NULL AND ',
'    :P175_OTHERS_CHARGES IS NOT NULL ',
'     THEN',
'            RETURN TRUE;',
'        ELSE',
'            RETURN FALSE;',
'    END IF;',
'END;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'PLEASE FILL ALL ITEMS OF OTHER DETAILS!'
,p_validation_condition_type=>'NEVER'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(182285772646144640)
,p_validation_name=>'BILL CHECK BY PREVIOUS BILL '
,p_validation_sequence=>20
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'coutt number;',
'BEGIN ',
'',
'   SELECT COUNT(*)',
'INTO coutt ',
'FROM DGMS_BILLS_DEATILS',
'WHERE BILL_SETUP_ID =:P175_BILL_SETUP_ID and APPROVAL_STATUS not in (''APPROVED'',''REJECTED'');',
'-- or DISCOUNT_STATUS=''PENDING'';',
'if coutt >0 then',
'return(''Please Approve / Reject All payament against select bill in Bill Management...!'');',
'end if;',
'END;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_always_execute=>'Y'
,p_when_button_pressed=>wwv_flow_api.id(174401266037141903)
,p_associated_item=>wwv_flow_api.id(174383251794141890)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(216027621401995901)
,p_validation_name=>'BILL CHECK BY PREVIOUS BILL  DISCOUNT'
,p_validation_sequence=>30
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'coutt number;',
'BEGIN ',
'',
'   SELECT COUNT(*)',
'INTO coutt ',
'FROM DGMS_BILLS_DEATILS',
'WHERE BILL_SETUP_ID =:P175_BILL_SETUP_ID and DISCOUNT_STATUS not in (''APPROVED'',''REJECTED'');',
'',
'if coutt >0 then',
'return(''Please Approve / Reject All Discount against select bill in Bill Management...!'');',
'end if;',
'END;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_always_execute=>'Y'
,p_when_button_pressed=>wwv_flow_api.id(174401266037141903)
,p_associated_item=>wwv_flow_api.id(174383251794141890)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
end;
/
begin
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(215555789741985513)
,p_validation_name=>'BILL CHECKING FROM ACCOUNT'
,p_validation_sequence=>40
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'coutt number;',
'BEGIN ',
'select count(*) into coutt',
'from  DGMS_VOUCHERS_APPROVAL',
'where BUSINESS_NATURE=''BILLING''and BILL_ID=:P175_BILL_SETUP_ID',
'and TRANSACTION_TYPE=:P175_BILL_TYPE',
'and APPROVAL_STATUS not in (''REJECTED'',''ACCEPTED'');',
'if coutt >0 then',
'return(''Please Accept / Reject All payament against select bill in Account...!'');',
'end if;',
'END;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_when_button_pressed=>wwv_flow_api.id(174401266037141903)
,p_associated_item=>wwv_flow_api.id(174383251794141890)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(208668239785780845)
,p_validation_name=>'Issue Date '
,p_validation_sequence=>50
,p_validation=>'P175_ISSUE_DATE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Issue Date must have some value.'
,p_when_button_pressed=>wwv_flow_api.id(174401266037141903)
,p_associated_item=>wwv_flow_api.id(174384886242141891)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(208668353999780846)
,p_validation_name=>'Due Date '
,p_validation_sequence=>60
,p_validation=>'P175_DUE_DATE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Due Date must have some value.'
,p_when_button_pressed=>wwv_flow_api.id(174401266037141903)
,p_associated_item=>wwv_flow_api.id(174385205424141891)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(208668413678780847)
,p_validation_name=>'Reading Date'
,p_validation_sequence=>70
,p_validation=>'P175_READING_DATE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Reading Date must have some value.'
,p_validation_condition=>'P175_BILL_TYPE1'
,p_validation_condition2=>'COMMUNITY BILL'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_when_button_pressed=>wwv_flow_api.id(174401266037141903)
,p_associated_item=>wwv_flow_api.id(174477474295060647)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(208668574338780848)
,p_validation_name=>'Current Reading'
,p_validation_sequence=>80
,p_validation=>'P175_CURRENT_READING'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Current Reading must have some value.'
,p_validation_condition_type=>'NEVER'
,p_associated_item=>wwv_flow_api.id(174387661109141893)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(208668735743780850)
,p_validation_name=>'CUSTOMER NAME'
,p_validation_sequence=>90
,p_validation=>'P175_BILL_SETUP_ID'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Customer Name/Meter Reference # must have some value'
,p_when_button_pressed=>wwv_flow_api.id(174401266037141903)
,p_associated_item=>wwv_flow_api.id(174383251794141890)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(208783648377026001)
,p_validation_name=>'UNIT CONSUMED'
,p_validation_sequence=>100
,p_validation=>':P175_UNIT_CONSUMED is not null and :P175_UNIT_CONSUMED>0'
,p_validation2=>'PLSQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>'Consumed Unit is not null and not equal zero...!'
,p_always_execute=>'Y'
,p_validation_condition_type=>'NEVER'
,p_when_button_pressed=>wwv_flow_api.id(174401266037141903)
,p_associated_item=>wwv_flow_api.id(174387297370141893)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(209734997178740433)
,p_validation_name=>'New'
,p_validation_sequence=>110
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE ',
'',
'CHEK NUMBER;',
'',
'BEGIN',
'',
'SELECT  COUNT(*) INTO CHEK FROM DGMS_BILLS_DEATILS WHERE  BILL_SETUP_ID=:P175_BILL_SETUP_ID AND BILL_MONTH=:P175_BILL_MONTH AND APPROVAL_STATUS<> ''REJECT'';',
'IF ',
'  CHEK<0  THEN ',
'--   DBMS_OUTPUT.PUT_LINE(''This month bill already generated'');',
' return (''This month bill already generated'');',
'  end if;',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_always_execute=>'Y'
,p_when_button_pressed=>wwv_flow_api.id(174401266037141903)
,p_associated_item=>wwv_flow_api.id(174384420325141891)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(182034641448771939)
,p_validation_name=>'BILL MONTH IS NULL'
,p_validation_sequence=>120
,p_validation=>'P175_BILL_MONTH'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Bill Month is not null...!'
,p_always_execute=>'Y'
,p_when_button_pressed=>wwv_flow_api.id(174401266037141903)
,p_associated_item=>wwv_flow_api.id(174384420325141891)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(213133036967045945)
,p_validation_name=>'ISSUE_DATE WITHIN15 DAYS'
,p_validation_sequence=>130
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'MIN_DATE date;',
'MAX_DATE date;',
'MIN_DATE_C varchar2(20);',
'MAX_DATE_C varchar2(20);',
'begin',
'MIN_DATE:=to_date(:P175_BILL_MONTH,''MONTH-RRRR'')-15;--,''DD-Mon-YYYY'');',
' MAX_DATE:=to_date(:P175_BILL_MONTH,''MONTH-RRRR'');',
'MIN_DATE_C:=To_char(MIN_DATE,''DD-MON-YYYY'');',
'MAX_DATE_C:=To_char(MAX_DATE,''DD-MON-YYYY'');',
'-- dbms_output.put_line(MIN_DATE);',
'-- dbms_output.put_line(MAX_DATE);',
'-- dbms_output.put_line(to_date(:P175_ISSUE_DATE,''DD-MON-YYYY''));',
'',
'if MIN_DATE>to_date(:P175_ISSUE_DATE,''DD-MON-YYYY'') ',
'or',
'MAX_DATE<to_date(:P175_ISSUE_DATE,''DD-MON-YYYY'')',
'then',
'return(''Between ''||MIN_DATE_C||'' and ''||MAX_DATE_C);',
'end if;',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_always_execute=>'Y'
,p_validation_condition_type=>'NEVER'
,p_when_button_pressed=>wwv_flow_api.id(174401266037141903)
,p_associated_item=>wwv_flow_api.id(174384886242141891)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(213133130128045946)
,p_validation_name=>'READING_DATE WITHIN15 DAYS'
,p_validation_sequence=>140
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'MIN_DATE date;',
'MAX_DATE date;',
'MIN_DATE_C varchar2(20);',
'MAX_DATE_C varchar2(20);',
'begin',
'MIN_DATE:=to_date(:P175_BILL_MONTH,''MONTH-RRRR'')-15;--,''DD-Mon-YYYY'');',
' MAX_DATE:=to_date(:P175_BILL_MONTH,''MONTH-RRRR'');',
'MIN_DATE_C:=To_char(MIN_DATE,''DD-MON-YYYY'');',
'MAX_DATE_C:=To_char(MAX_DATE,''DD-MON-YYYY'');',
'-- dbms_output.put_line(MIN_DATE);',
'-- dbms_output.put_line(MAX_DATE);',
'-- dbms_output.put_line(to_date(:P175_ISSUE_DATE,''DD-MON-YYYY''));',
'',
'if MIN_DATE>to_date(:P175_READING_DATE,''DD-MON-YYYY'') ',
'or',
'MAX_DATE<to_date(:P175_READING_DATE,''DD-MON-YYYY'')',
'then',
'return(''Between ''||MIN_DATE_C||'' and ''||MAX_DATE_C);',
'end if;',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_always_execute=>'Y'
,p_validation_condition=>'P175_BILL_TYPE1'
,p_validation_condition2=>'COMMUNITY BILL'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_when_button_pressed=>wwv_flow_api.id(174401266037141903)
,p_associated_item=>wwv_flow_api.id(174477474295060647)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(213133265593045947)
,p_validation_name=>'DUE_DATE WITHIN15 DAYS'
,p_validation_sequence=>150
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'MIN_DATE date;',
'MAX_DATE date;',
'MIN_DATE_C varchar2(20);',
'MAX_DATE_C varchar2(20);',
'begin',
'MIN_DATE:=to_date(:P175_ISSUE_DATE,''DD-MON-YYYY'');--,''DD-Mon-YYYY'');',
' MAX_DATE:=to_date(:P175_ISSUE_DATE,''DD-MON-YYYY'')+30;',
'MIN_DATE_C:=To_char(MIN_DATE,''DD-MON-YYYY'');',
'MAX_DATE_C:=To_char(MAX_DATE,''DD-MON-YYYY'');',
'-- dbms_output.put_line(MIN_DATE);',
'-- dbms_output.put_line(MAX_DATE);',
'-- dbms_output.put_line(to_date(:P175_ISSUE_DATE,''DD-MON-YYYY''));',
'',
'if MIN_DATE>to_date(:P175_DUE_DATE,''DD-MON-YYYY'') ',
'or',
'MAX_DATE<to_date(:P175_DUE_DATE,''DD-MON-YYYY'')',
'then',
'return(''Between ''||MIN_DATE_C||'' and ''||MAX_DATE_C);',
'end if;',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_always_execute=>'Y'
,p_validation_condition_type=>'NEVER'
,p_when_button_pressed=>wwv_flow_api.id(174401266037141903)
,p_associated_item=>wwv_flow_api.id(174385205424141891)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(241867960067322947)
,p_tabular_form_region_id=>wwv_flow_api.id(239587083110541426)
,p_validation_name=>'Duplicate value not insert'
,p_validation_sequence=>160
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- DECLARE',
'--    count_1    NUMBER;',
'--    meter_ref  VARCHAR2(100);',
'--    apex_status VARCHAR2(1); ',
'',
'-- BEGIN',
'--    apex_status := :APEX$ROW_STATUS; ',
'',
'--    IF apex_status = ''C'' THEN',
'--       SELECT COUNT(1)',
'--         INTO count_1',
'--         FROM DGMS_BILLS_SETUP',
'--        WHERE ID = :ID AND PLOT_ID = :PLOT_ID;',
'',
'--       IF count_1 > 1 THEN',
'--           return ''This Meter Reference already entered !'';',
'--       END IF;',
'',
'--       SELECT METER_REF_NO',
'--         INTO meter_ref',
'--         FROM DGMS_BILLS_SETUP',
'--        WHERE ID = :ID;',
'--    END IF;',
'-- END;',
'',
'',
'',
'declare',
'v_count number;',
'begin',
'select COUNT(METER_REF_NO) into v_count from DGMS_BILLS_SETUP',
'     WHERE UPPER(METER_REF_NO) = UPPER(:METER_REF_NO)',
'     and ID = :ID AND PLOT_ID = :PLOT_ID;',
'  ',
'if v_count > 1 then',
'return false;',
'else ',
'return true;',
'end if;',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Duplicate value not insert in Meter Ref NO'
,p_associated_column=>'METER_REF_NO'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(209733321284740417)
,p_name=>'GET VALUE'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P175_BILL_SETUP_ID'
,p_condition_element=>'P175_BILL_SETUP_ID'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(182034474700771937)
,p_event_id=>wwv_flow_api.id(209733321284740417)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P175_BILL_MONTH'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(209733481341740418)
,p_event_id=>wwv_flow_api.id(209733321284740417)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'V_LIVING_STS VARCHAR2(100);',
'MAX_DUE_DATE date;',
'DRAMOUNT number;',
'AR_AMT number;',
'V_COUNT NUMBER ;',
'v_METER VARCHAR2(500);',
'unit_amt NUMBER:=0; unit_amt1 number; unit_amt2 number;',
'B NUMBER;',
'unit NUMBER;unit1 NUMBER;unit2 NUMBER; sum_of_units number;',
'begin',
'        SELECT   DGS.PLOT_ID,DGS.PREV_READING,DGS.METER_REF_NO,DGS.PREV_READING1, DGS.PREV_READING2,DGS.PAYABLE_ARREARS,DBR.LIVING_STATUS ,DBR.ID',
'        INTO ',
'                :P175_PLOT_ID,:P175_PREV_READING,V_METER,:P175_PREVIOUS_READING1 ,:P175_PREVIOUS_READING2,:P175_ARREARS,V_LIVING_STS,:P175_BILL_SU_C_ID',
'        FROM DGMS_BILLS_SETUP DGS',
'        JOIN DGMS_BILLS_SETUP_CHILD DBR',
'        ON DBR.BILL_SETUP_ID  = DGS.ID',
'        WHERE DGS.ID = :P175_BILL_SETUP_ID AND DBR.STATUS=''Y'';',
'          SELECT  COUNT(*) ,max(DUE_DATE) ,max(to_date(BILL_MONTH,''MONTH-RRRR''))',
'        INTO    V_COUNT',
'                ,MAX_DUE_DATE',
'                ,:P175_MONTH',
'        FROM DGMS_BILLS_DEATILS',
'        WHERE BILL_SETUP_ID =:P175_BILL_SETUP_ID and APPROVAL_STATUS != ''REJECTED'';',
'    ',
'IF V_COUNT != 0 THEN',
'        :P175_ARREARS := 0;',
'        ',
'        SELECT case ',
'                    when MAX_DUE_DATE>=sysdate',
'                    then PAYABLE',
'                    else PAYABLE_AFTER_DUE_DATE end',
'        INTO AR_AMT',
'        FROM DGMS_BILLS_DEATILS',
'        WHERE BILL_SETUP_ID = :P175_BILL_SETUP_ID',
'        AND DUE_DATE=MAX_DUE_DATE ;',
'',
'        select SUM(DR_AMOUNT)DR_AMOUNT',
'        into DRAMOUNT',
'        from  DGMS_VOUCHERS_APPROVAL ',
'        where BUSINESS_NATURE=''BILLING'' ',
'        and BILL_ID =:P175_BILL_SETUP_ID---i.BILL_ID',
'        and APPROVAL_STATUS<>''REJECTED'';',
'        :P175_ARREARS:=AR_AMT-NVL(DRAMOUNT,0);',
'    IF :P175_ARREARS IS NULL THEN',
'        :P175_ARREARS := 0;',
'    END IF;',
'END IF; ',
' --ELECTRICITY  water--',
'IF :P175_BILL_TYPE1=''COMMUNITY BILL'' THEN    ',
'    IF V_COUNT != 0 THEN',
'        SELECT MAX(CURRENT_READING) ',
'        INTO :P175_PREV_READING ',
'        FROM  DGMS_BILLS_DEATILS ',
'        WHERE  BILL_SETUP_ID = :P175_BILL_SETUP_ID and APPROVAL_STATUS != ''REJECTED'' ;',
'    END IF;',
'        :P175_METER:=v_METER;--:P175_PREV_READING:=v_PREV_READING;',
'    SELECT ',
'        --NVL(TARIFF_UPTO_UNIT,0) --,NVL(TARIFF_ABOVE_UNIT,0)',
'        NVL(TARIFF_PER_UNIT,0),ID ',
'    INTO ',
'        --:P175_PER_UNIT_RATE_300--,:P175_PER_UNIT_RATE_300_ABOVE',
'        :P175_TARIFF_PER_UNIT',
'        ,:P175_U_ID',
'    FROM DGMS_BILL_RATES',
'    WHERE BILL_TYPE = ''COMMUNITY BILL''--:P175_BILL_TYPE1 ',
'    AND ACTIVE = ''Y''',
'    AND EFFECTIVE_DATE <= sysdate ',
'    AND ORG_ID = :P_ORG_ID --:P175_ORGANIZATION',
'    AND LIVING_STATUS = V_LIVING_STS;',
'    unit:=  :P175_CURRENT_READING - :P175_PREV_READING;',
'    unit1:= :P175_CURRENT_READING1 - :P175_PREVIOUS_READING1;',
'    unit2:= :P175_CURRENT_READING2 - :P175_PREVIOUS_READING2; sum_of_units :=unit + unit1 +unit2;',
'   -- sum_of_units:=:P175_SUM_OF_CONSUMED_UNITS;',
'    --if :P175_BILL_TYPE=''ELECTRICITY BILL'' then',
'      --  IF  unit <=300 THEN ',
'          --  unit_amt:= unit * NVL(:P175_PER_UNIT_RATE_300,0);',
'       -- ELSE',
'         --   unit_amt:= (unit-300) * NVL(:P175_PER_UNIT_RATE_300_ABOVE,0); --   END IF;',
'    if :P175_BILL_TYPE1=''COMMUNITY BILL'' then',
'     unit_amt1:= nvl(:P175_MAINTENANCE,0)',
'    +nvl(:P175_AQUIFER_CHARGES,0)',
'    +nvl(:P175_WASA_CHARGES,0)',
'    +nvl(:P175_ELECTRICITY_CHARGES,0)',
'    +nvl(:P175_SPORTS_CLUB,0)',
'    +nvl(:P175_TRAFFIC_VIOLATION_CHARGES,0)',
'    +nvl(:P175_DAMAGE_CHARGES,0)',
'    +nvl(:P175_BY_LAWS_VIOLATION_CHARGES,0)',
'    +nvl(:P175_OTHERS_CHARGES,0)',
'    +nvl(:P175_WATER,0)',
'    +nvl(:P175_CCTV_REBATE_FOR_PHASE_2,0)+nvl(:P175_INTERNET_CHARGES,0);',
'        unit_amt:= sum_of_units * NVL(:P175_TARIFF_PER_UNIT,0);',
'        unit_amt2:=unit_amt1+unit_amt;',
'    end if;',
'         B :=unit_amt2*10/100;',
'    if unit_amt2!=0 then',
'        :P175_PAYABLE_AFTER_DUE_DATE:=unit_amt2+B+nvl(:P175_ARREARS,0);',
'    end if;',
'        :P175_PAYABLE:=nvl(unit_amt2,0)+nvl(:P175_ARREARS,0);',
'        --exception when others then null;',
'END IF;',
'END;'))
,p_attribute_02=>'P175_BILL_SETUP_ID,P175_BILL_TYPE,P175_AQUIFER_CHARGES,P175_WASA_CHARGES,P175_ELECTRICITY_CHARGES,P175_SPORTS_CLUB,P175_TRAFFIC_VIOLATION_CHARGES,P175_DAMAGE_CHARGES,P175_BY_LAWS_VIOLATION_CHARGES,P175_OTHERS_CHARGES,P175_ARREARS,P175_MAINTENANCE,P17'
||'5_WATER,P175_CCTV_REBATE_FOR_PHASE_2,P175_CURRENT_READING,P175_INTERNET_CHARGES,P175_BILL_TYPE1,P175_TARIFF_PER_UNIT'
,p_attribute_03=>'P175_METER,P175_PREV_READING,P175_ARREARS,P175_PLOT_ID1,P175_PAYABLE,P175_PAYABLE_AFTER_DUE_DATE,P175_UNIT_CONSUMED,P175_U_ID,P175_MONTH,P175_BILL_SU_C_ID,P175_TARIFF_PER_UNIT,P175_PREVIOUS_READING1,P175_PREVIOUS_READING2'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(215555507378985511)
,p_event_id=>wwv_flow_api.id(209733321284740417)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var result = JSON.parse($v(''P175_R''));',
'',
'apex.message.clearErrors();',
'',
'if (result.status === ''error'') {  ',
'  for (var idx = 0; idx < result.errors.length; idx++) {',
'    result.errors[idx].type = ''error'';',
'    result.errors[idx].location = [''page'', ''inline''];',
'    result.errors[idx].unsafe = false;',
'  }',
'',
'  apex.message.showErrors(result.errors); ',
'} ',
'else if (result.status === ''success'') {',
'  apex.message.hidePageSuccess(''Added Successfully'', function(){',
'   // apex.navigation.redirect(''https://google.com'');',
unistr('\00A0\00A0});'),
'}'))
,p_server_condition_type=>'NEVER'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(208784023144026005)
,p_name=>'community'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P175_MAINTENANCE,P175_AQUIFER_CHARGES,P175_WASA_CHARGES,P175_ELECTRICITY_CHARGES,P175_SPORTS_CLUB,P175_TRAFFIC_VIOLATION_CHARGES,P175_DAMAGE_CHARGES,P175_BY_LAWS_VIOLATION_CHARGES,P175_OTHERS_CHARGES,P175_WATER,P175_CCTV_REBATE_FOR_PHASE_2,P175_ARREA'
||'RS,P175_INTERNET_CHARGES,P175_CURRENT_READING,P175_CURRENT_READING1,P175_CURRENT_READING2,P175_TARIFF_PER_UNIT'
,p_bind_type=>'bind'
,p_bind_event_type=>'keyup'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(208784183810026006)
,p_event_id=>wwv_flow_api.id(208784023144026005)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'A NUMBER:=0;',
'B NUMBER;',
'C NUMBER;',
'unit number;unit1 number;unit2 number;unit_amt number;unit_amt1 number; unit_amt2 number;sum_of_units number;',
'',
'BEGIN',
'    -- unit:=  NVL(:P175_CURRENT_READING,0) - NVL(:P175_PREV_READING,0);',
'    -- unit1:= NVL(:P175_CURRENT_READING1,0) - NVL(:P175_PREVIOUS_READING1,0);',
'    -- unit2:= NVL(:P175_CURRENT_READING2,0) - NVL(:P175_PREVIOUS_READING2,0);',
'    --  sum_of_units :=NVL(unit,0) + NVL(unit1,0) +NVL(unit2,0);',
'',
'      unit_amt1:= nvl(:P175_MAINTENANCE,0)',
'    +nvl(:P175_AQUIFER_CHARGES,0)',
'    +nvl(:P175_WASA_CHARGES,0)',
'    +nvl(:P175_ELECTRICITY_CHARGES,0)',
'    +nvl(:P175_SPORTS_CLUB,0)',
'    +nvl(:P175_TRAFFIC_VIOLATION_CHARGES,0)',
'    +nvl(:P175_DAMAGE_CHARGES,0)',
'    +nvl(:P175_BY_LAWS_VIOLATION_CHARGES,0)',
'    +nvl(:P175_OTHERS_CHARGES,0)',
'    +nvl(:P175_WATER,0)',
'    +nvl(:P175_CCTV_REBATE_FOR_PHASE_2,0)+nvl(:P175_INTERNET_CHARGES,0) ',
'    +nvl (:P175_BILL,0);',
'    --    unit_amt:= sum_of_units * NVL(:P175_TARIFF_PER_UNIT,0);',
'    --    unit_amt2:=NVL(unit_amt1,0)+NVL(unit_amt,0);',
'',
'    B :=unit_amt1*10/100;',
'    if unit_amt1!=0 then',
'        :P175_PAYABLE_AFTER_DUE_DATE:=unit_amt1+B;--+nvl(:P175_ARREARS,0);',
'    end if;',
'        :P175_PAYABLE:=nvl(unit_amt1,0);--+nvl(:P175_ARREARS,0);',
'',
'END;'))
,p_attribute_02=>'P175_AQUIFER_CHARGES,P175_WASA_CHARGES,P175_ELECTRICITY_CHARGES,P175_SPORTS_CLUB,P175_TRAFFIC_VIOLATION_CHARGES,P175_DAMAGE_CHARGES,P175_BY_LAWS_VIOLATION_CHARGES,P175_OTHERS_CHARGES,P175_ARREARS,P175_MAINTENANCE,P175_WATER,P175_CCTV_REBATE_FOR_PHASE'
||'_2,P175_INTERNET_CHARGES,P175_TARIFF_PER_UNIT,P175_CURRENT_READING1,P175_PREVIOUS_READING1,P175_CURRENT_READING2,P175_PREVIOUS_READING2,P175_UNIT_CONSUMED,P175_PREV_READING,P175_CURRENT_READING,P175_BILL'
,p_attribute_03=>'P175_PAYABLE,P175_PAYABLE_AFTER_DUE_DATE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(209733837866740422)
,p_event_id=>wwv_flow_api.id(208784023144026005)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- function get_data(){            ',
'--     var RATE_300_ABOVE = $(''#P175_PER_UNIT_RATE_300_ABOVE'').val(); ',
'--     var UNITS =   $(''#P175_UNIT_CONSUMED'').val();',
'--     var PER_UNIT =   $(''#P175_TARIFF_PER_UNIT'').val();',
'--     var unit_300_RATE = 0;',
'--     RATE_300 = $v(''P175_PER_UNIT_RATE_300'');',
'--     var after_due = 0;',
'--     var unit_300_RATE_ABOVE = 0;',
'--     var unit_300_RATE_ABOVE1 = 0;',
'--     unit_300_RATE_ABOVE1 = UNITS * PER_UNIT;',
'--     if (UNITS > 300) {',
'--         unit_300_RATE = 300 * RATE_300; ',
'--         UNITS = UNITS - 300;',
'--         unit_300_RATE_ABOVE = (UNITS * RATE_300_ABOVE) + (unit_300_RATE) ;',
'--         //unit_300_RATE_ABOVE1 = UNITS * PER_UNIT;',
'--         unit_300_RATE_ABOVE =  unit_300_RATE_ABOVE + parseInt($(''#P175_ARREARS'').val()||0);',
'--     }',
'--     else',
'--     {',
'--         unit_300_RATE = UNITS * RATE_300 ;',
'--         //unit_300_RATE_ABOVE1 = UNITS * PER_UNIT;',
'--         unit_300_RATE_ABOVE = unit_300_RATE + parseInt($(''#P175_ARREARS'').val()||0);',
'--     }',
'',
'',
'',
'-- declare ',
'-- A NUMBER;',
'-- B NUMBER;',
'-- C NUMBER;',
'',
'-- BEGIN',
'',
'-- A:=nvl(:P175_MAINTENANCE,0)+nvl(:P175_AQUIFER_CHARGES,0)+nvl(:P175_RENT,0)+nvl(:P175_ELECTRICITY_CHARGES,0)+nvl(:P175_SPORTS_CLUB,0)',
'-- +nvl(:P175_TRAFFIC_VIOLATION_CHARGES,0)+nvl(:P175_DAMAGE_CHARGES,0)+nvl(:P175_BY_LAWS_VIOLATION_CHARGES,0)+nvl(:P175_OTHERS_CHARGES,0)',
'-- +nvl(:P175_WATER,0)+nvl(:P175_CCTV_REBATE_FOR_PHASE_2,0);',
'',
'-- B:=A*10/100;',
'-- :P175_PAYABLE_AFTER_DUE_DATE:=A+B+nvl(:P175_ARREARS,0);',
'',
'-- :P175_PAYABLE:=A+nvl(:P175_ARREARS,0);',
'',
'',
'-- END;',
' ',
' DECLARE ',
'',
' A NUMBER;',
' B NUMBER;',
'  ',
' begin',
' A:=NVL(:P175_UNIT_CONSUMED,0)*NVL(:P175_TARIFF_PER_UNIT,0) ;',
' B :=A*10/100;',
'',
':P175_PAYABLE:=A+nvl(:P175_ARREARS,0);',
'',
':P175_PAYABLE_AFTER_DUE_DATE:=A+B+nvl(:P175_ARREARS,0);',
'',
'end;'))
,p_attribute_02=>'P175_CURRENT_READING,P175_UNIT_CONSUMED'
,p_attribute_03=>'P175_PAYABLE,P175_PAYABLE_AFTER_DUE_DATE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P175_BILL_TYPE'
,p_client_condition_expression=>'WATER BILL'
,p_server_condition_type=>'NEVER'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(208784568311026010)
,p_name=>'Read only BILL MONTH'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P175_BILL_TYPE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(208784644219026011)
,p_event_id=>wwv_flow_api.id(208784568311026010)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P175_BILL_MONTH'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(209732034897740404)
,p_name=>'New_2'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P175_BILL_TYPE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(209732149193740405)
,p_event_id=>wwv_flow_api.id(209732034897740404)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(''#P175_BILL_TYPE'').change(function(){',
'',
'    if(apex.item(''P175_BILL_TYPE'').getValue() == ''WATER BILL''){',
'',
'',
'$x(''P175_BILL_MONTH'').readOnly = true;',
'',
' }',
'',
'    else if(apex.item(''P175_BILL_TYPE'').getValue() == ''ELECTRICITY BILL''){',
'        $x(''P175_BILL_MONTH'').readOnly = true;',
'',
' }',
'    else if(apex.item(''P175_BILL_TYPE'').getValue() == ''COMMUNITY BILL''){',
'        $x(''P175_BILL_MONTH'').readOnly = false;',
'        }',
'        });'))
,p_server_condition_type=>'NEVER'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(209732751159740411)
,p_name=>'REFRESH PAYABLE'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P175_BILL_SETUP_ID'
,p_bind_type=>'bind'
,p_bind_event_type=>'keyup'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(209732874404740412)
,p_event_id=>wwv_flow_api.id(209732751159740411)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P175_PAYABLE,P175_PAYABLE_AFTER_DUE_DATE'
,p_server_condition_type=>'NEVER'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(209733694867740420)
,p_name=>'CLEAR '
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P175_BILL_TYPE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(209733763345740421)
,p_event_id=>wwv_flow_api.id(209733694867740420)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P175_PER_UNIT_RATE_300,P175_CURRENT_READING,P175_UNIT_CONSUMED,P175_ISSUE_DATE,P175_DUE_DATE,P175_ARREARS,P175_PAYABLE,P175_PAYABLE_AFTER_DUE_DATE,P175_PREV_READING,P175_MONTH'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(212079347409416134)
,p_name=>'CLEAR _1'
,p_event_sequence=>90
,p_condition_element=>'P175_ID'
,p_triggering_condition_type=>'NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(212079448415416135)
,p_event_id=>wwv_flow_api.id(212079347409416134)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P175_PER_UNIT_RATE_300,P175_CURRENT_READING,P175_UNIT_CONSUMED,P175_ISSUE_DATE,P175_DUE_DATE,P175_ARREARS,P175_PAYABLE,P175_PAYABLE_AFTER_DUE_DATE,P175_PREV_READING,P175_BILL_SETUP_ID,P175_BILL_TYPE1,P175_ORGANIZATION,P175_TARIFF_PER_UNIT,P175_CURREN'
||'T_READING1,P175_PREVIOUS_READING1,P175_CONSUMED_UNITS1,P175_CURRENT_READING2,P175_PREVIOUS_READING2,P175_CONSUMED_UNITS2,P175_BILL,P175_MARLA_CATEGORY'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(209733999129740423)
,p_name=>'water electricty'
,p_event_sequence=>100
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P175_CURRENT_READING,P175_TARIFF_PER_UNIT,P175_CURRENT_READING1,P175_CURRENT_READING2'
,p_bind_type=>'bind'
,p_bind_event_type=>'keyup'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(209733161546740415)
,p_event_id=>wwv_flow_api.id(209733999129740423)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
' DECLARE ',
' A NUMBER;',
' B NUMBER;',
'unit number;',
'unit1 number;',
'unit2 number;',
'sum_of_units number;',
'unit_amt number;',
' begin',
'',
' ',
'  unit:=  :P175_CURRENT_READING - :P175_PREV_READING;',
'  unit1:= :P175_CURRENT_READING1 - :P175_PREVIOUS_READING1; ',
'  unit2:= :P175_CURRENT_READING2 - :P175_PREVIOUS_READING2;',
'  sum_of_units := unit + unit1 + unit2; ',
'  ',
'--   if :P175_BILL_TYPE=''ELECTRICITY BILL'' then',
'-- IF  unit <=300 THEN ',
'--   unit_amt:= unit * NVL(:P175_PER_UNIT_RATE_300,0);',
'-- ELSE   ',
'--   unit_amt:= (unit-300)  * NVL(:P175_PER_UNIT_RATE_300_ABOVE,0);',
'--    END IF;',
'   if :P175_BILL_TYPE1=''COMMUNITY BILL'' then',
' unit_amt:= sum_of_units * NVL(:P175_TARIFF_PER_UNIT,0);',
'   end if;',
':P175_UNIT_CONSUMED :=unit;',
':P175_CONSUMED_UNITS1 :=unit1;',
':P175_CONSUMED_UNITS2 :=unit2;',
'--  A:=NVL(:P175_UNIT_CONSUMED,0)*NVL(unit_amt,0) ;',
' B :=unit_amt*10/100;',
' ',
':P175_PAYABLE:=nvl(unit_amt,0)+nvl(:P175_ARREARS,0);',
' ',
':P175_PAYABLE_AFTER_DUE_DATE:=nvl(unit_amt,0)+B+nvl(:P175_ARREARS,0);',
'end;',
'',
'',
'-- P175_ARREARS,P175_CURRENT_READING,P175_PREV_READING,P175_BILL_TYPE,P175_PER_UNIT_RATE_300,P175_PER_UNIT_RATE_300_ABOVE,P175_TARIFF_PER_UNIT'))
,p_attribute_02=>'P175_ARREARS,P175_CURRENT_READING,P175_PREV_READING,P175_TARIFF_PER_UNIT,P175_BILL_TYPE1,P175_CURRENT_READING1,P175_PREVIOUS_READING1,P175_CURRENT_READING2,P175_PREVIOUS_READING2'
,p_attribute_03=>'P175_PAYABLE,P175_PAYABLE_AFTER_DUE_DATE,P175_UNIT_CONSUMED,P175_CONSUMED_UNITS1,P175_CONSUMED_UNITS2'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(209734126419740425)
,p_name=>'electrical'
,p_event_sequence=>110
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P175_ARREARS,P175_CURRENT_READING'
,p_condition_element=>'P175_BILL_TYPE'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'ELECTRICITY BILL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(209734216289740426)
,p_event_id=>wwv_flow_api.id(209734126419740425)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
' ',
' DECLARE ',
'',
'--  A NUMBER;',
' B NUMBER;',
'unit number;',
'unit_amt number;',
' begin',
'',
' ',
'  unit:=  :P175_CURRENT_READING - :P175_PREV_READING;',
'  ',
'IF  unit <=300 THEN ',
'  unit_amt:= unit * :P175_PER_UNIT_RATE_300;',
'ELSE   ',
'  unit_amt:= unit * :P175_PER_UNIT_RATE_300_ABOVE;',
'   END IF;',
':P175_UNIT_CONSUMED:=unit;',
'--  A:=NVL(:P175_UNIT_CONSUMED,0)*NVL(unit_amt,0) ;',
' B :=unit_amt*10/100;',
' ',
':P175_PAYABLE:=nvl(unit_amt,0)+nvl(:P175_ARREARS,0);',
' ',
':P175_PAYABLE_AFTER_DUE_DATE:=nvl(unit_amt,0)+B+nvl(:P175_ARREARS,0);',
'end;',
' ',
''))
,p_attribute_02=>'P175_CURRENT_READING,P175_PREV_READING,P175_PER_UNIT_RATE_300,P175_ARREARS'
,p_attribute_03=>'P175_PAYABLE,P175_PAYABLE_AFTER_DUE_DATE,P175_UNIT_CONSUMED'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'NEVER'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(213133315659045948)
,p_name=>'CLAR DUE_DATE'
,p_event_sequence=>130
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P175_ISSUE_DATE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(213133404567045949)
,p_event_id=>wwv_flow_api.id(213133315659045948)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P175_DUE_DATE'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(241382489926919135)
,p_name=>'New'
,p_event_sequence=>140
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P175_MARLA_CATEGORY'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(241382534037919136)
,p_event_id=>wwv_flow_api.id(241382489926919135)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P175_TARIFF_PER_UNIT,P175_MAINTENANCE,P175_WASA_CHARGES'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT TARIFF_PER_UNIT,MAINTENANCE,WASA__CHARGES',
'FROM DGMS_BILL_RATES',
'WHERE MARLA_CATEGORY=:P175_MARLA_CATEGORY AND ACTIVE=''Y'';'))
,p_attribute_07=>'P175_MARLA_CATEGORY'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
end;
/
begin
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(241382682878919137)
,p_event_id=>wwv_flow_api.id(241382489926919135)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P175_TARIFF_PER_UNIT'
,p_server_condition_type=>'NEVER'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(241864265668322910)
,p_name=>'ADD DETAIL'
,p_event_sequence=>150
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(241864192736322909)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(241864323490322911)
,p_event_id=>wwv_flow_api.id(241864265668322910)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.region( "LINEID" ).widget().interactiveGrid( "getActions" ).invoke( "selection-add-row" );'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(227236664179843017)
,p_event_id=>wwv_flow_api.id(241864265668322910)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.region("LINEID").call("getActions").set("edit", true);'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(241765379524903005)
,p_name=>'set value'
,p_event_sequence=>160
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_api.id(239587083110541426)
,p_triggering_element=>'METER_REF_NO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(241765403350903006)
,p_event_id=>wwv_flow_api.id(241765379524903005)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'PREV_READING'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  DISTINCT PREV_READING from dgms_bills_setuP',
'WHERE METER_REF_NO = :METER_REF_NO',
'AND PLOT_ID =:PLOT_ID',
'',
'',
''))
,p_attribute_07=>'METER_REF_NO,PLOT_ID'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(241765506081903007)
,p_name=>'New_3'
,p_event_sequence=>180
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_api.id(239587083110541426)
,p_triggering_element=>'CURRENT_READING,PREV_READING'
,p_bind_type=>'bind'
,p_bind_event_type=>'keyup'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(241765690078903008)
,p_event_id=>wwv_flow_api.id(241765506081903007)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'UNIT_CONSUMED'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>'nvl(:CURRENT_READING,0) - nvl(:PREV_READING,0)'
,p_attribute_07=>'CURRENT_READING,PREV_READING'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(241865780703322925)
,p_name=>'Get Plot_id'
,p_event_sequence=>180
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_api.id(239587083110541426)
,p_triggering_element=>'PLOT_ID'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(241865866755322926)
,p_event_id=>wwv_flow_api.id(241865780703322925)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'PLOT_ID'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT PLOT_ID ',
'FROM DGMS_BILLS_SETUP ',
'WHERE PLOT_ID=:P175_BILL_SETUP_ID  ',
'',
'',
'-- SELECT DISTINCT     DBS.PLOT_ID --|| '' - '' ||DPD.PLOT_NO  as PLOT_NO  , DBS.PLOT_ID as PLOT_ID',
'-- FROM DGMS_PLOT_DETAILS DPD',
'-- LEFT JOIN DGMS_BILLS_SETUP DBS ON DBS.PLOT_ID = DPD.ID',
'-- WHERE DBS.PLOT_ID = :P175_BILL_SETUP_ID',
'',
'',
''))
,p_attribute_07=>'P175_BILL_SETUP_ID'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(241866619612322934)
,p_name=>'New_1'
,p_event_sequence=>190
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_api.id(239587083110541426)
,p_triggering_element=>'BILL_PAYMENT'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(241866782820322935)
,p_event_id=>wwv_flow_api.id(241866619612322934)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P175_BILL'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>':BILL_PAYMENT'
,p_attribute_07=>'BILL_PAYMENT'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(241766447562903016)
,p_event_id=>wwv_flow_api.id(241866619612322934)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P175_BILL'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var model = apex.region("LINEID").widget().interactiveGrid("getViews", "grid").model; // LINEID is the region id of IG',
'var n_dist_amount, n_total = 0;',
'var col_gl_amount = model.getFieldKey("BILL_PAYMENT");',
'model.forEach(function(igrow)',
'       {',
'               ',
'               n_dist_amount = parseInt(igrow[col_gl_amount], 10);',
'               if (!isNaN(n_dist_amount)) {',
'                         n_total += n_dist_amount;',
'          }',
'  }',
'      );',
'     ',
'console.log(n_total);',
'',
'$s(''P175_BILL'', n_total);'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(241766035774903012)
,p_name=>'New_4'
,p_event_sequence=>200
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_api.id(239587083110541426)
,p_triggering_element=>'UNIT_CONSUMED'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(241766174334903013)
,p_event_id=>wwv_flow_api.id(241766035774903012)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'BILL_PAYMENT'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>'nvl(:P175_TARIFF_PER_UNIT,0) * nvl(:UNIT_CONSUMED,0)'
,p_attribute_07=>'P175_TARIFF_PER_UNIT,UNIT_CONSUMED'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(241768381503903035)
,p_name=>'New_5'
,p_event_sequence=>210
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P175_BILL_SETUP_ID'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(241768475316903036)
,p_event_id=>wwv_flow_api.id(241768381503903035)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P175_MARLA_CATEGORY,P175_TARIFF_PER_UNIT,P175_MAINTENANCE,P175_WASA_CHARGES'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  DCS.CATEGORY, DBR.TARIFF_PER_UNIT, DBR.MAINTENANCE, DBR.WASA__CHARGES',
'FROM dgms_categories_setup DCS ',
'JOIN dgms_bill_rates DBR ON DCS.ID = DBR.CATEGORY_ID',
'LEFT JOIN DGMS_BILLS_DEATILS DBS ON DBS.ID = DBR.ID',
'WHERE BILL_SETUP_ID =  :P175_BILL_SETUP_ID',
'',
'',
'',
''))
,p_attribute_07=>'P175_BILL_SETUP_ID'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'NEVER'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(232793471596232132)
,p_name=>'REFRESH GRID'
,p_event_sequence=>220
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P175_BILL_SETUP_ID'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(232793575734232133)
,p_event_id=>wwv_flow_api.id(232793471596232132)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(239587083110541426)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(173395673804478749)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PROCESS DGMS BILLS DETAIL'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'    begin',
'    ',
'    if :P175_ID is null then',
'    INSERT INTO "DGMS_BILLS_DEATILS" ',
'   (',
'	"BILL_SETUP_ID" , ',
'	"PLOT_ID", ',
'	--"METER", ',
'	"ISSUE_DATE", ',
'	"DUE_DATE", ',
'	--"PER_UNIT_RATE_300" , ',
'	--"PER_UNIT_RATE_300_ABOVE" , ',
'	"PAYABLE" , ',
'	"PAYABLE_AFTER_DUE_DATE" , ',
'',
'	"BILL_TYPE", ',
'	"ACTIVE", ',
'	"ARREARS" , ',
'	"READING_DATE", ',
'	-- "DISCOUNT_STATUS", ',
'	"MAINTENANCE" , ',
'	"AQUIFER_CHARGES" , ',
'	"WASA_CHARGES",--"RENT" , ',
'	"ELECTRICITY_CHARGES" , ',
'	"SPORTS_CLUB" , ',
'	"TRAFFIC_VIOLATION_CHARGES" , ',
'	"DAMAGE_CHARGES" , ',
'	"BY_LAWS_VIOLATION_CHARGES" , ',
'	"OTHERS_CHARGES" , ',
'	"BILL_MONTH", ',
'	"WATER" , ',
'	"CCTV_REBATE_FOR_PHASE_2" , ',
'	"TARIFF_PER_UNIT" ,',
'    "INTERNET_CHARGES", ',
'    "BILL_PAYMENT", -- "SUM_OF_CONSUMED_UNITS",',
'	"BILL_SU_C_ID")',
'    VALUES',
'        (',
'        :P175_BILL_SETUP_ID',
'        ,:P175_PLOT_ID',
'        --,:P175_METER',
'        ,:P175_ISSUE_DATE',
'        ,:P175_DUE_DATE',
'        --,:P175_PER_UNIT_RATE_300',
'        --,:P175_PER_UNIT_RATE_300_ABOVE',
'        ,:P175_PAYABLE',
'        ,:P175_PAYABLE_AFTER_DUE_DATE',
'        ,''COMMUNITY BILL''--:P175_BILL_TYPE1 --''COMMUNITY BILL''',
'        ,:P175_ACTIVE',
'        ,:P175_ARREARS',
'        ,:P175_READING_DATE',
'        -- ,:P175_DISCOUNT_STATUS',
'        ,:P175_MAINTENANCE',
'        ,:P175_AQUIFER_CHARGES',
'        ,:P175_WASA_CHARGES',
'        ,:P175_ELECTRICITY_CHARGES',
'        ,:P175_SPORTS_CLUB',
'        ,:P175_TRAFFIC_VIOLATION_CHARGES',
'        ,:P175_DAMAGE_CHARGES',
'        ,:P175_BY_LAWS_VIOLATION_CHARGES',
'        ,:P175_OTHERS_CHARGES',
'        ,:P175_BILL_MONTH',
'        ,:P175_WATER',
'        ,:P175_CCTV_REBATE_FOR_PHASE_2',
'        ,:P175_TARIFF_PER_UNIT',
'        ,:P175_INTERNET_CHARGES',
'        ,:P175_BILL--,:P175_SUM_OF_CONSUMED_UNITS',
'        ,:P175_BILL_SU_C_ID',
'        );',
'        COMMIT;',
'       /* SELECT "DGMS_BILLS_DEATILS_SEQ".currval  ',
'        INTO :P175_ID ',
'        from DUAL; ',
'        update DGMS_BILLS_DEATILS',
'        set STATUS =''SHIFT'',',
'        UPDATED_BY=:APP_USER,',
'        UPDATED_ON=SYSDATE',
'        where BILL_SETUP_ID=:P175_BILL_SETUP_ID ',
'        and STATUS=''UNPAID'' ',
'        and ID!=:P175_ID  ',
'        and APPROVAL_STATUS != ''REJECTED'';  */',
'       ',
'commit;',
'',
'        else ',
'    update  "DGMS_BILLS_DEATILS"',
'        set --PER_UNIT_RATE_300=:P175_PER_UNIT_RATE_300,',
'            --PER_UNIT_RATE_300_ABOVE=:P175_PER_UNIT_RATE_300_ABOVE,',
'            PAYABLE=:P175_PAYABLE,',
'            PAYABLE_AFTER_DUE_DATE=:P175_PAYABLE_AFTER_DUE_DATE,',
'           -- UNIT_CONSUMED=:P175_UNIT_CONSUMED,',
'           -- CURRENT_READING=:P175_CURRENT_READING,',
'            UPDATED_BY=:APP_USER,',
'            UPDATED_ON=SYSDATE,',
'            TARIFF_PER_UNIT=:P175_TARIFF_PER_UNIT,',
'            "MAINTENANCE"=:P175_MAINTENANCE, ',
'            "AQUIFER_CHARGES"=:P175_AQUIFER_CHARGES,',
'            "WASA_CHARGES"=:P175_WASA_CHARGES,',
'            "ELECTRICITY_CHARGES"=:P175_ELECTRICITY_CHARGES,',
'            "SPORTS_CLUB"=:P175_SPORTS_CLUB,',
'            "TRAFFIC_VIOLATION_CHARGES"=:P175_TRAFFIC_VIOLATION_CHARGES,',
'            "DAMAGE_CHARGES"=:P175_DAMAGE_CHARGES,',
'            "BY_LAWS_VIOLATION_CHARGES"=:P175_BY_LAWS_VIOLATION_CHARGES,',
'            "OTHERS_CHARGES"=:P175_OTHERS_CHARGES,',
'            "WATER"=:P175_WATER,',
'            "INTERNET_CHARGES"=:P175_INTERNET_CHARGES,',
'            "CCTV_REBATE_FOR_PHASE_2"=:P175_CCTV_REBATE_FOR_PHASE_2      ',
'',
'    where ID=:P175_ID;',
'    commit;',
' ',
'        end if;',
'     ',
'        EXCEPTION WHEN OTHERS THEN NULL;    ',
'        end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(174401266037141903)
,p_process_success_message=>'&REQUEST. Successfully...!'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(241766544403903017)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(239587083110541426)
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'INTERACTIVE GRID PROCESS MASTER DETAIL'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'',
' V_ID NUMBER ;        ',
'begin',
' SELECT "DGMS_BILLS_DEATILS_SEQ".CURRVAL INTO V_ID from DUAL;',
'',
'     case :APEX$ROW_STATUS',
'',
'     when ''C'' then ',
'         insert into DGMS_BILLS_SETUP (BILL_ID,  METER_REF_NO, PREV_READING,PLOT_ID, CURRENT_READING, UNIT_CONSUMED, BILL_PAYMENT )',
'                                values(V_ID, :METER_REF_NO, :PREV_READING,:PLOT_ID, :CURRENT_READING, :UNIT_CONSUMED, :BILL_PAYMENT  )',
'         returning ID into :ID;',
'     when ''U'' then',
'         update DGMS_BILLS_SETUP SET ',
'         BILL_ID = :P175_ID,',
'          METER_REF_NO =  :METER_REF_NO, ',
'          PREV_READING = :PREV_READING,',
'         PLOT_ID  =  :PLOT_ID,',
'          CURRENT_READING =:CURRENT_READING,',
'          UNIT_CONSUMED = :UNIT_CONSUMED,',
'          BILL_PAYMENT = :BILL_PAYMENT',
'          ',
'             where ID  = :ID;',
'     end case;',
'     --EXCEPTION WHEN OTHERS THEN NULL;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'testing grid process'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(174401266037141903)
,p_only_for_changed_rows=>'N'
,p_process_success_message=>'testing grid peocess'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(182652640286267301)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'UPDATE BILL DETAILS'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'UPDATE DGMS_BILLS_DEATILS_CHILD SET',
'',
'    MAINTENANCE = :P175_MAINTENANCE,  ',
'    WATER = :P175_WATER,',
'    AQUIFER_CHARGES = :P175_AQUIFER_CHARGES,',
'    RENT = :P175_RENT, ',
'    ELECTRICITY_CHARGES = :P175_ELECTRICITY_CHARGES,',
'    SPORTS_CLUB = :P175_SPORTS_CLUB,',
'    TRAFFIC_VIOLATION_CHARGES = :P175_TRAFFIC_VIOLATION_CHARGES,',
'    DAMAGE_CHARGES = :P175_DAMAGE_CHARGES,',
'    BY_LAWS_VIOLATION_CHARGES = :P175_BY_LAWS_VIOLATION_CHARGES,',
'    OTHERS_CHARGES = :P175_OTHERS_CHARGES ',
'',
'WHERE BILL_DETAIL_ID = :P175_ID;',
'COMMIT;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_type=>'NEVER'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(173393594915478728)
,p_process_sequence=>10
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'BILL SETUP'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_SETUP_BILL_id number := apex_application.g_x01;',
'v_plot_id VARCHAR2(100);',
'v_METER VARCHAR2(500);',
'v_PREV_READING number;',
'V_COUNT NUMBER;',
'V_ARREARS NUMBER;',
'begin',
'    SELECT ',
'    PREV_READING, DBS.PLOT_ID, DBS.METER_REF_NO,PAYABLE_ARREARS INTO v_PREV_READING,  v_plot_id,v_METER,v_ARREARS',
'    FROM DGMS_BILLS_SETUP  DBS',
'    WHERE DBS.ID = v_SETUP_BILL_id;',
'',
'    SELECT COUNT(*) INTO V_COUNT FROM  DGMS_BILLS_DEATILS WHERE  BILL_SETUP_ID =   v_SETUP_BILL_id;',
'    ',
'    IF V_COUNT != 0 THEN',
'    V_ARREARS := 0;',
'        SELECT SUM(PAYABLE_AFTER_DUE_DATE) INTO V_ARREARS FROM  DGMS_BILLS_DEATILS WHERE  BILL_SETUP_ID =   v_SETUP_BILL_id AND STATUS = ''UNPAID'';',
'         IF V_ARREARS IS NULL THEN',
'         V_ARREARS := 0;',
'         END IF;',
'        SELECT MAX(CURRENT_READING) INTO v_PREV_READING FROM  DGMS_BILLS_DEATILS WHERE  BILL_SETUP_ID =   v_SETUP_BILL_id;',
'    END IF;',
'    apex_json.open_object;',
'        apex_json.write(''success'', true);',
'        apex_json.write(''PLOT'',v_plot_id);',
'        apex_json.write(''METER'',v_METER);',
'        apex_json.write(''PREV_READING'',v_PREV_READING);',
'         apex_json.write(''ARREARS'',V_ARREARS);',
'    apex_json.close_object;',
'    exception when others',
'    then',
'    null;',
'end;',
'',
'',
'',
'    '))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_type=>'NEVER'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(178358963476438104)
,p_process_sequence=>20
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GET UNIT VALUE'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_BILL_TYPE VARCHAR2(250) := apex_application.g_x01;',
'V_ID NUMBER := apex_application.g_x02;',
'V_LIVING_STS VARCHAR2(100);',
'V_TRF_UPTO number;',
'V_TRF_ABV number;',
'V_TRF_PER_UNIT number;',
'V_TARIFF_PER_MARLA NUMBER;',
'V_PLOT_ID NUMBER;',
'V_COST NUMBER := 0 ;',
'V_DATE DATE := TO_DATE(sysdate,''MM/DD/YYYY'');',
'begin',
'    SELECT LIVING_STATUS,PLOT_ID INTO V_LIVING_STS,V_PLOT_ID',
'    FROM DGMS_BILLS_SETUP',
'    WHERE ID = V_ID;',
'',
'    SELECT ',
'    NVL(TARIFF_UPTO_UNIT,0), NVL(TARIFF_ABOVE_UNIT,0),NVL(TARIFF_PER_UNIT,0),NVL(TARIFF_PER_MARLA,0) ',
'    INTO V_TRF_UPTO,  V_TRF_ABV,V_TRF_PER_UNIT,V_TARIFF_PER_MARLA',
'    FROM DGMS_BILL_RATES',
'    WHERE BILL_TYPE = V_BILL_TYPE AND ACTIVE = ''Y'' AND EFFECTIVE_DATE <= V_DATE ',
'    AND ORG_ID = :P_ORG_ID AND LIVING_STATUS = V_LIVING_STS;',
'    ',
'    -- IF v_BILL_TYPE = ''WATER BILL'' THEN',
'    -- SELECT ROUND(MARLA * V_TARIFF_PER_MARLA,2) INTO V_COST',
'    -- FROM DGMS_PLOT_DETAILS ',
'    -- WHERE ID = V_PLOT_ID;',
'    -- END IF;',
'    ',
'    apex_json.open_object;',
'        apex_json.write(''success'', true);',
'        apex_json.write(''TRF_UPTO'',V_TRF_UPTO);',
'        apex_json.write(''TRF_ABV'',V_TRF_ABV);',
'        apex_json.write(''TRF_PER_UNIT'',V_TRF_PER_UNIT);',
'       -- apex_json.write(''COST'',V_COST);',
'    apex_json.close_object;',
'    exception when others',
'    then',
'    null;',
'end;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_type=>'NEVER'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(182491633105966748)
,p_process_sequence=>30
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GET BILL DET'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_BILL_ID NUMBER := apex_application.g_x01;',
'V_MAINTENANCE NUMBER;',
'V_WATER  NUMBER;',
'V_AQUIFER_CHARGES NUMBER;',
'V_RENT number;',
'V_ELECTRICITY_CHARGES number;',
'V_SPORTS_CLUB number;',
'V_TRAFFIC_VIOLATION_CHARGES NUMBER;',
'V_DAMAGE_CHARGES NUMBER;',
'V_BY_LAWS_VIOLATION_CHARGES NUMBER;',
'V_OTHERS_CHARGES NUMBER;',
'',
'begin',
'    SELECT  MAINTENANCE,WATER,AQUIFER_CHARGES,RENT,ELECTRICITY_CHARGES,SPORTS_CLUB,TRAFFIC_VIOLATION_CHARGES,',
'    DAMAGE_CHARGES,BY_LAWS_VIOLATION_CHARGES,OTHERS_CHARGES',
'    INTO',
'    V_MAINTENANCE,V_WATER,V_AQUIFER_CHARGES,V_RENT,V_ELECTRICITY_CHARGES,V_SPORTS_CLUB,V_TRAFFIC_VIOLATION_CHARGES,',
'    V_DAMAGE_CHARGES,V_BY_LAWS_VIOLATION_CHARGES,V_OTHERS_CHARGES',
'    FROM DGMS_BILLS_DEATILS_CHILD ',
'    WHERE BILL_DETAIL_ID = v_BILL_ID;',
'',
'    apex_json.open_object;',
'        apex_json.write(''success'', true);',
'        apex_json.write(''MAINTENANCE'',V_MAINTENANCE);',
'        apex_json.write(''WATER'',V_WATER);',
'        apex_json.write(''AQUIFER_CHARGES'',V_AQUIFER_CHARGES);',
'        apex_json.write(''RENT'',V_RENT);',
'        apex_json.write(''ELECTRICITY_CHARGES'',V_ELECTRICITY_CHARGES);',
'        apex_json.write(''SPORTS_CLUB'',V_SPORTS_CLUB);',
'        apex_json.write(''TRAFFIC_VIOLATION_CHARGES'',V_TRAFFIC_VIOLATION_CHARGES);',
'        apex_json.write(''DAMAGE_CHARGES'',V_DAMAGE_CHARGES);',
'        apex_json.write(''BY_LAWS_VIOLATION_CHARGES'',V_BY_LAWS_VIOLATION_CHARGES);',
'        apex_json.write(''OTHERS_CHARGES'',V_OTHERS_CHARGES);',
'    apex_json.close_object;',
'    exception when others',
'    then',
'    null;',
'end;',
'',
'',
'',
'    '))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_type=>'NEVER'
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
