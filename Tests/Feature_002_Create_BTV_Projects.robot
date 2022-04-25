*** Settings ***
Documentation  This suite validates testcases releated to creation of DMP task
Resource  ../Resources/PO/Common.robot
Resource  ../Resources/PO/LandingPage.robot
Resource  ../Resources/PO/ProjectLandingPage.robot
Test Setup  Common_Helper.Launch application
#Test Teardown   Common_Helper.Exit browser

*** Test Cases ***
Scenario: As a BTV user I should be able to create BTV Project
    [Documentation]     TC_002:  As a BTV user I should be able to create BTV Project
    [Tags]    tttt
    Given I login to application with login id and password     btv_automation_user    test
    When I select BTV Project
    And I input title    Test automation Project
    And I select control unit    SBM Test Control Unit
    And I click on ok
    #Then I expect btv project to be created





