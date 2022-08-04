*** Settings ***
Library     SeleniumLibrary
Resource    ../resourse/classresource.robot
Library           DataDriver      ../testdata/testdata.csv
Test Setup  open the application
Test Teardown   Close Browser
Test Template  Login the app
*** Test Cases ***
Login with the username ${username} password ${password}

*** Keywords ***
Login the app
    [Arguments]  ${username}   ${password}
    Input Text      Email   ${username}
    Input Text      Password    ${password}
    Click Button    xpath://button[@type='submit']
    Page Should Contain   Login was unsuccessful.
