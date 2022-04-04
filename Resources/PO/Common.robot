*** Settings ***
Resource    ../Helpers/Common_Helper.robot

*** Keywords ***
I launch application
    [Documentation]    Launch the application with given browser and url
    Launch application

I login to application with login id and password
    [Documentation]    Login to the applicaton with valid login id and password
    [Arguments]     ${login_id}     ${password}
    Login to application    ${login_id}     ${password}

I expect to see dashboard
    [Documentation]    Validate dashboard displayed after login to application
    Wait utill dashboard displayed





