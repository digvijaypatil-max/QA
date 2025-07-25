*** Settings ***
Library   SeleniumLibrary
Library    XML

*** Variables ***
${Browser}                   Chrome
${URL}                       https://www.automationexercise.com/
${SignUp_Link}               //a[text()=" Signup / Login"]
${Name_Field}               //input[@data-qa="signup-name"]
${Email_Address_Field}     //input[@data-qa="signup-email"]
${Sign_Up_field}          //button[@data-qa="signup-button"]
${Title_Field}           //b[text()="Enter Account Information"]

*** Test Cases ***
Sign up using your name and email Address and verify the text after login
     Open Browser                 ${URL}       ${Browser}
     Click Element                ${SignUp_Link}
     Input Text                   ${Name_Field}            Digvijay
     Input Text                   ${Email_Address_Field}   digvijay@gmail.com
     Click Button                 ${Sign_Up_field}
     Element Should Be Visible    ${Title_Field}   