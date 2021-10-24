*** Settings ***
Documentation  Basic Search Functionality
Resource  ../../../Resources/CommonFunctionality.robot
Resource  ../../../Resources/PageObjects/HeaderPage.robot
Resource  ../../../Resources/PageObjects/SearchResultsPage.robot


Test Setup  CommonFunctionality.Pre conditions  # Pre conditions or Setup or Start Testcase
Test Teardown  CommonFunctionality.Post condition  # Post condition or Tear down or Finish Testcase


*** Variables ***


*** Test Cases ***
Verify Basic Search Functionality
    [Documentation]  This test case verifies basic search
    [Tags]  Functional

    HeaderPage.Input Search Text and Click Search  book
    SearchResultsPage.Verify Search Results  book

Verify Basic Search Functionality
    [Documentation]  This test case verifies basic search
    [Tags]  Functional

    HeaderPage.Input Search Text and Click Search  mobile
    SearchResultsPage.Verify Search Results  mobile

Verify Basic Search Functionality
    [Documentation]  This test case verifies basic search
    [Tags]  Functional

    HeaderPage.Input Search Text and Click Search  travel
    SearchResultsPage.Verify Search Results  travel

Verify Advanced Search Functionality
    [Documentation]  This test case verifies advanced search
    [Tags]  Functional

    HeaderPage.Click On Advanced Search






