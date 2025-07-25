*** Settings ***
Library   SeleniumLibrary
Resource  Resource.robot

*** Variables ***

${Switch_tab}           //a[@class='btn-style class1 class2']
${Courses}             //li[@class='nav-item']//a[text()='Courses']
     

*** Test Cases ***
Handle tab
    Launch Browser and Navigate to Website
    Click Element    ${Switch_tab} 
    Wait Until Element Is Visible     ${Switch_tab} 
    ${Handles}=     Get Window Handles
    Switch Window          ${Handles}[1]
    Wait Until Element Is Visible    ${Courses}
    Click Element      ${Courses}
    Switch Window       ${Handles}[0]
    sleep  2s
    
 
    

    