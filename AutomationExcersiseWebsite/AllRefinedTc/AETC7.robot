*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${Browser}                    Chrome
${URL}                        https://www.automationexercise.com/
${Products_Link}              //a[text()=" Products"]
${Search_Product}             //input[@class="form-control input-lg"]
${Search_Button}              //button[@class="btn btn-default btn-lg"]
${View_product}               (//a[text()="View Product"])[1]
${Product_Quantity}           //input[@id='quantity']
${Add_To_Cart}                //button[@class='btn btn-default cart']
${View_Cart}                  //u[text()="View Cart"]
${Product_name}               //a[contains(text(),"Jeans")]
${Product_Quantity_Cart}      //td[@class='cart_quantity']/button
${Product_Amount}             //span[text()="Rs. 799"]
${Qty}                        10

*** Test Cases ***
Verify Quantity And Price Of Product In Cart
    Open Browser                        ${URL}      ${Browser}
    Maximize Browser Window
    Click Element                       ${Products_Link}
    Input Text                          ${Search_Product}           Jeans
    Click Element                       ${Search_Button}
    Click Element                       ${View_product}
    Clear Element Text                  ${Product_Quantity}
    Input Text                          ${Product_Quantity}         ${Qty}
    Click Element                       ${Add_To_Cart}
    Wait Until Element Is Visible       ${View_Cart}
    Click Element                       ${View_Cart}
    Element Should Contain              ${Product_name}            Jeans

    ${Total_Amount}=     Evaluate       ${Product_Amount} * ${qty}
    Log                  Total Price:   ${Total_Amount}
    
 
   

    
    
