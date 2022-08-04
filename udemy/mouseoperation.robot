*** Settings ***
Library  SeleniumLibrary
Test Teardown   Close Browser
*** Test Cases ***
Mouse operation
    Open Browser      http://swisnl.github.io/jQuery-contextMenu/demo.html    Chrome
    Open Context Menu   css:.btn-neutral
    sleep   5
    Go To   https://testautomationpractice.blogspot.com/
    Double Click Element    xpath://button[@ondblclick='myFunction1()']
    Drag And Drop   draggable   droppable
    Sleep   4




