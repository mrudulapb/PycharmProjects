*** Settings ***
Documentation    Suite description

*** Variables ***


*** Test Cases ***
Argument demo Keyword Test
    Argument demo Keyword  1  2  3

Argument demo Keyword Test
    Argument demo Keyword  4  5  6


*** Keywords ***
Argument demo Keyword
    [Arguments]  ${arg1}  ${arg2}  ${arg3}
    Log  ${arg1}
    Log  ${arg2}
    Log  ${arg3}
