*** Settings ***

Library  Selenium2Library
Variables    Elements.py

#Test Setup    Open test browser
#Test Teardown    Close test browser

*** Variables ***
${Title_Text} =

*** Test Cases ***

Page Test
	Go to  ${WebPageLink}
	Page should contain  Google
        Input Text    ${Search}    Framework
        Press Key    ${Search}    \\13
        Sleep    2
        Close test browser

Second Test
        Go To   ${WebPageLink}
        ${text}=    Get Text    ${Title_Text}
        Page Should Contain    ${text}   


*** Keywords ***

Open test browser
	Open browser  ${WebPageLink}   Firefox

Close test browser
        Close All Browsers