*** Settings ***
Documentation  This suite validates testcases releated approval task in different state
Resource  ../Resources/PO/Common.robot
Resource  ../Resources/PO/LandingPage.robot
Resource  ../Resources/PO/TaskLandingPage.robot
Test Setup  Common_Helper.Launch application
Test Teardown   Common_Helper.Exit browser

*** Test Cases ***
Scenario: As a SBM user I should be able to login to BTV Dashboard

    [Documentation]     TC_001
    ...                 As a BTV user after I input all required detail in DMP Project and when
    ...                 I click on OK it go to Project Page
    [Tags]    demo
    Given I login to application with login id and password     btv_automation_user    test
    When I select DMP Task project
    And I select control unit    VGS/TCU Test Project
    And I input topic    Test automation task
    And I select business unit    MBC
    And I select software variant    USA-Software
    And I select potential sce relevance    Yes
    And I input details    This task created from test automation tool
    And I input ifc id    IFC-2022-001212
    And I project name    Test project
    And I select affected carlines    118
    And I select affected engines    M139
    And I input software name    test software
    And I input release name    test release
    And I input function name    test function
    And I input variant coding    test varaint
    And I input data file name    test data file
    And I input change reason    test reason
    And I input side effects    test side effects
    And I input technical description    test technical description
    And I input validation    test validation
    And I select emissions    No
    And I select consumption/range    No
    And I select noise    No
    And I select powertrain performance    No
    And I select affected obd    No
    And I select evaporation    No
    And I select durability    No
    And I select aes/bes    No
    And I select aecd    No
    And I select obd documentation    No
    And I input impact description    No
    And I select comparison measurement    No
    And I select technically responsible deputy    automation_admin
    And I select team leader    automation_user
    And I select team leader deputy   automation_admin
    And I select department leader    automation_user
    And I select department leader deputy    automation_admin
    And I select project leader    automation_user
    And I select project leader deputy    automation_admin
    And I input description    Test description
    And I input kem/snr    Test kem/snr
    And I input comment    Task created by test automation tool
    And I click on ok
    And I expect dmp task to be created
    And I click on preparation done go to confirmation
    And I click on ok
    Then I expect task to be moved from preparation state to approval by responsible state
