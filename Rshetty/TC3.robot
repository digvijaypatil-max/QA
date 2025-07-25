*** Settings ***
Library   SeleniumLibrary
Resource  Resource.robot

*** Variables ***
${Suggestion_class}    //input[@class='inputs ui-autocomplete-input']
${select_option}       //li[@class='ui-menu-item']//div[text()="American Samoa"]
                       

*** Test Cases ***
Verify the suggestion class
    Launch Browser and Navigate to Website
    Wait Until Element Is Visible    ${Suggestion_class}
    Input Text    ${Suggestion_class}    America
    Wait Until Element Is Visible    ${select_option}   10s
    Click Element    ${select_option} 
    sleep    5s
    

    