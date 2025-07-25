*** Settings ***
Library     SeleniumLibrary
Resource    Resource.robot

*** Variables ***
${Handle_frame}          //iframe[@name='iframe-name']
#${More_Mouse_hover}      //i[@class='glyphicon glyphicon-chevron-down'][1]
#${About_Us}              //ul//li//a[text()='About us'][1]
${Blogs}                 //a[text()='Blog'][1]

*** Test Cases ***
Handle frames
    Launch Browser and Navigate to Website
    Execute Javascript       window.scrollTo(0,1600)
    Select Frame    ${Handle_frame}
    Execute Javascript       window.scrollTo(0,1800)
    Click Element    ${Blogs}
    sleep  2s
    Unselect Frame
    sleep  2s
   