*** Settings ***
Library      SeleniumLibrary
Resource     Resource.robot


*** Variables ***
${section_1}        //input[@id='input1']
${submit_btn_1}     //button[@id='btn1']
${section_2}        //input[@id='input2']
${submit_btn_2}     //button[@id='btn2']
${section_3}        //input[@id='input3']
${submit_btn_3}     //button[@id='btn3']



*** Test Cases ***
Verify the form on the web table
    Launch Browser and Navigate to Website
    Execute JavaScript                             window.scrollTo(0, 500) 
    Input Text          ${section_1}               This text is for section 1
    Click Button        ${submit_btn_1}
    Input Text          ${section_2}               This text is for section 2
    Click Button        ${submit_btn_2}
    Input Text          ${section_3}               This text is for section 3
    Click Button        ${submit_btn_3}