*** Settings ***
Resource    ../Helpers/LandingPage_Helper.robot

*** Keywords ***
# Ankush
I search application as
    [Documentation]    Search application
    [Arguments]     ${btv_project}
    Search application as    ${btv_project}

#Ankush
I select application as
    [Documentation]    select application
    [Arguments]     ${btv_project}
    Search application as    ${btv_project}

#Ankush
I expect BTV Dashboard should be displayed
    [Documentation]    BTV dashboard should display
    ${dashboard}    Get Dashboard
    log    Dashboard is displayed : ${dashboard}




## Ankush
I select BTV Project
    [Documentation]    Selects the DMP Task project
    Click on new
    Click on browse
    Select look in    All Projects
    Input project name in search    BTV-Project
    Click on BTV project
    Wait untill submit into page displayed



