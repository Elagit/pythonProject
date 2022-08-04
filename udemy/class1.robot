*** Settings ***
Library     SeleniumLibrary
Library     Collections
Test Setup  open the application
Test Teardown   Close Browser
Resource    ../resourse/classresource.robot
*** Test Cases ***
logintest invalid
    Login with login form   ${valid username}     ${invalid password}
    check the error message
    #error message
#Login with valid details
    #Login with login form   ${valid username}   ${Valid password}
    #Sleep   5
    #check the dashboard
    #Verifiy the card details
    #Select the dymanic product

*** Keywords ***
Login with login form
    [Arguments]     ${username}    ${password}
    Input Text      Email    ${username}
    Input Text      Password    ${password}
    sleep   5
    Click Element   xpath://button[@type='submit']

#error message
    #Wait Until Element Is Visible    xpath://*[@id="login-form"]/div[1]
check the error message
   Page Should Contain      Login was unsuccessful

check the dashboard
    Page Should Contain     iphone X
Verifiy the card details
    @{expected}=    Create list      iphone X    Samsung Note 8  Nokia Edge  Blackberry
    @{elements}=     Get WebElements    css:.card-title
    @{Actuallist}=  Create list
    FOR     ${element}  IN  @{elements}
        Log   ${element.text}
        Append To List  ${Actuallist}   ${element.text}
    END
    Lists Should Be Equal      ${expected}     ${Actuallist}
Select the dymanic product
    @{elements}=     Get WebElements    css:.card-title
    ${index}=   Set Variable    1
    FOR     ${element}  IN  @{elements}
         Exit For Loop If       'Blackberry' ==  '${element.text}'
         ${index}=  Evaluvate  ${index} + 1

    END
    Click Button    xpath:(//div[@class='card-footer'])[4]/button
