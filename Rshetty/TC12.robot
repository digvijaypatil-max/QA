*** Settings ***
Library     SeleniumLibrary
Resource    Resource.robot

*** Variables ***
${Mouse_hover}       //button[@id='mousehover']
${Top}               //a[text()='Top']
${Reload}            //a[text()='Reload']

*** Test Cases ***
Mouse hover
    Launch Browser and Navigate to Website
    Execute Javascript       window.scrollTo(0,1000)
    Mouse Over    ${Mouse_hover}
    Wait Until Element Is Visible    ${Mouse_hover}     10s
    Click Element     ${top}
    sleep   2s
    Execute Javascript       window.scrollTo(0,1000)
    Mouse Over    ${Mouse_hover}
    Wait Until Element Is Visible    ${Mouse_hover}     10s
    Wait Until Element Is Visible    ${Reload}      10s
    Click Element    ${Reload}
    
