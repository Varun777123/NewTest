*** Settings ***

Library  Selenium2Library
Library  Process
Variables    Elements.py

Test Setup    Open test browser
Test Teardown    Close test browser


*** Test Cases ***

#Page Test
#	#Wait Until Keyword Succeeds    30    5sec    Go to  ${WebPageLink}
#        Sleep    2
#        Click Element    ${close_flipkart_modal}
#        Sleep    2
#        Click Element    ${Cart_xpath}
#        Sleep    2
#        ${result}=    Get Text    ${Empty_cart_xpath}
#        Log    ${result}
#        Close test browser


Page Test2
      Sleep    4
      #Click Element    ${flipkart_login_xpath}
      Input text     ${flipkart_login_email}    varun.iam.jain@gmail.com
      Input password    ${flipkart_login_pass}    abc@1234
      Click Element    ${flipkart_login_button}


*** Keywords ***

Open test browser
	Wait Until Keyword Succeeds    30    5sec    Open browser   ${WebPageLink}   Firefox
        No Operation
Close test browser
        Close All Browsers

