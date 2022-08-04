*** Settings ***
Library  SeleniumLibrary
Library     ExcelLibrary
*** Variables ***
${url}  https://admin-demo.nopcommerce.com/login
${browser}  Chrome
${invalid username}     ela
${invalid password}     ela
${valid username}   admin@yourstore.com
${Valid password}   admin
*** Keywords ***
open the application
    Open Browser    ${url}      ${browser}
Check dashboard
    Page Should Contain     Dashboard
Logout the app
    Click Link  xpath://a[@href='/logout']


