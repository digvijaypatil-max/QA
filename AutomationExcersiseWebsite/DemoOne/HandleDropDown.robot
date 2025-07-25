*** Settings ***
Library   SeleniumLibrary

*** Variables ***
${Browser}               Chrome
${URl}                   https://demoqa.com/select-menu
${Drop_Down_menu}        //select[@id="oldSelectMenu"]

*** Test Cases ***
Handle the dropdown 
     Open Browser    ${URL}     ${Browser}
     Select From List By Index    ${Drop_Down_menu}        3
     Select From List By Value    //select[@id="cars"]     opel
     
     