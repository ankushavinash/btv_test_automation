#    ${item_id}    get text    id=j_projLPCaption
#    log    ${item_id}

#    wait until element is visible   id=dLabel    timeout=30
#    click element    id=dLabel
#    input text    xpath=//input[@class='search-query form-control']    BTV Project
#    click element    xpath=//span[text()='BTV Project (BTV Project)']
#    get text    id=j_projLPCaption
#    log    capture text is :    get text    id=j_projLPCaption


Setup Browser
    [Documentation]    setup the required browser either chrome or edge
    [Arguments]    ${broswer}
    run keyword if    '${broswer}' == 'Chrome'   Launch broswer    Chrome
    ...     ELSE IF    '${broswer}' == 'Edge'    Launch browser    Edge