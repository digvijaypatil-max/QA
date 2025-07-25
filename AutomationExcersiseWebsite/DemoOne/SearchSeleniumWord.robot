*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BROWSER}      Chrome
${URL}          https://www.google.com
${SEARCH_TERM}  sbi online

*** Test Cases ***
Search In Google
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Wait Until Element Is Visible    name=q    10s
    Input Text    name=q    ${SEARCH_TERM}
    Press Keys    name=q    Enter  
    Wait Until Page Contains    ${SEARCH_TERM}    10s
    Close Browser