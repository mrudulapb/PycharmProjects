*** Settings ***
Documentation   CommonFunctionality
Library  SeleniumLibrary

*** Variables ***
# @{env}  qa  dev  uat  # list variable
# ${env}  dev   # robot -d .\Results\ -v env:uat .\TestSuite\eBay\FunctionalTests\Verify_Search_functionality.robot, uat env takes precendence when given from command line
# &{url}  qa=http://qa.demo.com  dev=http://dev.demo.com  uat=http://uat.demo.com
${url}  http://www.ebay.com
# ${browser}  chrome

*** Keywords ***
Pre conditions  # or Test Setup or Start Testcase
    # SeleniumLibrary keywords are Open Browser, Input Text, etc
    # Open Browser  ${url.${env}}  chrome  # for list variable ${url.${env}[1]}
    Open Browser  ${url}  ${browser}
    Maximize Browser Window
    # sleep 10s

Post condition  # or Tear down or Finish Testcase
    Close Browser