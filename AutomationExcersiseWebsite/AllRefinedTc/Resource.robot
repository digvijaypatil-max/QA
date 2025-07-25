*** Settings ***
Library   SeleniumLibrary

*** Variables ***
${URL}   https://www.automationexercise.com/


*** Keywords ***
Launch Browser and Navigate to Website
   Open Browser   ${URL}   Chrome
   Maximize Browser Window

