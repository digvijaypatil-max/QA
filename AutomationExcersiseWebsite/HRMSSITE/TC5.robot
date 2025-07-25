*** Settings ***
Library   SeleniumLibrary
Resource  Resource.robot

*** Variables ***
${SelfService_Menu}                       //b[text()="Self Service"]
${My_details_Menu}                        //a[text()="My Details"]
${Education_Menu}                         //a[text()='Education']
${Add_Button}                             //input[@title='Add']
${Education_Frame}                        //iframe[@id='educationdetailsCont']
${Select_Education_Level_Dropdown}        //div[@id='s2id_educationlevel']
${Select_BCA_Dropdown_Value}              //div[@class='select2-result-label']//span[text()="BCA"] 
${Instituation_Name}                       //input[@name='institution_name']
${Course_Name}                            //input[@name='course']
${From_date}                              //input[@id='from_date']/following-sibling::img[@class='ui-datepicker-trigger']
${Selct_Month_Dropdown_Value}             //select[@class='ui-datepicker-month']
${Select_Year_Dropdown_Value}             //select[@class='ui-datepicker-year']
${Select_date}                            //td[@data-handler='selectDay']/a[text()="18"]
${To_Date}                                //input[@name='to_date']
${Select_ToDate_Month_Dropdown_Value}     //select[@class='ui-datepicker-month']
${Select_ToDate_Year_Dropdown_Value}      //select[@class='ui-datepicker-year']
${Select_To_Date}                         //td[@data-handler='selectDay']/a[text()="15"]
${Percentage}                             //input[@name='percentage']

*** Test Cases ***
Add education Details
    Launch Browser and Navigate to Website
    ${all_handles}=    Get Window Handles
   
    Wait Until Element Is Visible     ${SelfService_Menu}         timeout=50s
    Click Element                     ${SelfService_Menu}
    Click Element                     ${My_details_Menu}
    Wait Until Element Is Visible     ${Education_Menu}           timeout=100s
    Execute JavaScript                window.scrollTo(0, document.body.scrollHeight)
    Click Element                     ${Education_Menu}
    Click Button                      ${Add_Button}
    Wait Until Element Is Visible     ${Education_Frame}    timeout=20s
    Select Frame                      ${Education_Frame}
    Wait Until Element Is Visible    ${Select_Education_Level_Dropdown}        timeout=50s
    Click Element                    ${Select_Education_Level_Dropdown}     
    Click Element                    ${Select_BCA_Dropdown_Value}
    Input Text                      ${Instituation_Name}                    Shau collage
    Input Text                       ${Course_Name}                          Computer Application          
    Click Element                     ${From_date}  
    Select From List By Index         ${Selct_Month_Dropdown_Value}  5  
    Select From List By Value         ${Select_Year_Dropdown_Value}  2018
    Wait Until Element Is Visible     ${Select_date}    timeout=20s
    Click Element                     ${Select_date}  
    click Element                     ${From_date}                    
    Click Element                     ${To_Date}                     
    Select From List By Index         ${Selct_Month_Dropdown_Value}  5  
    Select From List By Value         ${Select_Year_Dropdown_Value}  2021 
    Wait Until Element Is Visible     ${Select_date}    timeout=20s
    Click Element                     ${Select_date} 
    click Element                     ${To_Date}                              
     Input Text                       ${Percentage}                           78%         

    
  
