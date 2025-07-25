*** Settings ***
Library      SeleniumLibrary
Resource     Resource.robot


*** Variables ***
${DashBoard_Menu}                        //li[@super-parent='main_parent_173']
${Expected_DashBoard_Menu_Name}           Dashboard
${SelfService_Menu}                      //b[text()="Self Service"]
${Expected_SelfService_Menu_name}        Self Service
${Organization_Menu}                     //b[text()="Organization"]
${Expected_Organization_Menu_Name}       Organization
${Project_Menu}                          //b[text()="Projects"]
${Expected_project_Menu_Name}            Projects
${Tiem&Attendence_Menu}                  //b[text()="Time & Attendance"]
${Expected_Tiem&Attendence_Menu_Name}    Time & Attendance




*** Test Cases ***
Verify different Menu on home page of HRMS Website
      Launch Browser and Navigate to Website
      Wait Until Element Is Visible    ${DashBoard_Menu}   timeout=50s
      ${Actual_Dashboard_Menu}=    Get Text      ${DashBoard_Menu}
      Should Be Equal       ${Actual_Dashboard_Menu}    ${Expected_DashBoard_Menu_Name}  

      Wait Until Element Is Visible    ${SelfService_Menu}   timeout=50s
      ${Actual_Selfservice_Menu}=   Get Text    ${SelfService_Menu}
      Should Be Equal    ${Actual_Selfservice_Menu}            ${Expected_SelfService_Menu_name}


      Wait Until Element Is Visible    ${Organization_Menu}  timeout=50s
      ${Actual_Organization_Menu_name}=   Get Text    ${Organization_Menu}
      Should Be Equal    ${Actual_Organization_Menu_name}    ${Expected_Organization_Menu_Name}
      
      Wait Until Element Is Visible    ${Project_Menu}    timeout=50s
      ${Actual_project_Menu_Name}=     Get Text    ${Project_Menu}
      Should Be Equal    ${Actual_project_Menu_Name}    ${Expected_project_Menu_Name}

     Wait Until Element Is Visible    ${Tiem&Attendence_Menu}
     ${Actual_Time&Attendence_Menu_Name}=    Get Text    ${Tiem&Attendence_Menu}
     Should Be Equal    ${Actual_Time&Attendence_Menu_Name}     ${Expected_Tiem&Attendence_Menu_Name}

