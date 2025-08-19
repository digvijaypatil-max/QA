*** Settings ***
Library   RequestsLibrary
Library   Collections


*** Variables ***
${URL}        https://dummyjson.com
${Title}        Strawberry
${Title25}      Tissue Paper Box
${Username}   Digvijay
${Password}   Patil
${id}         40


*** Test Cases ***
Get request
    ${Auth}    Create List       ${Username}     ${Password}
    create Session     Sessions         ${URL}       auth=${Auth}
    ${ResponseOfGetRequest}=     Get Request    Sessions    ${URL}/products/${id}    
    Log   StatusCode:${ResponseOfGetRequest.status_code}
    Log   Content:${ResponseOfGetRequest.text}
    Log   Headers:${ResponseOfGetRequest.headers}
    Should Be Equal As Integers    ${ResponseOfGetRequest.status_code}    200
    Should Contain    ${ResponseOfGetRequest.text}    ${Title}
    ${HeadersValue}=    Get From Dictionary    ${ResponseOfGetRequest.headers}    Content-Encoding
    Should Be Equal As Strings    ${HeadersValue}    gzip

Get request with another id
    ${Auth}    Create List       ${Username}     ${Password}
    create Session     Sessions         ${URL}       auth=${Auth}
    ${Params}=   Create Dictionary    id=41
    ${ResponseOfGetRequest}=     Get Request    Sessions    /products/41   
    Log   StatusCode:${ResponseOfGetRequest.status_code}
    Log   Content:${ResponseOfGetRequest.text}
    Log   Headers:${ResponseOfGetRequest.headers}
    Should Be Equal As Integers    ${ResponseOfGetRequest.status_code}    200
    Should Contain    ${ResponseOfGetRequest.text}    ${Title25}
    ${HeadersValue}=    Get From Dictionary    ${ResponseOfGetRequest.headers}    Content-Encoding
    Should Be Equal As Strings    ${HeadersValue}    gzip    