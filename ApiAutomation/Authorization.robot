*** Settings ***
Library    RequestsLibrary
Library    Collections
Resource    Resource.robot

*** Variables ***
${URL}           https://dummyjson.com
${Username}      Emily123@gmail.com
${Password}      EW@!23
${id}            1
${Token}          12345678vfghjkjafdgvhsadgfyu
${Api_Key}       123derffg
${Tokens}        None


*** Test Cases ***
Basic Auth  
    ${Auth}=  Create List     ${Username}    ${Password}
    create session   API     ${URL}     auth=${Auth}
    ${GetRespone}=   Get Request    API        ${URL}/users/${id}
    Log   HTTPStatusCode:${GetRespone.status_code}
    Log   Content : ${GetRespone.text}
    Log   headers:${GetRespone.headers}  
    Should Be Equal As Integers    ${GetRespone.status_code}    200   
       

Bearer Token 
    create session       API1    ${URL}    
    ${headers}=   Create Dictionary        Authorization=Bearer ${Token}
    ${GetRespone}=   Get Request    API        ${URL}/users/2
    Log   HTTPStatusCode:${GetRespone.status_code}
    Log   Content : ${GetRespone.text}
    Log   headers:${GetRespone.headers}
    #Should Be Equal As Strings    ${GetRespone.headers}    application/json; charset=utf-8
    Log   responseTime:${GetRespone.elapsed.total_seconds()}<2
    ${Respone}=  Get From Dictionary   ${GetRespone.headers}    Server
    Should Be Equal As Strings    ${Respone}    cloudflare


API KEY
    create session    Api      ${URL}
    ${headers}=    Create Dictionary       API_KEY=${Api_Key}
    ${Respone}=  Get Request    Api      ${URL}/users/3        headers=${headers}  
    Should Be Equal As Integers    ${Respone.status_code}    200
      
API key in query parameters
     Create Session    API    ${URL}
     ${Respone}=  Get Request    Api      ${URL}/users/4?api_key=${Api_Key}
     Should Be Equal As Integers    ${Respone.status_code}    200
     Log     ${Respone.text}




          
    
     


