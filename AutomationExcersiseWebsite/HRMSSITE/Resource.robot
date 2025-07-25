*** Settings ***
Library   SeleniumLibrary

*** Variables ***
${URL}                https://hrms.zymr.com/dashboard/viewprofile
${signIn_Btn}         //div[@class='login-google-btn']
${Email_Tab}          //input[@type='email']
${Next_tab}           //span[text()="Next"]
${Password_tab}       //input[@type='password']
${Next_Tab1}          //span[text()="Next"]


*** Keywords ***
Launch Browser and Navigate to Website 
   Open Browser   ${URL}   Chrome
   Maximize Browser Window
  


