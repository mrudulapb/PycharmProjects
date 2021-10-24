*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${url}  http://www.ebay.com
${browser}  chrome

*** Test Cases ***
TC to demonstarte WebLocators in Robot FW
    [Documentation]  This is sample case to demonstrate WebLocators in Robot FW

    # Open Browser  ${url}  ${browser}
    Open Browser  ${url}  ${browser}  alias=MRUDULA
    Maximize Browser Window
    # click link  link:Sell
    # click link  partial link:Seller  # partial text only
    # input text  name:_nkw  robot
    # click element  id:gh-btn
    sleep  5s
    close browser


*** Keywords ***
