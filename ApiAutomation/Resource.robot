*** Settings ***
Library    RequestsLibrary
Library    Collections

*** Variables ***
${URL}         https://dummyjson.com
${id}          1
${category}    beauty
${URL2}        https://jsonplaceholder.typicode.com
${id1}         101



*** Keywords ***
create sessions
    Create Session    Session    ${URL}
create sessions1 and verify Send get request and verify actual status_code,content and headers and expected status_code,content and headers
    [Arguments]                   ${Username}      ${Password}
    ${Auth}=     Create List      ${Username}      ${Password}
    Create Session    Session    ${URL}       auth=${Auth}
    ${Response}=    Get Request    Session    /products/${id}   
    Log    Status Code: ${Response.status_code}
    Log    Content: ${Response.text}
    Log    Headers: ${Response.headers} 
    Should Be Equal As Integers    ${Response.status_code}    200 
    Should Contain   ${Response.text}     ${category}
    ${Heasders_Value}=    Get From Dictionary    ${Response.headers}     Content-Type
    Should Be Equal As Strings   ${Heasders_Value}     application/json; charset=utf-8

create sessions2 and Send post request and verify actual status_code,content and headers and expected status_code,content and headers
    Create Session    Session2    ${URL2}
    ${Body}=    Create Dictionary    userId=45   id= 101   title= Rupa Is Billonare        body=After having money we can buy a harrier stealth edition    userId=46   id= 102   title= Sara Is Billonare        body=After having money we can buy a BMW stealth edition             
    ${header}=    create Dictionary     Content-Type=application/json
    ${All_Response}=  Post Request    Session2  /posts    ${Body}
    Log   Status code:${All_Response.status_code}
    Log   Headers:${All_Response.headers}
    Log   content:${All_Response.text}
    Should Be Equal As Integers    ${All_Response.status_code}    201          


Delete from the server
    Create Session    Session2    ${URL2}
    ${Delete_response}=  Delete Request    Session2    /posts/${id1} 
    Log     ${Delete_response.status_code}
    Log     ${Delete_response.text}
    Log     ${Delete_response.headers}
    Should Be Equal As Integers    ${Delete_response.status_code}   200
    #Should Be Empty    ${Delete_response.text}    {}    


Update request using put request  
      Create Session       Session2       ${URL2}
      ${Update_Body}=  Create Dictionary      userId=4199   id= 501   title= Digvijay Is Billonare        body=After having money we can buy a Rolls Royce stealth edition 
      ${header}=    create Dictionary     Content-Type=application/json       
      ${Put_Request}=    Put Request    Session2    /posts/${id1}     json=${Update_Body}    headers=${Header}
      Log     Status code: ${Put_Request.status_code}
     Log     Content: ${Put_Request.text}
     Log     Headers: ${Put_Request.headers}
     Should Be Equal As Integers    ${Put_Request.status_code}    500







