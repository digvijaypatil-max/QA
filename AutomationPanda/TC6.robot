*** Settings ***
Library      SeleniumLibrary
Resource     Resource.robot


*** Variables ***
${button}       //button[text()='START']
${button1}       //button[text()='STOP']


*** Test Cases ***
Handle dynamic button
    Launch Browser and Navigate to Website
    Execute JavaScript                             window.scrollTo(0, 200)
    Wait Until Page Contains Element   ${button}   timeout=10s
    Wait Until Element Is Visible         ${button}  timeout=10s
    Wait Until Element Is Enabled       ${button}    timeout=10s

    Click Element    ${button}


    Wait Until Page Contains Element   ${button1}   timeout=10s
    Wait Until Element Is Enabled       ${button1}    timeout=10s


