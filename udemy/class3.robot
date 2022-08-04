*** Settings ***
Library  SeleniumLibrary
Test Teardown   Close Browser

*** Variables ***
${url}  https://www.tutorialspoint.com/selenium/selenium_automation_practice.htm
${browser}  Chrome
*** Test Cases ***
Test the form screen
    open the application
    select the dropdown
    select the list

*** Keywords ***
open the application
    Open Browser      ${url}    ${browser}
    Maximize Browser Window

select the dropdown
     Select From List By Label   xpath://*[@name='continents']  Antartica
     Sleep  3
     Select From List By Index  xpath://*[@name='continents']   3
     Sleep  3
select the list
    Select From List By Label   selenium_commands   Switch Commands
    Select From List By Label   selenium_commands   Wait Commands
