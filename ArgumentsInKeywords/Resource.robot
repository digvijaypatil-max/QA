*** Settings ***
Library   SeleniumLibrary


*** Variables ***
${URL}                  https://www.saucedemo.com/
${Expected_Title}       Swag Labs
${User_name}            //input[@id='user-name']
${Password}             //input[@id='password']  
${login_btn}            //input[@id='login-button']  

*** Keywords ***
Open browser to login the Page
     [Arguments]                       ${Browser_args}
     Open Browser       ${URL}         ${Browser_args}   
     Maximize Browser Window
Verify the title of the page 
     Title Should Be    ${Expected_Title}  

Input Username and Password  
     [Arguments]   ${UserName_args}    ${Password_args}   
     Input Text    ${User_name}       ${UserName_args}  
     Input Text    ${Password}        ${Password_args}

click on login button
     Click Button    ${login_btn}   



    
     
            

    
