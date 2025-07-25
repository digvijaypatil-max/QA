*** Settings ***
Library      SeleniumLibrary
Library    Screenshot
Resource     Resource.robot

*** Variables ***
${tab}                  //button[text()='New Tab']
${second_option}        //a[text()='Manual Testing Tutorials']
${popwindow}            //button[@id='PopUp']


*** Test Cases ***
Handle window
    Launch Browser and Navigate to Website
    Execute JavaScript                             window.scrollTo(0, 200)
    Click Element    ${tab}
    ${handles}=    Get Window Handles
    
    Switch Window   ${handles}[1]    
    Sleep    10s   
    Click Element    ${second_option}
    Take Screenshot
    Switch Window   ${handles}[0]
    Click Element    ${popwindow}
     ${handles}=    Get Window Handles
    

    Switch Window    ${handles}[1]    
    Sleep    2s
    ${title}=    Get Title
    Log    Pop-up Window Title: ${title}