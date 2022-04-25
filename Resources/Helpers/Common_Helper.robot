*** Settings ***
Library    SeleniumLibrary
Variables   ../Locators/Common_Locator.py

*** Variables ***
${browser}
${url}

*** Keywords ***
Launch browser
    [Arguments]     ${browser}
    open browser    about:blank    ${browser}    options=add_experimental_option("excludeSwitches", ["enable-logging"])
#    open browser    about:blank    ${browser}    user-data-dir=C:\Program Files (x86)\Microsoft\Edge\Application

Exit browser
    close browser

Input url
    [Arguments]    ${url}
    go to    ${url}
    maximize browser window
    Wait till login button displayed

Launch application
    Launch browser   ${browser}
    Input url    ${url}

Login to application
    [Arguments]    ${login_id}  ${password}
    Enter username  ${login_id}
    Enter password  ${password}
    Click Login
    Wait utill dashboard displayed

Wait till login button displayed
    wait until element is visible    ${button_sign_in_id}

Enter username
    [Arguments]    ${username}
    wait until element is visible    ${input_login_id}
    input text   ${input_login_id}   ${username}   True

Enter password
    [Arguments]    ${passowrd}
    wait until element is visible    ${input_password_id}
    input password    ${input_password_id}   ${passowrd}   True

Click login
    wait until element is visible    ${button_sign_in_id}
    click button    ${button_sign_in_id}

Wait utill dashboard displayed
    wait until element is visible    ${text_dashboard_xpath}    timeout=30
    wait until element is visible    ${img_daimler_id}    timeout=30

Select issuedetails frame
    #wait until element is visible    ${frame_issue_details_id}
    select frame    ${frame_issue_details_id}



