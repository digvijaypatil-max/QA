*** Settings ***
Library   SeleniumLibrary
Resource  Resource.robot

*** Variables ***
${Checkbox_Expample}     //label[@for='bmw']
${select_Option}         //input[@name='checkBoxOption1']


                       

*** Test Cases ***
Handle the dropdown
    Launch Browser and Navigate to Website
    Click Element    ${select_Option1}
    sleep  2s
    ${text}=  Get Text    ${Checkbox_Expample}
    Log   ${text}
    ${text2}=   Get Element Attribute    ${Checkbox_Expample}   for
    Log   ${text2}
    
 
    

    