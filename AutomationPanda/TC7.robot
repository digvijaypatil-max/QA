*** Settings ***
Library      SeleniumLibrary
Resource     Resource.robot


*** Variables ***
${alert1}             //button[@id='alertBtn']
${alert2}             //button[@id='confirmBtn']
${alert3}             //button[@id='promptBtn']
${returning_text}     //p[@id='demo']



    

*** Test Cases ***
Handle alerts
    Launch Browser and Navigate to Website
    Execute JavaScript                             window.scrollTo(0, 200)
    Click Element    ${alert1}
    # ${alertText}=     Get Alert Message
    # Log      ${alertText}
    Handle Alert
    
    #Confirmation Alert
    Click Element     ${alert2}
    Handle Alert

    #Prompt Alert
    Click Element     ${alert3}
    Input Text Into Alert    Digvijay Patil
    ${text}=   Get Text    ${returning_text}
    Log      ${returning_text}      


    