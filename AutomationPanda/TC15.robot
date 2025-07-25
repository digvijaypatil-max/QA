*** Settings ***
Library      SeleniumLibrary
Resource     Resource.robot

*** Variables ***
${all_Links}                 //a

*** Test Cases ***
Extract all links on the webpage
    Launch Browser and Navigate to Website
    Wait Until Element Is Visible     ${all_Links}      10s

    ${count_of_links}    Get Element Count    ${all_Links}
    Log      ${count_of_links}

    ${link}=    Get WebElements    ${all_Links}
    FOR     ${links}    IN    @{link}
    ${text}=   Get Text    ${links}
    Log     ${text}
    END

    
