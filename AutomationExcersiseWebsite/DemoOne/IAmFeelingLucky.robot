*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BROWSER}    Chrome
${URL}        https://www.google.com

*** Test Cases ***
Verify I Am Feeling Lucky Button
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
  
    Element Should Be Visible        xpath=(//input[@name='btnI'])[2]
    Element Attribute Value Should Be    xpath=(//input[@name='btnI'])[2]    value    I'm Feeling Lucky
     Close Browser