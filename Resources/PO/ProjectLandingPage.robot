*** Settings ***
Resource    ../Helpers/ProjectLandingPage_Helper.robot

*** Keywords ***
I input title
    [Documentation]    Input given text to title field
    [Arguments]     ${title_name}
    Input title    ${title_name}

I select control unit
    [Documentation]    Select given value from control unit field
    [Arguments]     ${control_unit}
    Select control unit    ${control_unit}

I select business unit
    [Documentation]    Select given value from business unit field
    [Arguments]     ${business_unit}
    Select business unit    ${business_unit}

I click on ok
    [Documentation]    Click on ok button
    Click on ok

I expect dmp task to be created
    [Documentation]    Get the task id and log it
    ${item_id}    Get item id
    log    task created successfully and the task id is : ${item_id}

I click on discard
    [Documentation]    Click on discard button
    Click on discard

I input user comment
    [Documentation]    Input given text to user comment field
    [Arguments]     ${user_comment}
    Input user comment    ${user_comment}

I expect task to be discarded
    [Documentation]    Get the task status and log it
    ${state}    Get task state
    Validate task state    7. Discarded
    log    task discarded successfully and the task state is : ${state}

I select software variant
    [Documentation]    Select given value from software-variant field
    [Arguments]     ${software_variant}
    Select software variant    ${software_variant}

I select potential sce relevance
    [Documentation]    Select given value from potential sce relevance field
    [Arguments]     ${potential_sce_relevance}
    Select potential sce relevance    ${potential_sce_relevance}

I input details
    [Documentation]    Input given text to details field
    [Arguments]     ${details}
    Input details    ${details}

I input ifc id
    [Documentation]    Input given text to ifc field
    [Arguments]     ${ifc_id}
    Input ifc id   ${ifc_id}

I project name
    [Documentation]    Input given text to project name field
    [Arguments]     ${project_name}
    Input project name   ${project_name}

I select affected carlines
    [Documentation]    Select given value from affected carlines field
    [Arguments]     ${affected_carlines}
    Select affected carlines    ${affected_carlines}

I select affected engines
    [Documentation]    Select given value from affected engines field
    [Arguments]     ${affected_engines}
    Select affected engines   ${affected_engines}

I input software name
    [Documentation]    Input given text to software name field
    [Arguments]     ${software_name}
    Input software name   ${software_name}

I input release name
    [Documentation]    Input given text to release name field
    [Arguments]     ${release_name}
    Input release name   ${release_name}

I input function name
    [Documentation]    Input given text to function name field
    [Arguments]     ${function_name}
    Input function name   ${function_name}

I input variant coding
    [Documentation]    Input given text to variant coding field
    [Arguments]     ${variant_coding}
    Input variant coding   ${variant_coding}

I input data file name
    [Documentation]    Input given text to data file name field
    [Arguments]     ${data_file_name}
    Input data file   ${data_file_name}

I input change reason
    [Documentation]    Input given text to change reason field
    [Arguments]     ${change _reason}
    Input change reason   ${change_reason}

I input side effects
    [Documentation]    Input given text to side effects field
    [Arguments]     ${side_effects}
    Input side effects   ${side_effects}

I input technical description
    [Documentation]    Input given text to technical description field
    [Arguments]     ${technical_description}
    Input technical description   ${technical_description}

I input validation
    [Documentation]    Input given text to validation field
    [Arguments]     ${validation}
    Input validation   ${validation}

I select emissions
    [Documentation]    Select given value from emission field
    [Arguments]     ${emissions}
    Select emissions   ${emissions}

I select consumption/range
    [Documentation]    Select given value from consumption_range field
    [Arguments]     ${consumption_range}
    Select consumption range   ${consumption_range}

I select noise
    [Documentation]    Select given value from noise field
    [Arguments]     ${noise}
    Select noise   ${noise}

I select powertrain performance
    [Documentation]    Select given value from powertrain performance field
    [Arguments]     ${powertrain_performance}
    Select powertrain performance   ${powertrain_performance}

I select affected obd
    [Documentation]    Select given value from affected obd field
    [Arguments]     ${affected_obd}
    Select affected obd   ${affected_obd}

I select evaporation
    [Documentation]    Select given value from evaporation field
    [Arguments]     ${evaporation}
    Select evaporation   ${evaporation}

I select durability
    [Documentation]    Select given value from durability field
    [Arguments]     ${durability}
    Select durability   ${durability}

I select aes/bes
    [Documentation]    Select given value from aes/bes field
    [Arguments]     ${aes_bes}
    Select aes/bes   ${aes_bes}

I select aecd
    [Documentation]    Select given value from aecd field
    [Arguments]     ${aecd}
    Select aecd   ${aecd}

I select obd documentation
    [Documentation]    Select given value from obd documentation field
    [Arguments]     ${obd_documentation}
    Select obd documentation   ${obd_documentation}

I input impact description
    [Documentation]    Input given text to impact description field
    [Arguments]     ${impact_description}
    Input impact description   ${impact_description}

I select comparison measurement
    [Documentation]    Select given value from comparison measurement field
    [Arguments]     ${comparison_measurement}
    Select comparison measurement   ${comparison_measurement}

I select technically responsible deputy
    [Documentation]    Select given value from technically responsible deputy field
    [Arguments]     ${technically_responsible_deputy}
    Select technically responsible deputy   ${technically_responsible_deputy}

I select team leader
    [Documentation]    Select given value from team leader field
    [Arguments]     ${team_leader}
    Select team leader   ${team_leader}

I select team leader deputy
    [Documentation]    Select given value from team leader deputy field
    [Arguments]     ${team_leader_deputy}
    Select team leader deputy   ${team_leader_deputy}

I select department leader
    [Documentation]    Select given value from department leader  field
    [Arguments]     ${department_leader}
    Select department leader   ${department_leader}

I select department leader deputy
    [Documentation]    Select given value from department leader deputy field
    [Arguments]     ${department_leader_deputy}
    Select department leader deputy  ${department_leader_deputy}

I select project leader
    [Documentation]    Select given value from project leader deputy field
    [Arguments]     ${project_leader}
    Select project leader   ${project_leader}

I select project leader deputy
    [Documentation]    Select given value from project leader deputy field
    [Arguments]     ${project_leader_deputy}
    Select project leader deputy   ${project_leader_deputy}

I input description
    [Documentation]    Input given text to description field
    [Arguments]     ${description}
    Input description   ${description}

I input kem/snr
    [Documentation]    Input given text to kem/snr field
    [Arguments]     ${kem_snr}
    Input kem snr   ${kem_snr}

I input comment
    [Documentation]    Input given text to comment field
    [Arguments]     ${comment}
    Input comment   ${comment}

I click on preparation done go to confirmation
    [Documentation]    Click on preparation done go to confirmation
    Click on preparation done go to confirmation

I expect task to be moved from preparation state to approval by responsible state
    [Documentation]    Get the task status and log it
    ${state}    Get task state
    Validate task state    2. Approval by Responsible
    log    task moved successfully and the task state is : ${state}

I click on accept according to mbc map process definition
    [Documentation]    Click on accept according to mbc map process definition button
    Click on accept according to mbc map process definition

I expect task to be moved from approval by responsible state to approval by e4 state
    [Documentation]    Get the task status and log it
    ${state}    Get task state
    Validate task state    3. Approval by E4
    log    task moved successfully and the task state is : ${state}

I expect task to be moved from approval by e4 state to approval by e3 state
    [Documentation]    Get the task status and log it
    ${state}    Get task state
    Validate task state    4. Approval by E3
    log    task moved successfully and the task state is : ${state}

I expect task to be moved from approval by e3 state to approval by pl state
    [Documentation]    Get the task status and log it
    ${state}    Get task state
    Validate task state    5. Approval by PL
    log    task moved successfully and the task state is : ${state}

I expect task to be moved from approval by pl state to confirmed state
    [Documentation]    Get the task status and log it
    ${state}    Get task state
    Validate task state    	6. Confirmed
    log    task moved successfully and the task state is : ${state}

I click on reject
    [Documentation]    Click on reject button
    Click on reject

I expect task to be moved from approval by responsible state to preparation state
    [Documentation]    Get the task status and log it
    ${state}    Get task state
    Validate task state    	1. Preparation
    log    task moved successfully and the task state is : ${state}

I enter reject comment
    [Documentation]    Input given text to approvers comment field
    [Arguments]     ${comment}
    Input reject comment   ${comment}

I expect task to be moved from approval by e3 state to preparation state
    [Documentation]    Get the task status and log it
    ${state}    Get task state
    Validate task state    	1. Preparation
    log    task moved successfully and the task state is : ${state}

I expect task to be moved from approval by e4 state to preparation state
    [Documentation]    Get the task status and log it
    ${state}    Get task state
    Validate task state    	1. Preparation
    log    task moved successfully and the task state is : ${state}

I expect task to be moved from approval by pl state to preparation state
    [Documentation]    Get the task status and log it
    ${state}    Get task state
    Validate task state    	1. Preparation
    log    task moved successfully and the task state is : ${state}

I click on copy
    [Documentation]    Click on copy button
    Click on copy

I expect new task to be created with all the field value copied from original task
    [Documentation]    Get the all the field values and validate with orignal task
    Validate task control unit    VGS/TCU Test Project
    Validate task topic    Test automation task
    Validate task software variant    USA-Software
    Validate task details    This task created from test automation tool
    Validate task potential sce relevance    Yes
    Validate task ifc id    IFC-2022-001212
    Validate task bu    MBC
    Validate task affected carline    118
    Validate task affected engine    M139
    Validate task software name    Test software
    Validate task release name    Test release
    Validate task function name    Test function
    Validate task data file name    Test data file
    Validate task change reason    Test reason
    Validate task technical description    Test technical description
    Validate task side effect    Test side effects
    Validate task validation    Test validation
    Validate task variant coding    Test varaint
    Validate task emission    No
    Validate task consumption range    No
    Validate task noise    No
    Validate task powertrain performance    No
    Validate task affected obd    No
    Validate task evaporation    No
    Validate task durability    No
    Validate task aes bes    No
    Validate task aecd    No
    Validate task obd documentation    No
    Validate task impact description    Test impact description
    Validate task comparision measurement    No
    Validate task technically responsible deputy    automation_admin
    Validate task team leader    automation_user
    Validate task team leader deputy    automation_admin
    Validate task department leader    automation_user
    Validate task department leader deputy    automation_admin
    Validate task project leader    automation_user
    Validate task project leader deputy    automation_admin
    Validate task decription    Test description
    Validate task kem snr    Test kem/snr
    Validate task state    	1. Preparation