*** Settings ***
Library   SeleniumLibrary
Resource  Resource.robot

*** Variables ***
${Radio_Btn}    //label[@for='radio2']//input[@name='radioButton']

*** Test Cases ***
Verify the robot button
    Launch Browser and Navigate to Website
    Click Element    ${Radio_Btn}
    sleep    2s