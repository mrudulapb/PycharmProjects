*** Settings ***
Library  SeleniumLibrary
Variables  ../WebElements.py

*** Variables ***
${GLOBAL_VARIABLE}  # example for GLOBAL VARIABLE written in caps
# ${search_text}  robot  # LOCAL VARIABLE
# @{search_text}  books  travel  robot  community  # holds multiple values
# &{search_text}  abc=book  bcd=travel
# ${searchTextBox}  xpath://*[@id="gh-ac"]
# ${searchButton}  xpath://*[@id="gh-btn"]
# ${advancedSearchLink}  //*[@id="gh-as-a"]

*** Keywords ***
Input Search Text and Click Search
    [Arguments]  ${search_text}
    # input text  xpath://*[@id="gh-ac"]  ${search_text.abc}  clear=True
    input text  ${HeaderPageSearchTextBox}  ${search_text}
    press keys  ${HeaderPageSearchButton}  [Return]

Click On Advanced Search
    click element  ${HeaderPageAdvancedSearchLink}