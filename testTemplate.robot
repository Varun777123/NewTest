*** Settings ***
Library       String
   
*** Variables ***
${val1}    1
${val2}    2
${val3}    3

*** Test Cases ***

Templated Test Case
    [Template]    Log
    value1
    value2
    value3
    value4
    value5


Template with embedded arguments
    [Template]    The result of ${calculation} should be ${expected}
    ${val1} + ${val1}    ${val2}
    ${val1} + ${val2}    ${val3}
    ${val1} * ${val2}    ${val2}
    ${val3} - ${val2}    ${val1}


*** Keywords ***

The result of ${calculation} should be ${expected}
    ${result} =    Evaluate    ${calculation}
    ${expected}=    Convert To Integer    ${expected}
    Should Be Equal    ${result}     ${expected}
