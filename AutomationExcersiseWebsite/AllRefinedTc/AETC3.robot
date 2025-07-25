*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${Browser}         Chrome
${URL}             https://www.automationexercise.com/
${SignUp_Link}     //a[text()=" Signup / Login"]
${Email_Field}     //input[@data-qa="login-email"]
${Password_Field}  //input[@data-qa="login-password"] 
${Login_Button}    //button[@data-qa="login-button"]

*** Test Cases ***
Click on Signup/Login Hyperlink and verify Landing page has Email Address, Password TextFields & Login Button
      Open Browser                  ${URL}         ${Browser}
      Click Element                 ${SignUp_Link} 
      Element Should Be Visible     ${Email_Field}       Email Address
      Element Should Be Visible     ${Password_Field}    Password
      Element Should Be Visible     ${Login_Button}      Login

      
