*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}       https://demo.automationtesting.in/Index.html
${Email}       //input[@type='text']
${Enter_btn}   //span//a//img[@alt='logo']
${First_Name_Elemnt}           //input[@placeholder='First Name']
${Last_Name_Elemnt}           //input[@placeholder='Last Name']


*** Test Cases ***
Verify Google Heading
    Open Browser    ${URL}        chrome
   
     Input Text    ${Email}   dr@123
    Click Element   ${Enter_btn}
    Wait Until Element Is Visible    ${First_Name_Elemnt}     10s
    Click Element        ${First_Name_Elemnt} 
    Input Text          ${First_Name_Elemnt}         Digvijay
    Wait Until Element Is Visible    ${Last_Name_Elemnt}     10s
    Click Element       ${Last_Name_Elemnt}
    Input Text          ${Last_Name_Elemnt}         patil  