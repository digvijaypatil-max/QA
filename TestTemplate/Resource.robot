*** Settings ***
Library          SeleniumLibrary

*** Variables ***
${Browser}                  chrome
${Url}                      https://www.facebook.com/
${Username_Element}         //input[contains(@name,'email')]
${Password_Element}         //input[contains(@name,'pass')]


*** Keywords ***
Test username and password with different username and password
     [Arguments]      ${Username}     ${Password}
     open Browser   ${Url}           ${Browser}
     Input Text    ${Username_Element}    ${Username}
     Input Text    ${Password_Element}    ${Password}
     Close Browser

