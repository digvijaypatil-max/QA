*** Settings ***
Library   SeleniumLibrary
Resource  Resource.robot



*** Variables ***
${Browser}     Chrome
${URL}         https://testautomationpractice.blogspot.com/



*** Keywords ***
Launch Browser and Navigate to Website 
   Open Browser   ${URL}   Chrome
   Maximize Browser Window
