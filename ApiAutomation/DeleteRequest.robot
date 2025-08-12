*** Settings ***
Library    RequestsLibrary
Library    Collections


*** Variables ***
${URL}     https://dummyjson.com
${id}      10

*** Test Cases ***
Delete request    
     Create Session    Session      ${URL}
     ${DeleteRequestResponse}=     Delete Request    Session     /posts/${id}
     Log   ${DeleteRequestResponse.status_code}
     Log   ${DeleteRequestResponse.text}
     Log   ${DeleteRequestResponse.headers}
     Should Be Equal As Integers    ${DeleteRequestResponse.status_code}    200
   