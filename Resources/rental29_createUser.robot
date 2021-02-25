*** Keywords ***

Begin Web Test
    Open browser                       about:blank             ${BROWSER}
    Set selenium timeout               15

Go to Web Page
    Load Page
    Verify Page Loaded

Load Page
    Go to                              ${URL}

Verify Page Loaded
    ${LINK_TEXT}                       Get Title
    Should Be Equal                    ${LINK_TEXT}      Infotiv Car Rental

Click Button CreateUser
    Click Element                       xpath://*[@id="createUser"]         RETURN

Click Element input_firstName
    [Arguments]                         ${SEARCH_TERM}
    Input Text                          xpath://*[@id="name"]    ${SEARCH_TERM}

Click Element input_lastName
    [Arguments]                         ${SEARCH_TERM}
    Input Text                          xpath://*[@id="last"]    ${SEARCH_TERM}

Click Element input_phone
    [Arguments]                         ${SEARCH_TERM}
    Input Text                          xpath://*[@id="last"]    ${SEARCH_TERM}

Click Element input_createEmail
    Click Element

Click Element input_confirmEmail
    Click Element

Click Element input_createPassword
    Click Element

Click Element input_confirmPassword
    Click Element

Click Button Create
    Click Element

Verify Page_userRegistration Loaded
    ${LINK_TEXT}                       Get Title
    Should Be Equal                    ${LINK_TEXT}      Create user



End Web Test
    Close browser