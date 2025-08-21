*** Settings ***
Library   SeleniumLibrary
Resource  Resource.robot
Library   Collections



*** Variables ***
${Browser}     Chrome
${URL}         https://testautomationpractice.blogspot.com/
${URL1}         https://rahulshettyacademy.com/AutomationPractice/
${All_Countries}       //div[@class='ui-menu-item-wrapper']
${Suggestion_Box}          //input[@id='autocomplete']
${Country_Name}          Ba
${To_Select_Country}      barbados

*** Keywords ***
Launch Browser and Navigate to Website 
   Open Browser   ${URL}   Chrome
   Maximize Browser Window


Handeling Auto suggestion
     open Browser      ${URL1}      Chrome
     Click Element    //input[@id='autocomplete']
     Input Text    ${Suggestion_Box}    ${Country_Name} 
     Wait Until Element Is Visible     ${Suggestion_Box} 
     Wait Until Element Is Visible    ${All_Countries}    10s
    ${Elements}=     Get WebElements    ${All_Countries} 
     FOR   ${All_Elements}    IN     @{Elements}
     ${Counting_Elements}     Set Variable     0
     ${name}=    Get Text    ${All_Elements}
      Run Keyword If    '${name}'.startswith ('${Country_Name}') and '${name}' == '${To_Select_Country}'    Click Element    ${All_Elements}
      Run Keyword If    '${name}' == '${To_Select_Country}'    Exit For Loop
      ${Counting_Elements}    Evaluate    ${Counting_Elements} + 1
      Log    ${Counting_Elements}
      Log    ${name}
      END
      ${Counting_Elements}    Evaluate    ${Counting_Elements} + 1
      Log    ${Counting_Elements}
      


*** Test Cases ***
Test

    Handeling Auto suggestion