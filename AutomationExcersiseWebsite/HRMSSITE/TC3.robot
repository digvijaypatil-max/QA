*** Settings ***
Library   SeleniumLibrary
Resource  Resource.robot

*** Variables ***
${SelfService_Menu}                      //b[text()="Self Service"]
${My_details_Menu}                       //a[text()="My Details"]
${Emp_name}                              //span[@class="emp-name-span bold-text"]
${Expected_Emp_name}                     Mr. Digvijay Patil
${Emp_id}                                //span[@class="emp-name-span"]
${Expected_Emp_id}                       1771
${Employee_Email_id}                    //a[text()='digvijay.patil@zymr.com']
${Expected_Email_id}                    digvijay.patil@zymr.com




*** Test Cases ***
Open Self service -- my details --- verify name, Employee id, email
    Launch Browser and Navigate to Website 
    Wait Until Element Is Visible    ${SelfService_Menu}    timeout=50s
    Click Element    ${SelfService_Menu}
    Click Element    ${My_details_Menu}
    Element Should Contain    ${Emp_name}              ${Expected_Emp_name}
    Element Should Contain    ${Emp_id}                ${Expected_Emp_id}
    Element should contain    ${Employee_Email_id}    ${Expected_Email_id} 


