*** Settings ***
Library     SeleniumLibrary
Resource    ../resourse/classresource.robot
Test Setup  open the application
Test Teardown   Close Browser
Test Template  Login the app
*** Test Cases ***      Username    Password
Login with invalid user  admin@yourstore.com   2344
pass    admin@yourstore.com    sdfdsf


*** Keywords ***
Login the app
    [Arguments]  ${username}   ${password}
    Input Text      Email   ${username}
    Input Text      Password    ${password}
    Click Button    xpath://button[@type='submit']
    Page Should Contain   Login was unsuccessful.
