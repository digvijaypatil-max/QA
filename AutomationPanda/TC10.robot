*** Settings ***
Library      SeleniumLibrary
Resource     Resource.robot


*** Variables ***
${point_me_btn}         //button[@class='dropbtn']
${drop_down_content}     //div[@class='dropdown-content']



    

*** Test Cases ***
Mouse hover
    Launch Browser and Navigate to Website
    Execute Javascript               window.scrollTo(0,1000)
    Wait Until Element Is Visible    ${point_me_btn}
    Click Button    ${point_me_btn}
    ${Text}=    Get Text    ${point_me_btn}
    Log    ${Text}
    Wait Until Element Is Visible    ${drop_down_content}
    Element Should Contain    ${drop_down_content}    Mobiles   Laptops
   