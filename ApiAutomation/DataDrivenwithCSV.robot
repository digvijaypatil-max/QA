*** Settings ***
Library    RequestsLibrary
Test Template     Validate Product API
Library    DataDriver    file=APIDDT.xlsx


*** Variables ***
${URL}    https://dummyjson.com


*** Test Cases ***
Validate Product API    
    ${product_id}    ${expected_id}

*** Keywords ***
 Validate Product API
    [Arguments]    ${product_id}    ${expected_id}
    Create Session    Api    ${URL}
    ${response}=    Get Request    Api    /products/${product_id}
    ${json}=    To Json    ${response.text}
    Should Be Equal As Integers    ${json["id"]}    ${expected_id}
