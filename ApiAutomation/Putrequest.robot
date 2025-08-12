*** Settings ***
Library   RequestsLibrary
Library   Collections


*** Variables ***
${URL}       https://dummyjson.com
${id1}       9001
${Token}      ugfuiaigfefgeuff
${id2}        101

*** Test Cases ***
Put request    
     ${Headers}=  Create Dictionary    Authorization=Bearer ${Token}
     Create Session    Session    ${URL}     headers=${Headers}
     ${UpdateBody}=   Create Dictionary   userId=45   id=101   title= I am Digvijay and i am a Billonare        body=After having money we can buy a harrier stealth editionuser
     ${Header}=    Create Dictionary     Content-Type=application/json 
     ${PutRequestRespone}=  PUT On Session    Session      /posts/${id1}     json=${UpdateBody}    headers=${Header}
     Log   ${PutRequestRespone.status_code}
     Log   ${PutRequestRespone.text}
     Log   ${PutRequestRespone.headers}

Get Request  
     Create Session    Session    ${URL}     
     ${ResponsePost}=    GET On Session    Session    https://dummyjson.com/posts/${id2}
     Log            ${ResponsePost.status_code}
     Log            ${ResponsePost.text}
     
