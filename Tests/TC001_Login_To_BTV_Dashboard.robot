*** Settings ***
Documentation  This suite validates testcases releated approval task in different state
Resource  ../Resources/PO/Common.robot
Resource  ../Resources/PO/LandingPage.robot
Test Setup  Common_Helper.Launch application
Test Teardown   Common_Helper.Exit browser

*** Test Cases ***
Scenario: As a SBM user I should be able to login to BTV Dashboard

    [Documentation]     TC_001
    ...                 As a SBM user after I login I should able to navigate to BTV Dashboard
    [Tags]    demo
    Given I login to application with login id and password     btv_automation_user    test
    And I search application as    BTV Project
    And I select application as    BTV Project
    Then I expect BTV Dashboard should be displayed

