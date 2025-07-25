*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${Browser}        Chrome
${URL}            https://www.automationexercise.com/
${SignUp_Link}    //a[text()=" Signup / Login"]
*** Test Cases ***
Click on the Signup/Login Hyperlink and verify Landing page URL has /login in it.
    Open Browser      ${URL}         ${Browser}
    Click Element     ${SignUp_Link}
    ${current_url}    Get Location
    Should Contain    ${current_url}    /login

