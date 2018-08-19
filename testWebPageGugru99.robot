*** Settings ***

Library  Selenium2Library
Library  Process
Variables    Elements.py

Test Setup    Open test browser
Test Teardown    Close test browser

*** Variables ***
${validation_text}        Learning Center

*** Test Cases ***

Page Test GSuite
        Mouse Over    ${Resources_xpath}
        Click Element    ${Training_xpath}
        Page should contain    ${validation_text}
        Close test browser

*** Keywords ***

Open test browser
	Wait Until Keyword Succeeds   30    5sec    Open browser  ${WebPageLink}   Firefox
        No Operation
Close test browser
        Close All Browsers

