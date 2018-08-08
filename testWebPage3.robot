*** Settings ***
Library           Selenium2Library
Variables       Elements.py

*** Test Cases ***
Google Devops And Find Eficode
    Open Browser To Google
    Search For Devops
    Result Should Contain Eficode
    Close Test Browser

*** Keywords ***
Open Browser To Google
    Open Browser    https://www.flipkart.com   browser=Firefox
    Maximize Browser Window
    Click Element    ${cart_xpath}
    

#earch For Devops
                   ##    Page Should Contain Button    ${search_button}
                   ##    Input Text    lst-ib    Eficode Devops
                   ##    Click Element    ${search_button}
                   ##    #Press Key    lst-ib    \\13S
                   ##
                   ##Result Should Contain Eficode
                   ##    Wait Until Page Contains    Eficode    25 s
                   ##
                   ##Close Test Browser
    Close All Browsers