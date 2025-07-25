*** Settings ***
Library   SeleniumLibrary
Resource  Resource.robot

*** Variables ***
${SelfService_Menu}                      //b[text()="Self Service"]
${My_details_Menu}                       //a[text()="My Details"]
${Location_Name}                         //label[text()='Z3-PUNE']
${Expected_Location_Name}                Z3-PUNE
${Reporting_Manager_Name}                //label[text()='Ankita Mehta']
${Expected_Reporting_Manager_Name}       Ankita Mehta           

*** Test Cases ***
verify location and reporting manager
    Launch Browser and Navigate to Website 
    Wait Until Element Is Visible    ${SelfService_Menu}          timeout=50s
    Click Element                    ${SelfService_Menu}
    Click Element                    ${My_details_Menu}
    Element Should Contain           ${Location_Name}             ${Expected_Location_Name}
    Element Should Contain           ${Reporting_Manager_Name}    ${Expected_Reporting_Manager_Name}