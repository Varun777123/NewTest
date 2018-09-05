
*** Settings ***
Library	      Collections
Library       String
Library       MyProgram

*** Variables ***
${D1}=    {k1:v1, k2:v1}
${D2}=    {k3:v3, k4:v4}
${T1}=    (1,2,3,4)
${test_string}=    test program

   
*** Test Cases ***
My Test
    [Documentation]    Example test  

    Example Keyword
    ${new}=    Split String    ${test_string}    pro
    Log    ${new}
    Log    ${D1}
    ${L1}=     Create List    k    b    c
    ${L2}=     Create List    d    e    f
    Run Keyword And Continue On Failure    Append To List    ${L1}    d
    Log List   ${L1}
    Log    ${L1}
    Remove Values From List    ${L1}    k
    Log    ${L1}
    ${L3}=    Combine Lists    ${L1}    ${L2}
    Log    ${L3}
    Remove Duplicates    ${L3}
    Log    ${L3}
    ${L4}=     Copy List    ${L3}
    Log    ${L4}
    Sort List    ${L1}
    Log List    ${L1}
    Reverse List    ${L1}
    Log List    ${L1}

Second Test
    [Documentation]    Another Testcase
    ${Output}=    Convert To List    ${D1}
    Log    ${Output}
    Log    ${T1}
    ${Output1}=    Convert To List    ${T1}
    Log    ${Output1}
   

Third Test
    [Documentation]    Another Testcase
    ${Output}=    Dictionary Should Contain Key    ${D1}    k1
    Log    ${Output}
    ${MyDict}=    Create Dictionary
    ${MyDict2}=    Create Dictionary
    Set To Dictionary    ${MyDict}    A1    Value1
    Set To Dictionary    ${MyDict}    A2    Value2
    Set To Dictionary    ${MyDict2}    A3    Value3
    Set To Dictionary    ${MyDict2}    A4    Value4
    Log Dictionary    ${MyDict}
    Dictionary Should Contain Key    ${MyDict}    A1
    ${keys}=    Get Dictionary Keys    ${MyDict}
    Log    ${keys}
    Run Keyword And Ignore Error    Dictionaries Should Be Equal    ${MyDict}    ${MyDict2}
    Dictionary Should Contain Key    ${MyDict}    A1
    ${items}=    Get Dictionary Items    ${MyDict}
    Log    ${items}
    ${val}=    Pop From Dictionary    ${MyDict}    A1
    Log    ${val}
    Log Dictionary    ${MyDict}
    


