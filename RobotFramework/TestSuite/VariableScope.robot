*** Settings ***
Documentation    Suite description

*** Variables ***
# ${VARIABLE_DEMO} =  This is GLOBAL Variable

*** Test Cases ***
This is demo Test 1
    ${variable_demo} =  Set Variable  This is Local Testcase Variable
    Log  ${VARIABLE_DEMO}

This is demo Test 2
    Log  ${VARIABLE_DEMO}

This is demo Test 3
    This is demo keyword

*** Keywords ***
This is demo keyword
    [Arguments]  ${variable_demo}=This is KEYWORD Variable
    Log  ${VARIABLE_DEMO}