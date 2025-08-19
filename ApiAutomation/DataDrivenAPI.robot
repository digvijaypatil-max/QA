*** Settings ***
Library    RequestsLibrary
Test Template    Validate Product API

*** Variables ***
${URL}    https://dummyjson.com

*** Test Cases ***        PRODUCT_ID    EXPECTED_ID
Product 1 Validation      1             1
Product 2 Validation      2             2
Product 3 Validation      3             3

*** Keywords ***
Validate Product API
    [Arguments]    ${product_id}    ${expected_id}
    Create Session    Api    ${URL}
    ${response}=    Get Request    Api    /products/${product_id}
    ${json}=    To Json    ${response.text}
    Should Be Equal As Integers    ${json["id"]}    ${expected_id}
