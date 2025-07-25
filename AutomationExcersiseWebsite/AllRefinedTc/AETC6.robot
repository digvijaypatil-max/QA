*** Settings ***
Library     SeleniumLibrary
Resource   Resource.robot

*** Variables ***
${Browser}                     Chrome
${URL}                         https://www.automationexercise.com/
${Products_Link}              //a[text()=" Products"]
${Search_Product}             //input[@class="form-control input-lg"]
${Search_Button}              //button[@class="btn btn-default btn-lg"]
${Text_Contain}               (//div//p[text()="Soft Stretch Jeans"])[1]
${Add_Cart_Button}            (//a[@class='btn btn-default add-to-cart'])[1]
${View_Cart_Button}           //u[text()="View Cart"]
${Text_Contain_In_Cart}       //a[text()="Soft Stretch Jeans"]

*** Test Cases ***
Search and Add Soft Stretch Jeans to Cart
    Launch Browser and Navigate to Website
    Click Element                          ${Products_Link}
    Wait Until Page Contains Element       ${Search_Product}
    Input Text                             ${Search_Product}          Jeans
    Click Element                          ${Search_Button}
    Wait Until Page Contains Element       ${Text_Contain}
    Element Text Should Be                 ${Text_Contain}            Soft Stretch Jeans
    Click Element                          ${Add_Cart_Button}
    Wait Until Element Is Visible          ${View_Cart_Button}        timeout=10s
    Click Element                          ${View_Cart_Button}
    Wait Until Page Contains Element       ${Text_Contain_In_Cart}
    Element Text Should Be                 ${Text_Contain_In_Cart}    Soft Stretch Jeans
  
