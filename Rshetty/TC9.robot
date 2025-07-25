*** Settings ***
Library     SeleniumLibrary
Resource    Resource.robot

*** Variables ***
${Handle_alerts}    //input[@name='enter-name']
${Alert_btn}        //input[@value='Alert']
${Confirm}          //input[@value='Confirm']

*** Test Cases ***
Handle alerts
    Launch Browser and Navigate to Website
    Input Text    ${Handle_alerts}    Digvijay
    Click Button    ${Alert_btn}
    Handle Alert

    Sleep   2s

    Input Text    ${Handle_alerts}    Digvijay patil
    Click Button    ${Confirm}
    Handle Alert
