*** Settings ***
Library   SeleniumLibrary

*** Variables ***
${BROWSER}      Chrome
${URL}          https://demo.applitools.com/


*** Test Cases ***

Automate bank website 
    Open Browser    ${ URL}        ${BROWSER}
    Input Text    xpath=//input[@id='username']    SAM
    ${namepassed} =   Get Value    xpath=//input[@id='username']
    Input Password    xpath=//input[@id='password']    123
    Click Element    xpath=//a[text()="Sign in"]  
    ${current_url}    Get Location
    Should Contain    ${current_url}    https://demo.applitools.com/
    Page Should Contain         Your nearest branch closes in: 30m 5s
