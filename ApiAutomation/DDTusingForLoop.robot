*** Settings ***
Library    RequestsLibrary
Library    Collections
Library    OperatingSystem
Resource    Resource.robot

*** Variables ***
${URL}    https://dummyjson.com
@{Product_id}      1  2  3  4  5
${Username}    digvijay
${Password}    patil
@{Expected_id}     1  2  3  4  5   

*** Test Cases ***
Verify data driven testing using for loop
     ${Auth}=   Create List     ${Username}     ${password}
     create session   Api      ${URL}    auth=${Auth}
     FOR  ${id}    IN      @{Product_id}
          ${Response}=  Get Request    Api    /products/${id}
          Log   Status_code:${Response.status_code}
          Log   Content:${Response.text}
          Log   headers:${Response.headers} 
          Should Be Equal As Integers    ${Response.status_code}    200
          ${json}=    To Json    ${Response.text}
          ${title}=   Get From Dictionary    ${json}    title
          Log    Product title is: ${title}
          ${tags}=   Get From Dictionary    ${json}    tags
          Log    tags is: ${tags}  
     END
            
