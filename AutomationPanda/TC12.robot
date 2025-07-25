*** Settings ***
Library      SeleniumLibrary
Resource     Resource.robot


*** Variables ***
${leftslider}          //div[@id='slider-range']/span[1]
${rightslider}        //div[@id='slider-range']/span[]


    

*** Test Cases ***
Handle slider
    Launch Browser and Navigate to Website
    Execute Javascript            window.scrollTo(0,1600)
    Wait Until Element Is Visible    ${leftslider}       10s
    Drag And Drop By Offset    ${leftslider}    100    0
    Sleep    10s   
    Wait Until Element Is Visible    ${rightslider}       10s
    Drag And Drop by Offset   ${rightslider}  -50      0 

    