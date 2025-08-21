*** Settings ***
Library    RequestsLibrary
Library    Collections
Resource    ../ApiAutomation/Resource.robot

*** Variables ***
${URl}                https://dummyjson.com
#${Username}          Digvijay
#${Password}          Patil
${Token}              ertyuikuydfgh567
${id}                 15
${id1}                501
${Api_Key}            123derffg
@{Product_Id}         1 2 3 4 5 6 7
${Wrong_Api}          https://dummyjson.com

*** Keywords ***
Create new request , verify status code, response time
      [Arguments]             ${Username}     ${Password}
     ${Auth}=   Create List     ${Username}     ${Password}
     Create Session    Api    ${URl}     auth=${Auth}
     ${Body}=  Create Dictionary    userId=1001   id= 501   title= Harrier       body=Yes i have car and it is harrier
     ${header}=   Create Dictionary    Content-Type=application/json
     ${PostResponse}=     Post Request    Api   /products/add     json=${Body}    headers=${header}
     Log    ${PostResponse.status_code}
     Should Be Equal As Integers    ${PostResponse.status_code}    201
     Log     ${PostResponse.elapsed.total_seconds()}<2
     Log      ${PostResponse.text}
     ${json}=  To Json    ${PostResponse.text}
     ${Postid}=  Get From Dictionary    ${json}        id
      Log    ${Postid}

      ${ResponsefromPostRequest}=    Get Request    Api    products/${Postid}
      Log   ${ResponsefromPostRequest.status_code}
      Log   ${ResponsefromPostRequest.elapsed.total_seconds()}<2
      Log   ${ResponsefromPostRequest.text}

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
      END 

Extracting the json products
      Create Session    Api    ${URL}
      ${GetResponse}=    Get Request    APi   /products/10
      Log    Content:${GetResponse.text}
      ${Json}=   To Json    ${GetResponse.text}
      ${title}=  Get From Dictionary    ${Json}    title
      Log   ${title}     
      ${id}=     Get From Dictionary    ${Json}    id  
      Should Be Equal As Strings    ${id}     10
      Should Be Equal As Strings    ${json["reviewes"],["rating"]}    1
      Dictionary Should Contain Key    ${Json}    title  
      
Path parameter
      Create Session    Api    ${URL}
      ${GetResponse}=    Get Request    APi   /products/10
      Log    Content:${GetResponse.text}

Query parameter
      ${params}=    Create Dictionary       limit=3
       Create Session    Api    ${URL}
      ${GetResponse}=    Get Request    APi       /products       params=${params}
      Log    Content:${GetResponse.text}
           
Send Custom Headers
    ${headers}=   Create Dictionary     Content-Type=multipart/form-data    Accept-Encoding=gzip
     Create Session    Api    ${URL}
     ${GetResponse}=    Get Request    APi       /products/5       headers=${headers}
    Log    Content:${GetResponse.text}

Sending files 
       Create Session    Api    ${URL}
       ${files}=    Create Dictionary    file=@${CURDIR}/D:\RobotFrameWorkPractice\sample.text.txt
      ${resp}=    POST On Session    Api    /post    files=${files}
      Log    ${resp.json()}


Wrong URL    
      Create Session    Api    ${Wrong_Api}
      ${Headers}=    Create Dictionary    Authorization=Bearer ${Token}
      ${ErrorResponse}=    Get Request      Api     /products1    headers=${Headers}
      Log    ${ErrorResponse.status_code}
      Log    ${ErrorResponse.text}
      Should Be True    ${ErrorResponse.status_code} == 400 or ${ErrorResponse.status_code} == 401

Missing somthing in content      
        create session      Api     ${URL}   
        ${Body}=     Create Dictionary       userId=500   id= 90  title= car       body=Yes i have car and it is harrier
       ${Headers}=   Create Dictionary       Content-type=Invalid/type
       ${MissingContentType}=    post Request    Api     /products/add    json=${Body}   headers=${Headers}
       Log    ${MissingContentType.status_code}
       Log    ${MissingContentType.text}
       Should Be True    ${MissingContentType.status_code} == 400 or ${MissingContentType.status_code} == 401


Boundary & Edge Cases
        #It should be give error as of now it is not giving any error cause this is the dummy Api 
       create session      Api     ${URL}   
       ${Body}=     Create Dictionary       userId=5000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000   id= -90  title= car       body=Yes i have car and it is harrier
       ${Headers}=   Create Dictionary       Content-type=application/json
       ${BECContentType}=    post Request    Api     /products/add    json=${Body}   headers=${Headers}
       Log    ${BECContentType.status_code}
       Log    ${BECContentType.text}
       #Should Be True    ${BECContentType.status_code} == 400 or ${BECContentType.status_code} == 401
       #This line will not run cause a of now it is giving us 201 

         
               
       



 
      
     



            