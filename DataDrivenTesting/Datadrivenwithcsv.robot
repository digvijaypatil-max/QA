*** Settings ***
Library     SeleniumLibrary          
Library     ExcelReader.py

*** Variables ***

${Url}                    https://www.facebook.com/login/
${Username_Element}       //input[@name='email']           
${Password_Element}      //input[@type='password']   




*** Test Case ***

Verify login with username ${username} and password ${password}
 
    
    Open Browser    ${Url}    chrome
    Input Text    ${Username_Element}   io
    Input Text    ${Password_Element}  iiu  
    Sleep    2s
    Close Browser