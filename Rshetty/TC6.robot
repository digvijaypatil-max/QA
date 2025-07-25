*** Settings ***
Library   SeleniumLibrary
Resource  Resource.robot

*** Variables ***

${Switch_window}       //button[@id='openwindow']
${Courses}             //li[@class='nav-item']//a[text()='Courses']
     

*** Test Cases ***
Handle windows
    Launch Browser and Navigate to Website
    Click Element    ${Switch_window}
    Wait Until Element Is Visible     ${Switch_window}
    ${Handles}=     Get Window Handles
    Switch Window          ${Handles}[1]
    Click Element      ${Courses}
    Switch Window       ${Handles}[0]
    sleep  2s
    
 
    

    