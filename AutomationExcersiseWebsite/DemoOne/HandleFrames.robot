*** Settings ***
Library   SeleniumLibrary

*** Variables ***
${Browser}              Chrome
${URL}                  https://demoqa.com/frames
${Frame_name}           //iframe[@id='frame1']
${Frame_name2}          //iframe[@id='frame2']


*** Test Cases ***
Verify Different Frames
    Open Browser                  ${URL}    ${Browser}
    Maximize Browser Window
    Select Frame                  ${Frame_name}
    Unselect Frame
    Select Frame                   ${Frame_name2}
   
