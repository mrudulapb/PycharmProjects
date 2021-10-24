*** Settings ***
Library  SeleniumLibrary
Resource  ./HeaderPage.robot

*** Variables ***
${search_result}  results for  # LOCAL VARIABLE

*** Keywords ***
Verify Search Results  # these are keywords
    [Arguments]  ${search_text}
    # page should contain  ${search_result} ${search_text.abc}
    page should contain  ${search_result} ${search_text}

Select Product Condition



Select Delivery Options
