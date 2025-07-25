*** Settings ***
Library   SeleniumLibrary
Library    String
Resource  Resource.robot

*** Variables ***
${All_Links}        //a
${All_frames1}     //iframe[@id='courses-iframe']


*** Test Cases ***
printing all links from the webpage
    Launch Browser and Navigate to Website
    
    Wait Until Element Is Visible    ${All_Links}       120s
    ${Links_count}  Get Element Count    ${All_Links}
    Log   ${Links_count}
    ${links}=  Get WebElements    ${All_Links}
    ${printed_Count}=    Set Variable     0
    FOR  ${print_Links}     IN   @{links}
    ${text}=  Get Text       ${print_Links} 
    Log      ${text}   
    ${printed_Count}=     Evaluate    ${printed_Count}+1
    END

#Switch to frame1
    Select Frame    ${All_frames1}
    sleep  3s
    ${Links123}   Get WebElements    //a
    ${textt2}   Get Element Count    //a
    FOR  ${links456}    IN    @{Links123} 
    ${textt}=  Get Text    ${links456}
    Log    ${textt} 
     ${printed_Count}=     Evaluate    ${printed_Count}+1
    END
    Log   These links are present in following page:${printed_Count}

   


    







   



  
 



  
    

   
    
 
    

    