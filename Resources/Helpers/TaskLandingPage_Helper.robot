*** Settings ***
Library    SeleniumLibrary
Variables    ../Locators/TaskLandingPage_Locator.py
Resource    Common_Helper.robot

*** Keywords ***
Select control unit
    [Arguments]    ${control_unit}
    Select issuedetails frame
    wait until element is visible    ${select_control_unit_id}    timeout=30
    select from list by label    ${select_control_unit_id}      ${control_unit}
    unselect frame

Input topic
    [Arguments]    ${topic_name}
    Select issuedetails frame
    wait until element is visible    ${input_topic_id}    timeout=30
    input text    ${input_topic_id}    ${topic_name}    True
    unselect frame

Select business unit
    [Arguments]    ${business_unit}
    Select issuedetails frame
    wait until element is visible    ${select_business_unit_id}    timeout=30
    select from list by label    ${select_business_unit_id}    ${business_unit}
    unselect frame

Click on ok
    Select issuedetails frame
    wait until element is visible  ${button_ok_id}    timeout=30
    click button    ${button_ok_id}
    unselect frame

Get item id
    select frame    ${frame_issue_details_id}
    wait until element is visible    ${text_item_id_id}    timeout=30
    ${item_id}    get text    ${text_item_id_id}
    log    ${item_id}
    [Return]    ${item_id}
    unselect frame

Click on discard
    Select issuedetails frame
    wait until element is visible  ${button_discard_id}    timeout=30
    click button    ${button_discard_id}
    unselect frame

Input user comment
    [Arguments]    ${user_comment}
    Select issuedetails frame
    wait until element is visible    ${input_user_comment_id}    timeout=30
    input text    ${input_user_comment_id}    ${user_comment}    True
    unselect frame

Get task state
    select frame    ${frame_issue_details_id}
    click element   ${tab_system_xpath}
    ${current_state}    get text    ${text_state_id}
    click element   ${tab_work_area_xpath}
    [Return]    ${current_state}
    unselect frame

Validate task state
    [Arguments]    ${expected_task_state}
    ${actual_task_state}    Get task state
    should be equal as strings    ${actual_task_state}    ${expected_task_state}
    log    current state of the task is : ${actual_task_state}

Select software variant
    [Arguments]    ${software_variant}
    Select issuedetails frame
    wait until element is visible    ${select_software_variant_id}    timeout=30
    select from list by label    ${select_software_variant_id}      ${software_variant}
    click element  ${link_s_v_forward_icon_xpath}
    unselect frame

Select potential sce relevance
    [Arguments]    ${potential_sce_relevance}
    Select issuedetails frame
    wait until element is visible    ${select_potential_sce_relevance_id}    timeout=30
    select from list by label    ${select_potential_sce_relevance_id}      ${potential_sce_relevance}
    unselect frame

Input details
    [Arguments]    ${details}
    Select issuedetails frame
    wait until element is visible    ${input_details_id}    timeout=30
    input text    ${input_details_id}    ${details}    True
    unselect frame

Input ifc id
    [Arguments]    ${ifc_id}
    Select issuedetails frame
    wait until element is visible    ${input_ifc_id}    timeout=30
    input text    ${input_ifc_id}    ${ifc_id}    True
    unselect frame

Input project name
    [Arguments]    ${project_name}
    Select issuedetails frame
    wait until element is visible    ${input_project_name_id}    timeout=30
    input text    ${input_project_name_id}    ${project_name}    True
    unselect frame

Select affected carlines
    [Arguments]    ${affected_carlines}
    Select issuedetails frame
    wait until element is visible    ${select_affected_carline_id}    timeout=30
    select from list by label    ${select_affected_carline_id}      ${affected_carlines}
    click element  ${link_a_c_forward_icon_xpath}
    unselect frame

Select affected engines
    [Arguments]    ${affected_engines}
    Select issuedetails frame
    wait until element is visible    ${select_affected_engine_id}    timeout=30
    select from list by label    ${select_affected_engine_id}      ${affected_engines}
    click element  ${link_a_e_forward_icon_xpath}
    unselect frame

Input software name
    [Arguments]    ${software_name}
    Select issuedetails frame
    wait until element is visible    ${input_software_name_id}    timeout=30
    input text    ${input_software_name_id}    ${software_name}    True
    unselect frame

Input release name
    [Arguments]    ${release_name}
    Select issuedetails frame
    wait until element is visible    ${input_release_name_id}    timeout=30
    input text    ${input_release_name_id}    ${release_name}    True
    unselect frame

Input function name
    [Arguments]    ${function_name}
    Select issuedetails frame
    wait until element is visible    ${input_function_name_id}    timeout=30
    input text    ${input_function_name_id}    ${function_name}    True
    unselect frame

Input variant coding
    [Arguments]    ${variant_coding}
    Select issuedetails frame
    wait until element is visible    ${input_variant_coding_id}    timeout=30
    input text    ${input_variant_coding_id}    ${variant_coding}    True
    unselect frame

Input data file
    [Arguments]    ${data_file_name}
    Select issuedetails frame
    wait until element is visible    ${input_data_file_name_id}    timeout=30
    input text    ${input_data_file_name_id}    ${data_file_name}    True
    unselect frame

Input change reason
    [Arguments]    ${change_reason}
    Select issuedetails frame
    wait until element is visible    ${input_change_reason_id}    timeout=30
    input text    ${input_change_reason_id}    ${change_reason}    True
    unselect frame

Input side effects
    [Arguments]    ${side_effects}
    Select issuedetails frame
    wait until element is visible    ${input_side_effect_id}    timeout=30
    input text    ${input_side_effect_id}    ${side_effects}    True
    unselect frame

Input technical description
    [Arguments]    ${technical_description}
    Select issuedetails frame
    wait until element is visible    ${input_technical_description_id}    timeout=30
    input text    ${input_technical_description_id}    ${technical_description}    True
    unselect frame

Input validation
    [Arguments]    ${validation}
    Select issuedetails frame
    wait until element is visible    ${input_validation_id}    timeout=30
    input text    ${input_validation_id}    ${validation}    True
    unselect frame

Select emissions
    [Arguments]    ${emissions}
    Select issuedetails frame
    wait until element is visible    ${select_emissions_id}    timeout=30
    select from list by label    ${select_emissions_id}      ${emissions}
    unselect frame

Select consumption range
    [Arguments]    ${consumption_range}
    Select issuedetails frame
    wait until element is visible    ${select_consumption_id}    timeout=30
    select from list by label    ${select_consumption_id}      ${consumption_range}
    unselect frame

Select noise
    [Arguments]    ${noise}
    Select issuedetails frame
    wait until element is visible    ${select_noise_id}    timeout=30
    select from list by label    ${select_noise_id}      ${noise}
    unselect frame

Select powertrain performance
    [Arguments]    ${powertrain_performance}
    Select issuedetails frame
    wait until element is visible    ${select_power_performance_id}    timeout=30
    select from list by label    ${select_power_performance_id}      ${powertrain_performance}
    unselect frame

Select affected obd
    [Arguments]    ${affected_obd}
    Select issuedetails frame
    wait until element is visible    ${select_affected_obd_id}    timeout=30
    select from list by label    ${select_affected_obd_id}      ${affected_obd}
    unselect frame

Select evaporation
    [Arguments]    ${evaporation}
    Select issuedetails frame
    wait until element is visible    ${select_evaporation_id}    timeout=30
    select from list by label    ${select_evaporation_id}      ${evaporation}
    unselect frame

Select durability
    [Arguments]    ${durability}
    Select issuedetails frame
    wait until element is visible    ${select_durability_id}    timeout=30
    select from list by label    ${select_durability_id}      ${durability}
    unselect frame

Select aes/bes
    [Arguments]    ${aes_bes}
    Select issuedetails frame
    wait until element is visible    ${select_aes_bes_id}    timeout=30
    select from list by label    ${select_aes_bes_id}      ${aes_bes}
    unselect frame

Select aecd
    [Arguments]    ${aecd}
    Select issuedetails frame
    wait until element is visible    ${select_aecd_id}    timeout=30
    select from list by label    ${select_aecd_id}      ${aecd}
    unselect frame

Select obd documentation
    [Arguments]    ${obd_documentation}
    Select issuedetails frame
    wait until element is visible    ${select_obd_documentation_id}    timeout=30
    select from list by label    ${select_obd_documentation_id}      ${obd_documentation}
    unselect frame

Input impact description
    [Arguments]    ${impact_description}
    Select issuedetails frame
    wait until element is visible    ${input_impact_description_id}    timeout=30
    input text    ${input_impact_description_id}    ${impact_description}    True
    unselect frame

Select comparison measurement
    [Arguments]    ${comparison_measurement}
    Select issuedetails frame
    wait until element is visible    ${select_comparison_measurement_id}    timeout=30
    select from list by label    ${select_comparison_measurement_id}      ${comparison_measurement}
    unselect frame

Select technically responsible deputy
    [Arguments]    ${technically_responsible_deputy}
    Select issuedetails frame
    wait until element is visible    ${input_tech_responsible_deputy_name}    timeout=30
    input text    ${input_tech_responsible_deputy_name}    ${technically_responsible_deputy}    True
    click element  ${button_tech_responsible_deputy_find_xpath}
    wait until element is not visible    ${text_searching_xpath}    timeout=30
    select from list by label    ${select_tech_responsible_deputy_id}      ${technically_responsible_deputy}
    click element  ${link_tech_responsible_deputy_forward_xpath}
    unselect frame

Select team leader
    [Arguments]    ${team_leader}
    Select issuedetails frame
    wait until element is visible    ${input_team_leader_name}    timeout=30
    input text    ${input_team_leader_name}    ${team_leader}    True
    wait until element is visible    ${button_team_leader_find_xpath}    timeout=30
    click element  ${button_team_leader_find_xpath}
    unselect frame

Select team leader deputy
    [Arguments]    ${team_leader_deputy}
    Select issuedetails frame
    wait until element is visible    ${input_team_leader_deputy_name}    timeout=30
    input text    ${input_team_leader_deputy_name}    ${team_leader_deputy}    True
    click element  ${button_team_leader_deputy_find_xpath}
    wait until element is not visible    ${text_searching_xpath}    timeout=30
    select from list by label    ${select_team_leader_deputy_id}      ${team_leader_deputy}
    click element  ${link_team_leader_deputy_forward_xpath}
    unselect frame

Select department leader
    [Arguments]    ${department_leader}
    Select issuedetails frame
    wait until element is visible    ${input_department_leader_name}    timeout=30
    input text    ${input_department_leader_name}    ${department_leader}    True
    wait until element is visible    ${button_department_leader_find_xpath}    timeout=30
    click element  ${button_department_leader_find_xpath}
    unselect frame

Select department leader deputy
    [Arguments]    ${department_leader_deputy}
    Select issuedetails frame
    wait until element is visible    ${input_department_leader_deputy_name}    timeout=30
    input text    ${input_department_leader_deputy_name}    ${department_leader_deputy}    True
    click element  ${button_department_leader_deputy_find_xpath}
    wait until element is not visible    ${text_searching_xpath}    timeout=30
    select from list by label    ${select_department_leader_deputy_id}      ${department_leader_deputy}
    wait until element is visible    ${link_department_leader_deputy_forward_xpath}    timeout=30
    click element  ${link_department_leader_deputy_forward_xpath}
    unselect frame

Select project leader
    [Arguments]    ${project_leader}
    Select issuedetails frame
    wait until element is visible    ${input_project_leader_name}    timeout=30
    input text    ${input_project_leader_name}    ${project_leader}    True
    click element  ${button_project_leader_find_xpath}
    unselect frame

Select project leader deputy
    [Arguments]    ${project_leader_deputy}
    Select issuedetails frame
    wait until element is visible    ${input_project_leader_deputy_name}    timeout=30
    input text    ${input_project_leader_deputy_name}    ${project_leader_deputy}    True
    click element  ${button_project_leader_deputy_find_xpath}
    wait until element is not visible    ${text_searching_xpath}    timeout=30
    select from list by label    ${select_project_leader_deputy_find_xpath}      ${project_leader_deputy}
    click element  ${link_project_leader_deputy_forward_xpath}
    unselect frame

Input description
    [Arguments]    ${description}
    Select issuedetails frame
    wait until element is visible    ${input_description_id}    timeout=30
    input text    ${input_description_id}    ${description}    True
    unselect frame

Input kem snr
    [Arguments]    ${kem_snr}
    Select issuedetails frame
    wait until element is visible    ${input_kem_snr_id}    timeout=30
    input text    ${input_kem_snr_id}    ${kem_snr}    True
    unselect frame

Input comment
    [Arguments]    ${comment}
    Select issuedetails frame
    wait until element is visible    ${input_user_comments_id}    timeout=30
    input text    ${input_user_comments_id}    ${comment}    True
    unselect frame

Click on preparation done go to confirmation
    Select issuedetails frame
    wait until element is visible  ${button_preparation_done_goto_confirmation_id}    timeout=30
    click button    ${button_preparation_done_goto_confirmation_id}
    handle alert    timeout=30
    unselect frame

Click on accept according to mbc map process definition
    Select issuedetails frame
    wait until element is visible  ${button_accept_according_to_mbc_map_process_definition_id}    timeout=30
    click button    ${button_accept_according_to_mbc_map_process_definition_id}
    unselect frame

Click on reject
    Select issuedetails frame
    wait until element is visible  ${button_reject_xpath}    timeout=30
    click button    ${button_reject_xpath}
    unselect frame

Input reject comment
    [Arguments]    ${comment}
    Select issuedetails frame
    wait until element is visible    ${input_reject_comments_id}    timeout=30
    input text    ${input_reject_comments_id}    ${comment}    True
    unselect frame

Validate task control unit
    [Arguments]    ${expected_task_control_unit}
    ${actual_task_control_unit}    Get task control unit
    should be equal as strings    ${actual_task_control_unit}    ${expected_task_control_unit}

Get task control unit
    select frame    ${frame_issue_details_id}
    ${actual_task_control_unit}    get text    ${text_control_unit_id}
    [Return]    ${actual_task_control_unit}
    unselect frame

Validate task topic
    [Arguments]    ${expected_task_topic}
    ${actual_task_topic}    Get task topic
    should be equal as strings    ${actual_task_topic}    ${expected_task_topic}

Get task topic
    select frame    ${frame_issue_details_id}
    ${actual_task_topic}    get text    ${text_topic_id}
    [Return]    ${actual_task_topic}
    unselect frame

Validate task software variant
    [Arguments]    ${expected_task_software_variant}
    ${actual_task_software_variant}    Get software variant
    should be equal as strings    ${actual_task_software_variant}    ${expected_task_software_variant}

Get software variant
    select frame    ${frame_issue_details_id}
    ${actual_task_software_variant}    get text    ${text_software_variant_id}
    [Return]    ${actual_task_software_variant}
    unselect frame

Validate task details
    [Arguments]    ${expected_task_details}
    ${actual_task_details}    Get task details
    should be equal as strings    ${actual_task_details}    ${expected_task_details}

Get task details
    select frame    ${frame_issue_details_id}
    ${actual_task_details}    get text    ${text_details_id}
    [Return]    ${actual_task_details}
    unselect frame

Validate task potential sce relevance
    [Arguments]    ${expected_task_potential_sce_relevance}
    ${actual_task_potential_sce_relevance}    Get task potential sce relevance
    should be equal as strings    ${actual_task_potential_sce_relevance}    ${expected_task_potential_sce_relevance}

Get task potential sce relevance
    select frame    ${frame_issue_details_id}
    ${expected_task_potential_sce_relevance}    get text    ${text_potential_sce_relevance_id}
    [Return]    ${expected_task_potential_sce_relevance}
    unselect frame

Validate task ifc id
    [Arguments]    ${expected_task_ifc_id}
    ${actual_task_ifc_id}    Get task ifc id
    should be equal as strings    ${actual_task_ifc_id}    ${expected_task_ifc_id}

Get task ifc id
    select frame    ${frame_issue_details_id}
    ${expected_task_ifc_id}    get text    ${text_ifc_id}
    [Return]    ${expected_task_ifc_id}
    unselect frame

Validate task bu
    [Arguments]    ${expected_task_bu}
    ${actual_task_bu}    Get task bu
    should be equal as strings    ${actual_task_bu}    ${expected_task_bu}

Get task bu
    select frame    ${frame_issue_details_id}
    ${actual_task_bu}    get text    ${text_business_unit_id}
    [Return]    ${actual_task_bu}
    unselect frame

Validate task affected carline
    [Arguments]    ${expected_task_affected_carline}
    ${actual_task_affected_carline}    Get task affected carline
    should be equal as strings    ${actual_task_affected_carline}    ${expected_task_affected_carline}

Get task affected carline
    select frame    ${frame_issue_details_id}
    ${actual_task_affected_carline}    get text    ${text_affected_carline_id}
    [Return]    ${actual_task_affected_carline}
    unselect frame

Validate task affected engine
    [Arguments]    ${expected_task_affected_engine}
    ${actual_task_affected_engine}    Get task affected engine
    should be equal as strings    ${actual_task_affected_engine}    ${expected_task_affected_engine}

Get task affected engine
    select frame    ${frame_issue_details_id}
    ${actual_task_affected_engine}    get text    ${text_affected_engine_id}
    [Return]    ${actual_task_affected_engine}
    unselect frame

Validate task software name
    [Arguments]    ${expected_task_software_name}
    ${actual_task_software_name}    Get task software name
    should be equal as strings    ${actual_task_software_name}    ${expected_task_software_name}

Get task software name
    select frame    ${frame_issue_details_id}
    ${actual_task_software_name}    get text    ${text_software_name_id}
    [Return]    ${actual_task_software_name}
    unselect frame

Validate task release name
    [Arguments]    ${expected_task_release_name}
    ${actual_task_release_name}    Get task release name
    should be equal as strings    ${actual_task_release_name}    ${expected_task_release_name}

Get task release name
    select frame    ${frame_issue_details_id}
    ${actual_task_release_name}    get text    ${text_release_name_id}
    [Return]    ${actual_task_release_name}
    unselect frame

Validate task function name
    [Arguments]    ${expected_task_function_name}
    ${actual_task_function_name}    Get task function name
    should be equal as strings    ${actual_task_function_name}    ${expected_task_function_name}

Get task function name
    select frame    ${frame_issue_details_id}
    ${actual_task_function_name}    get text    ${text_function_name_id}
    [Return]    ${actual_task_function_name}
    unselect frame

Validate task data file name
    [Arguments]    ${expected_task_data_file_name}
    ${actual_task_data_file_name}    Get task data file name
    should be equal as strings    ${actual_task_data_file_name}    ${expected_task_data_file_name}

Get task data file name
    select frame    ${frame_issue_details_id}
    ${actual_task_data_file_name}    get text    ${text_data_file_name_id}
    [Return]    ${actual_task_data_file_name}
    unselect frame

Validate task change reason
    [Arguments]    ${expected_task_change_reason}
    ${actual_task_change_reason}    Get task change reason
    should be equal as strings    ${actual_task_change_reason}    ${expected_task_change_reason}

Get task change reason
    select frame    ${frame_issue_details_id}
    ${actual_task_change_reason}    get text    ${text_change_reason_id}
    [Return]    ${actual_task_change_reason}
    unselect frame

Validate task technical description
    [Arguments]    ${expected_task_tech_description}
    ${actual_task_tech_description}    Get task technical description
    should be equal as strings    ${actual_task_tech_description}    ${expected_task_tech_description}

Get task technical description
    select frame    ${frame_issue_details_id}
    ${actual_task_tech_description}    get text    ${text_technical_description_id}
    [Return]    ${actual_task_tech_description}
    unselect frame

Validate task side effect
    [Arguments]    ${expected_task_side_effect}
    ${actual_task_side_effect}    Get task side effect
    should be equal as strings    ${actual_task_side_effect}    ${expected_task_side_effect}

Get task side effect
    select frame    ${frame_issue_details_id}
    ${actual_task_side_effect}    get text    ${text_side_effect_id}
    [Return]    ${actual_task_side_effect}
    unselect frame

Validate task validation
    [Arguments]    ${expected_task_validation}
    ${actual_task_validation}    Get task validation
    should be equal as strings    ${actual_task_validation}    ${expected_task_validation}

Get task validation
    select frame    ${frame_issue_details_id}
    ${actual_task_validation}    get text    ${text_validation_id}
    [Return]    ${actual_task_validation}
    unselect frame

Validate task variant coding
    [Arguments]    ${expected_task_variant_coding}
    ${actual_task_variant_coding}    Get task variant coding
    should be equal as strings    ${actual_task_variant_coding}    ${expected_task_variant_coding}

Get task variant coding
    select frame    ${frame_issue_details_id}
    ${actual_task_variant_coding}    get text    ${text_variant_coding_id}
    [Return]    ${actual_task_variant_coding}
    unselect frame

Validate task emission
    [Arguments]    ${expected_task_emission}
    ${actual_task_emission}    Get task emission
    should be equal as strings    ${actual_task_emission}    ${expected_task_emission}

Get task emission
    select frame    ${frame_issue_details_id}
    ${actual_task_emission}    get text    ${text_emissions_id}
    [Return]    ${actual_task_emission}
    unselect frame

Validate task consumption range
    [Arguments]    ${expected_task_consumption_range}
    ${actual_task_consumption_range}    Get task consumption range
    should be equal as strings    ${actual_task_consumption_range}    ${expected_task_consumption_range}

Get task consumption range
    select frame    ${frame_issue_details_id}
    ${actual_task_consumption_range}    get text    ${text_consumption_id}
    [Return]    ${actual_task_consumption_range}
    unselect frame

Validate task noise
    [Arguments]    ${expected_task_noise}
    ${actual_task_noise}    Get task noise
    should be equal as strings    ${actual_task_noise}    ${expected_task_noise}

Get task noise
    select frame    ${frame_issue_details_id}
    ${actual_task_noise}    get text    ${text_noise_id}
    [Return]    ${actual_task_noise}
    unselect frame

Validate task powertrain performance
    [Arguments]    ${expected_task_powertrain_performance}
    ${actual_task_powertrain_performance}    Get task powertrain performance
    should be equal as strings    ${actual_task_powertrain_performance}    ${expected_task_powertrain_performance}

Get task powertrain performance
    select frame    ${frame_issue_details_id}
    ${actual_task_powertrain_performance}    get text    ${text_power_performance_id}
    [Return]    ${actual_task_powertrain_performance}
    unselect frame

Validate task affected obd
    [Arguments]    ${expected_task_affect_obd}
    ${actual_task_affect_obd}    Get task affected obd
    should be equal as strings    ${actual_task_affect_obd}    ${expected_task_affect_obd}

Get task affected obd
    select frame    ${frame_issue_details_id}
    ${actual_task_affect_obd}    get text    ${text_affected_obd_id}
    [Return]    ${actual_task_affect_obd}
    unselect frame

Validate task evaporation
    [Arguments]    ${expected_task_evaporation}
    ${actual_task_evaporation}    Get task evaporation
    should be equal as strings    ${actual_task_evaporation}    ${expected_task_evaporation}

Get task evaporation
    select frame    ${frame_issue_details_id}
    ${actual_task_evaporation}    get text    ${text_evaporation_id}
    [Return]    ${actual_task_evaporation}
    unselect frame

Validate task durability
    [Arguments]    ${expected_task_durability}
    ${actual_task_durability}    Get task durability
    should be equal as strings    ${actual_task_durability}    ${expected_task_durability}

Get task durability
    select frame    ${frame_issue_details_id}
    ${actual_task_durability}    get text    ${text_durability_id}
    [Return]    ${actual_task_durability}
    unselect frame

Validate task aes bes
    [Arguments]    ${expected_task_aes_bes}
    ${actual_task_aes_bes}    Get task aes bes
    should be equal as strings    ${actual_task_aes_bes}    ${expected_task_aes_bes}

Get task aes bes
    select frame    ${frame_issue_details_id}
    ${actual_task_aes_bes}    get text    ${text_aes_bes_id}
    [Return]    ${actual_task_aes_bes}
    unselect frame

Validate task aecd
    [Arguments]    ${expected_task_aecd}
    ${actual_task_aecd}    Get task aecd
    should be equal as strings    ${actual_task_aecd}    ${expected_task_aecd}

Get task aecd
    select frame    ${frame_issue_details_id}
    ${actual_task_aecd}    get text    ${text_aecd_id}
    [Return]    ${actual_task_aecd}
    unselect frame

Validate task obd documentation
    [Arguments]    ${expected_task_obd_documentation}
    ${actual_obd_documentation}    Get task obd documentation
    should be equal as strings    ${actual_obd_documentation}    ${expected_task_obd_documentation}

Get task obd documentation
    select frame    ${frame_issue_details_id}
    ${actual_obd_documentation}    get text    ${text_obd_documentation_id}
    [Return]    ${actual_obd_documentation}
    unselect frame

Validate task impact description
    [Arguments]    ${expected_task_impact_description}
    ${actual_impact_description}    Get task impact description
    should be equal as strings    ${actual_impact_description}    ${expected_task_impact_description}

Get task impact description
    select frame    ${frame_issue_details_id}
    ${actual_impact_description}    get text    ${text_impact_description_id}
    [Return]    ${actual_impact_description}
    unselect frame

Validate task comparision measurement
    [Arguments]    ${expected_task_comparision_measurement}
    ${actual_comparision_measurement}    Get task comparision measurement
    should be equal as strings    ${actual_comparision_measurement}    ${expected_task_comparision_measurement}

Get task comparision measurement
    select frame    ${frame_issue_details_id}
    ${actual_comparision_measurement}    get text    ${text_comparison_measurement_id}
    [Return]    ${actual_comparision_measurement}
    unselect frame

Validate task technically responsible deputy
    [Arguments]    ${expected_task_technically_responsible_deputy}
    ${actual_technically_responsible_deputy}    Get task technically responsible deputy
    should be equal as strings    ${actual_technically_responsible_deputy}    ${expected_task_technically_responsible_deputy}

Get task technically responsible deputy
    select frame    ${frame_issue_details_id}
    ${actual_technically_responsible_deputy}    get text    ${text_tech_responsible_deputy_id}
    [Return]    ${actual_technically_responsible_deputy}
    unselect frame

Validate task team leader
    [Arguments]    ${expected_task_team_leader}
    ${actual_team_leader}    Get task team leader
    should be equal as strings    ${actual_team_leader}    ${expected_task_team_leader}

Get task team leader
    select frame    ${frame_issue_details_id}
    ${actual_team_leader}    get text    ${text_team_leader_id}
    [Return]    ${actual_team_leader}
    unselect frame

Validate task team leader deputy
    [Arguments]    ${expected_task_team_leader_deputy}
    ${actual_team_leader_deputy}    Get task team leader deputy
    should be equal as strings    ${actual_team_leader_deputy}    ${expected_task_team_leader_deputy}

Get task team leader deputy
    select frame    ${frame_issue_details_id}
    ${actual_team_leader_deputy}    get text    ${text_team_leader_deputy_id}
    [Return]    ${actual_team_leader_deputy}
    unselect frame

Validate task department leader
    [Arguments]    ${expected_task_department_leader}
    ${actual_department_leader}    Get task department leader
    should be equal as strings    ${actual_department_leader}    ${expected_task_department_leader}

Get task department leader
    select frame    ${frame_issue_details_id}
    ${actual_department_leader}    get text    ${text_department_leader_id}
    [Return]    ${actual_department_leader}
    unselect frame

Validate task department leader deputy
    [Arguments]    ${expected_task_department_leader_deputy}
    ${actual_department_leader_deputy}    Get task department leader deputy
    should be equal as strings    ${actual_department_leader_deputy}    ${expected_task_department_leader_deputy}

Get task department leader deputy
    select frame    ${frame_issue_details_id}
    ${actual_department_leader_deputy}    get text    ${text_department_leader_deputy_id}
    [Return]    ${actual_department_leader_deputy}
    unselect frame

Validate task project leader
    [Arguments]    ${expected_task_project_leader}
    ${actual_project_leader}    Get task project leader
    should be equal as strings    ${actual_project_leader}    ${expected_task_project_leader}

Get task project leader
    select frame    ${frame_issue_details_id}
    ${actual_project_leader}    get text    ${text_project_leader_id}
    [Return]    ${actual_project_leader}
    unselect frame

Validate task project leader deputy
    [Arguments]    ${expected_task_project_leader_deputy}
    ${actual_project_leader_deputy}    Get task project leader deputy
    should be equal as strings    ${actual_project_leader_deputy}    ${expected_task_project_leader_deputy}

Get task project leader deputy
    select frame    ${frame_issue_details_id}
    ${actual_project_leader_deputy}    get text    ${text_project_leader_deputy_id}
    [Return]    ${actual_project_leader_deputy}
    unselect frame

Validate task decription
    [Arguments]    ${expected_task_description}
    ${actual_description}    Get task decription
    should be equal as strings    ${actual_description}    ${expected_task_description}

Get task decription
    select frame    ${frame_issue_details_id}
    ${actual_description}    get text    ${text_description_id}
    [Return]    ${actual_description}
    unselect frame

Validate task kem snr
    [Arguments]    ${expected_task_kem_snr}
    ${actual_task_kem_snr}    Get task kem snr
    should be equal as strings    ${actual_task_kem_snr}    ${expected_task_kem_snr}

Get task kem snr
    select frame    ${frame_issue_details_id}
    ${actual_task_kem_snr}    get text    ${text_kem_snr_id}
    [Return]    ${actual_task_kem_snr}
    unselect frame

Click on copy
    Select issuedetails frame
    wait until element is visible  ${button_copy_xpath}    timeout=30
    click button    ${button_copy_xpath}
    unselect frame