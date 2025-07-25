*** Settings ***
Library   SeleniumLibrary

*** Variables ***
${Browser}       Chrome
${URL}           https://www.automationexercise.com/
${homeElement}   //a[text()=" Home"]

*** Test Cases ***
Navigate to the Automation Exercise Website and Verify Home Menu is Present
     Open Browser                 ${URL}         ${Browser}
     Element Should Be Visible    ${homeElement}
   