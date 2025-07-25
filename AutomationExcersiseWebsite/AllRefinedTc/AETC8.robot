*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${Browser}                   Chrome
${URL}                       https://www.automationexercise.com/
${Signup_Field}              //a[text()=" Signup / Login"]
${Email_Address_field}       //input[@data-qa='login-email']
${Password_Field}            //input[@data-qa='login-password']

*** Test Cases ***
Verify all buttons is displayed 
      Open Browser                 ${URL}        ${Browser}
      Click Element                ${Signup_Field}
      Element Should Be Enabled    ${Email_Address_field}
      Element Should Be Enabled    ${Password_Field}
      

      
      