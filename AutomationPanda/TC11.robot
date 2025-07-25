*** Settings ***
Library      SeleniumLibrary
Resource     Resource.robot


*** Variables ***
${DraggedElements}      //p[text()='Drag me to my target']
${Drop}                 //div[@id='droppable']
${doubleclick}          //button[text()='Copy Text']


*** Test Cases ***
Drag and Drop and double click
    Launch Browser and Navigate to Website
    Execute Javascript               window.scrollTo(0,1200)
    Drag And Drop    ${DraggedElements}    ${Drop}
    Sleep    10s

    #Double click

    Double Click Element    ${doubleclick}
    Sleep    10s

    

    