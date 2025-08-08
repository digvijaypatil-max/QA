*** Settings ***
Library    RequestsLibrary
Library    Collections
Resource   Resource.robot


*** Test Cases ***
Verify GET,PUT,POST,DELETE request
    create sessions1 and verify Send get request and verify actual status_code,content and headers and expected status_code,content and headers  Digvijay    dp123
    create sessions2 and Send post request and verify actual status_code,content and headers and expected status_code,content and headers
    Delete from the server
    Update request using put request  






    

          
         




