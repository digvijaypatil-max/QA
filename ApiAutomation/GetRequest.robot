*** Settings ***
Library   RequestsLibrary
Library   Collections


*** Variables ***
${URL}     https://dummyjson.com
${Title}     Essence Mascara Lash Princess
${Username}   Digvijay
${Password}   Patil


*** Test Cases ***
Get request
    ${Auth}    Create List       ${Username}     ${Password}
    create Session     Sessions         ${URL}       auth=${Auth}
    ${ResponseOfGetRequest}=     Get Request    Sessions    ${URL}/products    
    Log   StatusCode:${ResponseOfGetRequest.status_code}
    Log   Content:${ResponseOfGetRequest.text}
    Log   Headers:${ResponseOfGetRequest.headers}
    Should Be Equal As Integers    ${ResponseOfGetRequest.status_code}    200
    Should Contain    ${ResponseOfGetRequest.text}    ${Title}
    ${HeadersValue}=    Get From Dictionary    ${ResponseOfGetRequest.headers}    Content-Encoding
    Should Be Equal As Strings    ${HeadersValue}    gzip