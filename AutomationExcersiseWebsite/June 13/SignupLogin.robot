*** Settings ***

Library    SeleniumLibrary

*** Variables ***

${URL}        https://www.automationexercise.com/login

*** Test Cases ***   
Verify the sign in Page
   Open Browser   ${URL}   chrome
   Click Element    xpath=//a[@href='/login']
   Element Should Be Visible    xpath=//h2[text() ="New User Signup!"]
   