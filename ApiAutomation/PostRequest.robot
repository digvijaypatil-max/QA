*** Settings ***
Library    RequestsLibrary
Library    Collections


*** Variables ***
${URL}      https://dummyjson.com
${Token}    hgafctyfytfuyfdyu


*** Test Cases ***
Post request
    ${Headers}=   Create Dictionary    Authorization=Bearer ${Token}    
    Create Session    session    ${URL}      headers=${Headers}
    ${Body}=   Create Dictionary    userId=45   id= 101   title= Rupa Is Billonare        body=After having money we can buy a harrier stealth editionuser
    ${header}=   Create Dictionary   Content-Type=application/json
    ${All_Response}=  Post Request    session  /products/add    ${Body}
    Log   ${All_Response.status_code}
    Log   ${All_Response.text}
    Log    ${All_Response.headers}
    Should Be Equal As Integers      ${All_Response.status_code}           201
    

