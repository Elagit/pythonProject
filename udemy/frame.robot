*** Settings ***
Library     SeleniumLibrary
Test Teardown   Close Browser

*** Test Cases ***
check the alearts and frame
    Open Browser      https://www.selenium.dev/selenium/docs/api/java/index.html?index-all.html    Chrome
    Select Frame    xpath://*[@name='packageListFrame']
    Click Link  org.openqa.selenium
    Unselect Frame
    Select Frame    xpath://*[@name='packageFrame']
    Click Link  Alert
    Unselect Frame
    Select Frame    xpath://*[@name='classFrame']
    Click Link  Index
    Unselect Frame

    Close Browser

