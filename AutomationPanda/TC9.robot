*** Settings ***
Library      SeleniumLibrary
Library    Screenshot
Resource     Resource.robot

*** Variables ***

${popwindow}            //button[@id='PopUp']


*** Test Cases ***
Handle pop up window
    Launch Browser and Navigate to Website
    Execute JavaScript                             window.scrollTo(0, 200)

    Click Element    ${popwindow}
     ${handles}=    Get Window Handles
    Log    All Window Handles: ${handles}

    Switch Window    ${handles}[1]    
    Sleep    2s
    ${title}=    Get Title
    Log    Pop-up Window Title: ${title}
    
     Switch Window    ${handles}[0] 