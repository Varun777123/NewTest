*** Settings ***

Library  Selenium2Library
Library  Process
Variables    Elements.py

#Test Setup    Open test browser
#Test Teardown    Close test browser


*** Test Cases ***

#Page Test
#	Wait Until Keyword Succeeds    30    5sec    Go to  ${GitHubLink}
#        Wait Until Keyword Succeeds    30    5sec    Click Link    /login
#        Input Text    ${Enter_user}    varun.iam.jain@gmail.com
#        Input Password    ${Enter_pass}    abc@123
#	Page should contain  GitHub
#        Sleep    2
#        Close test browser
#
#
#
#Upload File Test
#        Wait Until Keyword Succeeds    30    5sec    Go to  ${GitHubLink}
#        Wait Until Keyword Succeeds    30    5sec    Click Link    /login
#        Input Text    ${Enter_user}    varun.iam.jain@gmail.com
#        Input Password    ${Enter_pass}    abc@123
#	Page should contain  GitHub
#        Click Element   ${Upload_files}
#        Choose File    ${Choose_file}   ${file_path}

Test Process Keyword
          ${var1}=    Run Process   python   -c   "printing name"
          Log   ${var1}


*** Keywords ***

Open test browser
	Open browser  ${WebPageLink}   Firefox

Close test browser
        Close All Browsers

