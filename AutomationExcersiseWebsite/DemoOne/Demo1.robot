*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}           https://www.flipkart.com/
${All_Links}     //a

*** Test Cases ***
Open Example Website
    Open Browser    ${URL}    Chrome
    ${Count_of_URLS}   Get Element Count    ${All_Links}
    Log    ${Count_of_URLS}
    ${All_Links1}=   Get WebElements  ${All_Links}
    ${printed_count}=    Set Variable    0
    FOR  ${Links}   IN   @{All_Links1}
    ${text}=  Get Text    ${Links} 
    Log     ${text}
    ${printed_count}=    Evaluate    ${printed_count} + 1
    END
    Log   ${printed_count}
    
    Close Browser
