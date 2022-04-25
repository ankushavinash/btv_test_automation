*** Settings ***
Resource    ../Helpers/LandingPage_Helper.robot

*** Keywords ***
I input title
    [Documentation]    Input given text to title field
    [Arguments]     ${title_name}
    Input title    ${title_name}

I click on ok
    [Documentation]    Click on ok button
    Click on ok

I expect ticket to be created
    [Documentation]    Get the ticket id and log it
    ${item_id}    Get item id
    log    ticket created successfully and the ticket id is : ${item_id}

I select change type
    [Documentation]    Select the given value from change type dropdown
    [Arguments]     ${change_type}
    Select change type    ${change_type}

I select release type
    [Documentation]    Select the given value from release type dropdown
    [Arguments]     ${release_type}
    Select release type    ${release_type}

I select ecu/control unit
    [Documentation]    Select the given value from ecu/control unit dropdown
    [Arguments]     ${control_unit}
    Select control unit    ${control_unit}

I input comment by fd
    [Documentation]    Input given comment to comment by fd field
    [Arguments]     ${comment}
    Input comment by fd    ${comment}

I select rdp-task relevent
    [Documentation]    Select rdp-task relevent checkbox
    Select rdp-task relevent

I input rdp-task number
    [Documentation]    Input given rdp-task number to rdp-task number field
    [Arguments]     ${task_number}
    Input rdp task number    ${task_number}

I input release information
    [Documentation]    Input release information with given data
    [Arguments]     ${v_cycle}    ${car_line}    ${sw_part_number}    ${year_cw_patchlevel}
    ...             ${sw_type}    ${predecessor_sw_part_number}    ${base_version_in_encore}
    ...             ${deployment_date}    ${segment_number}
    Input v-cycle    ${v_cycle}
    Input carline    ${car_line}
    Input software partnumber    ${sw_part_number}
    Input year cw patchlevel    ${year_cw_patchlevel}
    Select software type    ${sw_type}
    Input predecessor sw part number    ${predecessor_sw_part_number}
    Input base version in encore    ${base_version_in_encore}
    Input deployement data for qnt release    ${deployment_date}
    Input segment number    ${segment_number}

I create a ticket with required fields
    [Documentation]    Create a ticket with title name and control unit
    [Arguments]     ${title_name}    ${control_unit}    ${change_type}    ${release_type}
    Input title    ${title_name}
    Select control unit    ${control_unit}
    Select change type    ${change_type}
    Select release type    ${release_type}
    Click on ok
    ${item_id}    Get item id
    log    ticket created successfully and the ticket id is : ${item_id}

I click on cancel request
    [Documentation]    Click on cancel request button
    Click cancel request

I expect ticket to be discarded
    [Documentation]    Validate ticket state
    ${item_id}    Get item id
    Validate ticket state    Discarded
    log    ticket ${item_id} moved to discarded state successfully

I click add new
    [Documentation]    Click on add new button
    Click add new

I select dmp relevent
    [Documentation]    Select dmp relevent checkbox
    Select dmp relevent

I input dmp ticket number
    [Documentation]    Input given dmp ticket number to dmp ticket number field
    [Arguments]     ${task_number}
    Input dmp ticket number    ${task_number}

I input dmp bundle number
    [Documentation]    Input given dmp bundle number to dmp bundle number field
    [Arguments]     ${bundle_number}
    Input dmp bundle number    ${bundle_number}

I click on fd update
    [Documentation]    Click on FD Update button
    Click on fd update

I expect ticket to be updated with new field values
    [Documentation]    Validate the updated field values after FD update
    [Arguments]     ${updated_task_title}  ${updated_change_type}    ${updated_release_type}    ${updated_dmp_ticket_num}
    ...             ${updated_dmp_bundle_num}    ${updated_rdp_task_number}     ${updated_v_cycle}    ${updated_car_line}
    ...             ${updated_sw_part_number}    ${updated_year_cw_patchlevel}    ${updated_sw_type}
    ...             ${updated_predecessor_sw_part_number}    ${updated_base_version_in_encore}    ${updated_deployment_date}
    ...             ${segment_number}
    Validate title    ${updated_task_title}
    Validate change type    ${updated_change_type}
    Validate release type    ${updated_release_type}
    Validate dmp ticket number    ${updated_dmp_ticket_num}
    Validate dmp bundle number    ${updated_dmp_bundle_num}
    Validate rdp task number    ${updated_rdp_task_number}
    Validate v cycle    ${updated_v_cycle}
    Validate car line    ${updated_car_line}
    Validate sw part number    ${updated_sw_part_number}
    Validate year cw patchlevel    ${updated_year_cw_patchlevel}
    Validate sw type    ${updated_sw_type}
    Validate predecessor sw part number    ${updated_predecessor_sw_part_number}
    Validate base version in encore    ${updated_base_version_in_encore}
    Validate deployement date    ${updated_deployment_date}
    Validate segment number    ${segment_number}

I click on provide change information
    [Documentation]    Click on Provide Change Information button
    Click on provide change information

I input general information
    [Documentation]    Input general information with given data
    [Arguments]    ${fragment_name}    ${segment_number}    ${start_byte}    ${start_bit}    ${fragment_length}
    ...            ${fragment_owner}    ${v_cycle}
    Input fragment name    ${fragment_name}
    Input segment number in general info    ${segment_number}
    Input start byte    ${start_byte}
    Input start bit    ${start_bit}
    Input fragment length    ${fragment_length}
    Input fragment owner    ${fragment_owner}
    Input v cycle    ${v_cycle}

I click on add row
    [Documentation]    Click on add row button
    Click on add row

I input additional information
    [Documentation]    Input additional information with given data
    [Arguments]    ${meaning_name}    ${value}    ${old_code_rule}    ${new_code_rule}    ${carlines}
    ...            ${meaning_comment}
    Input meaning name    ${meaning_name}
    Input value    ${value}
    Input old code rule    ${old_code_rule}
    Input new code rule    ${new_code_rule}
    Input carlines    ${carlines}
    Input meaning comment information    ${meaning_comment}

I expect change information to be created
    [Documentation]    Get change info number created
    ${change_info_number}    Get change info number
    log    Change info number ${change_info_number} created successfuly

I click on send request
    [Documentation]    Click on Send Request button
    Click on send request

I expect ticket to move from request state to wait for vc integrator state
    [Documentation]    Validate ticket state
    ${item_id}    Get item id
    Validate ticket state    Wait for VC Integrator
    log    ticket ${item_id} moved to Wait for VC Integrator state successfully

I click on assign to integrator
    [Documentation]    Validate ticket state
#    [Arguments]    ${integrator_name}
    Click on assign to integrator
    Assign integrator


