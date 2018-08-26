*** Settings ***

Library  Selenium2Library
Library  MyProgram
Variables    Elements.py


Test Setup    Open test browser
Test Teardown    Close test browser

*** Variables ***
${validation_text}        Learning Center
${homepage_text}    Get Gmail
${security_page_validation}    security and trust

*** Test Cases ***

Test1
    Example Keyword

Training
    [Tags]    test1
    Given the user is on Resources
    When the user selects training field
    Then the user is redirected to selected page

Validate Security
    Given the user is on home page
    When the user selects security
    Then the user is redirected to security page

*** Keywords ***

Open test browser
	    Wait Until Keyword Succeeds   30    5sec    Open browser  ${WebPageLink3}   Firefox
        No Operation

the user is on home page
        Sleep    2
        Page Should Contain    ${homepage_text}

the user is on Resources
        Sleep    4
        Wait Until Keyword Succeeds   30    5sec    Mouse Over    ${Resources_xpath}

the user selects security
        Sleep    2
        Click Element    ${security_xpath}

the user is redirected to security page
        Page Should Contain    ${security_page_validation}

the user selects training field
        Sleep    2
        Click Element    ${Training_xpath}

the user is redirected to selected page
        Page should contain    ${validation_text}

Close test browser
        Close All Browsers

