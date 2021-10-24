# This is basic test where values are hard-coded i.e url, browser, xpath
*** Settings ***
Documentation  Basic Search Functionality
Resource  ../../../Resources/eBay_userDefinedKeywords.robot
Resource  ../../../Resources/CommonFunctionality.robot

# adding Test Setup and Teardown in Settings section. If the test steps fails, atleast browser opens/closes work
# using Test Setup and Test Teardown
Test Setup  CommonFunctionality.Pre conditions  # Pre conditions or Setup or Start Testcase
Test Teardown  CommonFunctionality.Post condition  # Post condition or Tear down or Finish Testcase

*** Variables ***


*** Test Cases ***
This is Testcase for Verifying Basic Search Functionality for eBay
    [Documentation]  This is Testcase for Verifying Basic Search Functionality for eBay
    [Tags]  Functional

    # These are User defined Keywords and their functionality is defined in Keywords
    eBay_userDefinedKeywords.Test Steps or Verify the Search Results  # Test Steps or Verify the Search Results



