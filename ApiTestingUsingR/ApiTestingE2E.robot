*** Settings ***
Library    RequestsLibrary
Library    Collections
Resource    Resource.robot

*** Test case ***
Verify End to End Api testing
#Create new request , verify status code, response time     Digvijay     patil
   # Verify get request verify status code, response time, content, title 
   # Put Request verify status code,response time
   # Delete Request verify status code and response
   # Verify get request using loop verify status code, response time, content, title 
   #Extracting the json products
   #Path parameter
   #Query parameter
   #Send Custom Headers
   #Sending files
   #Wrong URL
   #Missing somthing in content
   Boundary & Edge Cases