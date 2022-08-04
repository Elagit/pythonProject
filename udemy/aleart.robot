*** Settings ***
Library     SeleniumLibrary


*** Test Cases ***
check the alearts and frame
    Open Browser      https://testautomationpractice.blogspot.com/    headlessChrome
    Click Element       //button[@onclick='myFunction()']
    Handle Alert    DISMISS
    Close Browser

