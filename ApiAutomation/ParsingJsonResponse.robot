*** Settings ***
Library   RequestsLibrary
Library   Collections
Library    Dialogs


*** Variables ***
${URL}      https://dummyjson.com


*** Test Cases ***
Parsing json ResponseOfGetRequest
    Create Session    api    ${URL}
    ${ParseJson}=    Get Request     api     ${URL}/products/10
    #Parsing JSON response
    ${Json}=   To Json    ${ParseJson.text}
    #Log   ${json["dimensions"]}
    # FOR   ${key}    ${value}    IN  @{Json}
    # Log  ${key}=${value}
    # END

    FOR    ${Items}   IN    ${Json}
    Log    ${Items}
    END

    #Using Collections Library for Assertions

Validate json with Collections
     Create Session    api    ${URL}
    ${ParseJson}=    Get Request     api     ${URL}/products/10
     ${Json}=   To Json    ${ParseJson.text}
     #${json}=   Evaluate    {'id': 10, 'title': 'Gucci Bloom Eau de', 'description': "Gucci Bloom by Gucci is a floral and captivating fragrance, with notes of tuberose, jasmine, and Rangoon creeper. It's a modern and romantic scent."}     $Json
     Dictionary Should Contain Key    ${json}    id
     Dictionary Should Contain Value    ${json}    Gucci Bloom Eau de
     Should Be Equal As Strings    ${json["id"]}   10
         



