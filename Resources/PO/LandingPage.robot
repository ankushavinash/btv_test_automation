*** Settings ***
Resource    ../Helpers/LandingPage_Helper.robot

*** Keywords ***
I select BTV Project
    # Ankush
    [Documentation]    Selects the BTV project
    Click on dropdown

I select DMP Task project
    [Documentation]    Selects the DMP Task project
    Click on new
    Click on browse
    Select look in    All Projects
    Input project name in search    DMP Task
    Click on DMP task project
    Wait untill submit into page displayed



