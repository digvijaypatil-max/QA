*** Settings ***
Library   SeleniumLibrary
Library    DateTime
Library    String
Resource  Resource.robot


*** Variables ***
${user_name}                                 //div[@class='form-group']//label[@for='textbox']/following-sibling::input[@id='name']
${user_email}                               //div[@class='form-group']//label[@for='textbox']/following-sibling::input[@id='email']
${user_phone}                              //div[@class='form-group']//label[@for='textbox']/following-sibling::input[@id='phone']
${user_address}                           //div[@class='form-group']//label[@for='textarea']/following-sibling::textarea[@id='textarea']
${user_Gender}                           //div[@class='form-check form-check-inline']/input[@id='male']
${days}                                 //div[@class='form-check form-check-inline']//input[@id='tuesday']/following-sibling::label[@class='form-check-label']
${country}                             //select[@id='country']
${country_name}                       //select[@id='country']//option[@value='france']
${colors}                            //select[@class='form-control']//option[@value='blue']/following-sibling::option[@value='yellow'] 
${animal_list}                      //select[@class='form-control']//option[@value='cheetah']/following-sibling::option[@value='lion']
${datepicker1}                      //input[@id='datepicker']
${date1}                           //a[contains(@data-date, '17')]
${datepicker2}                     //input[@id='txtDate']
${date2}                           //a[contains(@data-date, '23')]
${datepicker3_1}                    //input[@id='start-date']
${datepicker3_2}                  //input[@id='end-date']
${submit_btn}                     //button[@class='submit-btn']
${days_difference}               //div[text()='You selected a range of 400 days.']
${chose file}                    //input[@id='singleFileInput']
${upload_single_file}           //button[text()='Upload Single File']
${content}                     //p[contains(text(),'Single file selected: Medius Test Cases.xlsx, ')]

${start_date}                  09-07-2025
${end_date}                    09-08-2025




*** Test Cases ***
Verify the GUI Details
    Launch Browser and Navigate to Website
    Input Text                                     ${user_name}                    Digvijay patil
    Input Text                                     ${user_email}                   Digvijay.patil@gmail.com
    Input Text                                     ${user_phone}                   8275178612
    Input Text                                     ${user_address}                 ABC chowk , pune
    Click Element                                  ${user_Gender}
    Click Element                                  ${days}
    Click Element                                  ${country_name}    
    Click Element                                  ${colors}
    Click Element                                  ${animal_list}
    Click Element                                  ${datepicker1}
    Wait Until Element Is Visible                  ${date1}                           120s 
    Click Element                                  ${date1}
    Click Element                                  ${datepicker2}
    Wait Until Element Is Visible                  ${date2}                           120s 
    Click Element                                  ${date2}
    Input Text                                     ${datepicker3_1}                     ${start_date}
    Input Text                                     ${datepicker3_2}                     ${end_date}
    Click Element                                  ${submit_btn}
    
    # Convert date strings to date objects
    ${Actual_StartDate} =     Convert Date    ${start_date}    date_format=%d-%m-%Y
    ${Actual_EndDate} =       Convert Date    ${end_date}      date_format=%d-%m-%Y
    
    # Calculate difference in days
    ${diff}=                 Subtract Date From Date    ${Actual_EndDate}    ${Actual_StartDate}    result_format=days
    Log    Difference in days: ${diff}
    
    # Get actual displayed difference
    Wait Until Element Is Visible  //div[@id='result']  10s
    ${actual_difference}=    Get Text    //div[@id='result']
    Log    actual difference is: ${actual_difference}
    
    # Verify the difference matches
    Should Contain    ${actual_difference}    ${diff}
    Log    The difference between start day and end day is correct
    Execute JavaScript                             window.scrollTo(0, 500) 
    Wait Until Element Is Visible                  ${chose file}
    Choose File                                    ${chose file}                      D:\\Medius flow\\Medius Test Cases.xlsx     
    Wait Until Element Is Visible                  ${upload_single_file}              50s
    Click Element                                  ${upload_single_file}
    Wait Until Element Is Visible                  ${content}                         50s
    Element Should Contain                         ${content}                         Medius Test Cases.xlsx, 

 


