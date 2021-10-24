*** Settings ***
Documentation    Suite description
Library  SeleniumLibrary

*** Variables ***


*** Test Cases ***
TC to demonstrate working with checkboxes in Robot FW
    [Documentation]  TC to demonstrate working with checkboxes in Robot FW
    Open Browser  https://www.sugarcrm.com/au/request-demo/  chrome
    Maximize Browser Window
    sleep  5s

    Scroll Element Into View  xpath=//*[@id="field1"]/div/input
    Page Should Contain Checkbox  id:interest_market_c0
    Select Checkbox  id:interest_market_c0
    Checkbox Should Be Selected  id:interest_market_c0
    Capture Page Screenshot
    sleep  5s
    Checkbox Should Not Be Selected  id:interest_sell_c0
    Unselect Checkbox  id:interest_market_c0
    Checkbox Should Not Be Selected  id:interest_market_c0
    Capture Page Screenshot
    sleep  5s
    close browser

*** Keywords ***
