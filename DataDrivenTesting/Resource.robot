*** Settings ***
Library     SeleniumLibrary
Library     DataDriver            file=DATADRIVEN.xlsx


*** Variables ***

${Url}                    https://www.facebook.com/login/
${Username_Element}       //input[@name='email']           
${Password_Elememnt}      //input[@type='password']   


*** Keywords ***
Open browser and login to facebook and open sign in button
     Maximize Browser Window
     [Arguments]                ${browser}
     Open Browser         ${Url}            ${browser}
Enter different Username and password 
      [Arguments]           ${username}      ${password}
      Input Text   ${Username_Element}       ${username}  
      Input Text   ${Password_Elememnt}      ${password}
            