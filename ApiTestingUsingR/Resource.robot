*** Settings ***
Library    RequestsLibrary
Library    Collections

Resource    ../ApiAutomation/Resource.robot

*** Variables ***
${URl}               https://dummyjson.com
#${Username}         Digvijay
#${Password}         Patil
${Token}             ertyuikuydfgh567
${id}                15
${id1}                501
${Api_Key}       123derffg
@{Product_Id}      1 2 3 4 5 6 7


*** Keywords ***
Create new request , verify status code, response time
      [Arguments]             ${Username}     ${Password}
     ${Auth}=   Create List     ${Username}     ${Password}
     Create Session    Api    ${URl}     auth=${Auth}
     ${Body}=  Create Dictionary    userId=1001   id= 501   title= Harrier       body=Yes i have car and it is harrier
     ${header}=   Create Dictionary    Content Type=application/json
     ${PostResponse}=     Post Request    Api   /products/add     json=${Body}    headers=${header}
     Log    ${PostResponse.status_code}
     Should Be Equal As Integers    ${PostResponse.status_code}    201
     Log     ${PostResponse.elapsed.total_seconds()}<2
     Log      ${PostResponse.text}

Verify get request verify status code, response time, content, title     
      Create Session    Api    ${URl}
      ${headers}=   Create Dictionary     Authorization=Bearer${Token}
      ${GetRespone}=    Get Request    Api    /products/5
      Log    Statuscode:${GetRespone.status_code}
      Log    content:${GetRespone.text}
      Log    header:${GetRespone.headers}
      ${json}=   To Json    ${GetRespone.text}
      ${title}=   Get From Dictionary    ${json}    title
      Log     product title is :${title}

Put Request verify status code,response time
     Create Session    Api    ${URL}
     ${UpdateBody}=  Create Dictionary    title=Rolls-Royce   description=Updated via Robot Framework
     ${Header}=      Create Dictionary     Content-Type=application/json
     ${PutRequestRespone}=     PUT On Session    Api       /products/5   json=${UpdateBody}    headers=${Header}
     Log    ${PutRequestRespone.status_code}
     Should Be Equal As Integers    ${PutRequestRespone.status_code}    200
     Log     ${PutRequestRespone.elapsed.total_seconds()}<2
     Log      ${PutRequestRespone.text}



Delete Request verify status code and response
    Create Session    Api    ${URL}
    ${Headers}=    Create Dictionary    Content-Type=application/json
    ${Delete_Response}=    Delete Request    Api    /products/1    headers=${Headers}
    Log    ${Delete_Response.status_code}
    Should Be Equal As Integers    ${Delete_Response.status_code}    200
    Log    ${Delete_Response.text}




Verify get request using loop verify status code, response time, content, title     
      Create Session    Api    ${URl}
      ${headers}=   Create Dictionary     Authorization=Bearer${Token}

      FOR   ${id}   IN   @{Product_Id}
      ${GetRespone}=    Get Request    Api    /products/${id}
      Log    Statuscode:${GetRespone.status_code}
      Log    content:${GetRespone.text}
      Log    header:${GetRespone.headers}
      ${json}=   To Json    ${GetRespone.text}
      ${title}=   Get From Dictionary    ${json}    title
      Log     product title is :${title}   
      END 
           
     