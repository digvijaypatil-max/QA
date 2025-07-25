*** Settings ***
Library   SeleniumLibrary
Resource  Resource.robot
Library   RequestsLibrary


*** Variables ***

${links}     //a




*** Test Cases ***
Workig with shadow dom
    Launch Browser and Navigate to Website
    Execute Javascript    return document.querySelector('my-calendar').shadowRoot.querySelector('button')



 


    