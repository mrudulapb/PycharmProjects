# This is basic test where values are hard-coded i.e url, browser, xpath
*** Settings ***
Documentation  Basic Search Functionality
Library  SeleniumLibrary

*** Variables ***


*** Test Cases ***
This is Testcase for Verifying Basic Search Functionality for eBay
    [Documentation]  This is Testcase for Verifying Basic Search Functionality for eBay
    [Tags]  Functional

    # These are User defined Keywords and their functionality is defined in Keywords
    Pre conditions or Setup or Start Testcase
    Test Steps or Verify the Search Results
    Post condition or Tear down or Finish Testcase

*** Keywords ***
Pre conditions or Setup or Start Testcase
    # SeleniumLibrary keywords are Open Browser, Input Text, etc
    Open Browser  https://www.ebay.com  chrome
    Maximize Browser Window

Test Steps or Verify the Search Results
    Input Text  //*[@id="gh-ac"]  mobile
    # Press Keys  //*[@id="gh-btn"]  [Return]  # by xpath
    # press keys  css:#gh-btn  # by css
    # press keys  name:gh-btn  # by name
    Press Keys  id:gh-btn  [Return]  # by id
    Page Should Contain  results for mobile

Post condition or Tear down or Finish Testcase
    Close Browser

