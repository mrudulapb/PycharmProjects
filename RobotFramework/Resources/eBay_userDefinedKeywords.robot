*** Settings ***
Documentation    eBay User Defined Keywords
Library  SeleniumLibrary


*** Keywords ***
Test Steps or Verify the Search Results
    Input Text  //*[@id="gh-ac"]  mobile
    # Press Keys  //*[@id="gh-btn"]  [Return]  # by xpath
    # press keys  css:#gh-btn  # by css
    # press keys  name:gh-btn  # by name
    Press Keys  id:gh-btn  [Return]  # by id
    Page Should Contain  results for mobile
    Press Keys  //*[@id="nid-MSQ-4"]/button/span/span
    select checkbox  //*[@id="s0-14-11-5-2[1]-55[1]-11-content-menu"]/li[2]/a/span
    page should contain  New



