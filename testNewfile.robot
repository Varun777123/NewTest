*** Settings ***
Library       String
Library       OperatingSystem

*** Variables ***

${source_file_path}    D:\\Training\\testfile.txt
${remove_file_path}    D:\\Training\\remove.txt
${destination_file_path}    D:\\Training\\Training\\testfile2.txt
${command}    mkdir
    
*** Test Cases ***


Second Test
    [Documentation]     Another test
    ${rc}    ${output}=    Run And Return Rc And Output    ${command}
    Log    ${rc}
    Log    ${output}
    Should Be Equal As Integers 	${rc} 	0
    Remove File    ${remove_file_path}

*** Comment ***
My Test
    [Documentation]    Basic test
    Copy File    ${source_file_path}    ${destination_file_path}
    Move File    ${source_file_path}    ${destination_file_path}
    ${path}   ${ext}=    Split Extension    ${source_file_path}
    Log    ${path}
    Log    ${ext}
    ${output}=    Run    ${command}
    Log    ${output}



