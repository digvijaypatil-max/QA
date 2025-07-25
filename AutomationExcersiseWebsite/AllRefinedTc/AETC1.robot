*** Settings ***
Library   SeleniumLibrary

*** Variables ***
${BROWSER}        Chrome
${URL}            https://www.automationexercise.com/
${Title}          Automation Exercise


*** Test Cases ***
 Navigate to the Automation Exercise Website and Verify the Title

   Open Browser          ${URl}        ${BROWSER}
   Title Should Be       ${Title}