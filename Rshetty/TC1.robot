*** Settings ***
Library   SeleniumLibrary
Resource  Resource.robot
*** Variables ***
${Expected_Title}      Practice Page
${Actual_Home_Btn}     //button[text()='Home']
${Actual_Practice_Btn}     //button[text()='Practice']
${Actual_Login_Btn}     //button[text()='Login']
${Actual_Signup_Btn}     //button[text()='Signup']
${blinking_Text}         //a[text()='Free Access to InterviewQues/ResumeAssistance/Material']



*** Test Cases ***
Verify the title of the webpage
    Launch Browser and Navigate to Website
    ${URL}=    Get Location   
    Log  ${URL}  
    ${Actual_Title}=    Get Title
    Log   ${Actual_Title}
    IF   '${Actual_Title} == ${Expected_Title}'
    Log    Both titles is same
    ELSE
    Log    Both titles is not same
    END
   
    Page Should Contain Element   ${Actual_Home_Btn} 
    Page Should Contain Element   ${Actual_Practice_Btn} 
    Page Should Contain Element   ${Actual_Login_Btn} 
    Page Should Contain Element   ${Actual_Signup_Btn} 
    Wait Until Element Is Visible    ${blinking_Text}    10s
    ${Log_Blinking_Text}=    Get text      ${blinking_Text}
    Log     ${Log_Blinking_Text}

    
