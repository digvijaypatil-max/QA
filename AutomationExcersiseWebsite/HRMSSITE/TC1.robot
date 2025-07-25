*** Settings ***
Library    SeleniumLibrary
Resource   Resource.robot

*** Variables ***
${Expected_Title}    ZYMR - Welcome to ZYMR

*** Test Cases ***
Open HRMS and Verify Title
    Launch Browser and Navigate to Website 
    ${Actual_Title}=    Get Title
    Log     The page title is ${Actual_Title}
    Should Be Equal As Strings    ${Actual_Title}    ${Expected_Title}
    

