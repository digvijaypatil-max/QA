*** Settings ***
Library    SeleniumLibrary
Library    XML
Library    Screenshot


*** Variables ***
${Browser}    Chrome
${URL}        https://www.saucedemo.com/


*** Test Cases ***
Login To sauceDemo website and verfiy the Title
    Open Browser      ${URL}        ${BROWSER}
    Input Text    //input[@class="input_error form_input"]    standard_user
    Input Password    //input[@id='password']    secret_sauce
    Click Element    //input[@id='login-button']
    Element Should Be Visible    //div[text()="Swag Labs"]      Swag Labs
    ${current_url}=    Get Location
    Should Contain    ${current_url}    /inventory.html

    
    Select From List By Index    //select[@data-test='product-sort-container']     1

Add product to the cart and verify that product is went to cart successfully and click on checkout
    Open Browser      ${URL}        ${BROWSER}
    Input Text    //input[@class="input_error form_input"]    standard_user
    Input Password    //input[@id='password']    secret_sauce
    Click Element    //input[@id='login-button']
    Click Element    //button[@id='add-to-cart-sauce-labs-backpack']   
    Click Element    //a[@data-test='shopping-cart-link']              
    Element Should Be Visible    //div[text()="Sauce Labs Backpack"]   Sauce Labs Backpack
    Click Element    //button[@class='btn btn_action btn_medium checkout_button ']    
    Input Text    //input[@id='first-name']                    Digvijay
    Input Text    //input[@data-test='lastName']               patil
    Input Text    //input[@id='postal-code']                   4111065
    Click Element  //input[@id='continue']
    Click Element    //button[@id='finish']

    


Then click on remove button and verify product is not Present in the cart
     Click Element    //button[@id='react-burger-menu-btn']
     Take Screenshot
  