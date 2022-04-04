*** Settings ***
Library    SeleniumLibrary
Variables    ../Locators/LandingPage_Locator.py

*** Keywords ***
# Ankush
Click on dropdown
    wait until element is visible    ${button_dropdown_id}    timeout=30
    click button    ${button_dropdown_id}


Click on new
    wait until element is visible    ${button_new_id}    timeout=30
    click button    ${button_new_id}

Click on browse
    wait until element is visible    ${link_browse_xpath}    timeout=30
    click element    ${link_browse_xpath}
    sleep    5

Input project name in search
    [Arguments]    ${project_name}
    wait until element is visible    ${input_search_xpath}    timeout=30
    input text    ${input_search_xpath}  ${project_name}  True
    sleep    5

Click on DMP task project
    wait until element is visible    ${link_dmp_task_id}    timeout=30
    click element    ${link_dmp_task_id}
    sleep    10
    handle alert    timeout=30

Wait untill submit into page displayed
    wait until element is visible    ${text_submit_into_id}    timeout=30

Select look in
    [Arguments]    ${look_in}
    sleep    10
    wait until element is visible    ${select_look_in_id}    timeout=30
    select from list by label    ${select_look_in_id}       ${look_in}
    sleep    5

