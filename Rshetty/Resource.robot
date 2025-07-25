*** Settings ***
Library   SeleniumLibrary
Resource  Resource.robot



*** Variables ***
${Browser}                                      Chrome
${URL}                                          https://rahulshettyacademy.com/AutomationPractice/
${Expected_Title}                               Practice Page 
${Radio_Btn}                                    //label[@for='radio2']//input[@name='radioButton']
${Suggestion_class}                             //input[@class='inputs ui-autocomplete-input']
${select_option}                               //li[@class='ui-menu-item']//div[text()="American Samoa"]
${Drop_down_Element}                          //select[@name='dropdown-class-example']
${Checkbox_Expample}                         //div[@id='checkbox-example']//label[@for='bmw']
${Switch_window}                            //button[@id='openwindow']
${Courses}                                 //li[@class='nav-item']//a[text()='Courses']
${Switch_tab}                             //a[@class='btn-style class1 class2']
${Courses}                               //li[@class='nav-item']//a[text()='Courses']
${All_Links}                             xpath=//a
${Handle_alerts}                        //input[@name='enter-name']
${Alert_btn}                            //input[@value='Alert']
${Confirm}                              //input[@value='Confirm']
${Row_count}                           //table[@class='table-display']//tr
${Column_count}                       //table[@class='table-display']//th
${data}                              //table[@class='table-display']//td[contains(text(),"Selenium Webdriver with Java Basics + Advanced + Interview Guide")]
${Web_table_rows}                   //div[@class='tableFixHead']//table[@id='product']//tr
${Web_table_column}                //div[@class='tableFixHead']//table[@id='product']//th
${Amount_table}                   //div[@class='tableFixHead']//table[@id='product']//tr//td[4]  
${Mouse_hover}                   //button[@id='mousehover']
${Top}                          //a[text()='Top']
${Reload}                      //a[text()='Reload']  
${Handle_frame}                //iframe[@name='iframe-name']
#${More_Mouse_hover}           //i[@class='glyphicon glyphicon-chevron-down'][1]
#${About_Us}                  //ul//li//a[text()='About us'][1]
${Blogs}                     //a[text()='Blog'][1] 
${select_Option1}           //input[@name='checkBoxOption1']                  



*** Keywords ***
Launch Browser and Navigate to Website 
   Open Browser   ${URL}   Chrome
   Maximize Browser Window
Verify the title of the webpage
      ${Actual_Title}=    Get Title
    Log   ${Actual_Title}
    IF   '${Actual_Title} == ${Expected_Title}'
    Log    Both titles is same
    ELSE
    Log    Both titles is not same
    END
Verify the robot button
    Launch Browser and Navigate to Website
    Click Element    ${Radio_Btn}
    sleep    2s    
Verify the suggestion class
    Launch Browser and Navigate to Website
    Wait Until Element Is Visible    ${Suggestion_class}
    Input Text    ${Suggestion_class}    America
    Wait Until Element Is Visible    ${select_option}   10s
    Click Element    ${select_option} 
    sleep    5s    
Handle the dropdown
    Launch Browser and Navigate to Website
    Click Element       ${select_Option1}
    Select From List By Index    ${Drop_down_Element}     3
    ${Get_options}=   Get List Items    ${Drop_down_Element}
    Log    ${Get_options}
    sleep  2s 
Handle checkbox
    Launch Browser and Navigate to Website
    Click Element    ${Checkbox_Expample}
    ${text}=  Get Text    ${Checkbox_Expample}
    Log   ${text}
    ${text2}=   Get Element Attribute    ${Checkbox_Expample}   for
    Log   ${text2}
Handle windows
    Launch Browser and Navigate to Website
    Click Element    ${Switch_window}
    Wait Until Element Is Visible     ${Switch_window}
    ${Handles}=     Get Window Handles
    Switch Window          ${Handles}[1]
    Click Element      ${Courses}
    Switch Window       ${Handles}[0]
    sleep  2s
Handle tab
    Launch Browser and Navigate to Website
    Click Element    ${Switch_tab} 
    Wait Until Element Is Visible     ${Switch_tab} 
    ${Handles}=     Get Window Handles
    Switch Window          ${Handles}[1]
    Wait Until Element Is Visible    ${Courses}
    Click Element      ${Courses}
    Switch Window       ${Handles}[0]
    sleep  2s    
printing all links from the webpage
    Launch Browser and Navigate to Website
    Wait Until Element Is Visible    ${All_Links}       120s
    ${Links_count}  Get Element Count    ${All_Links}
    Log   ${Links_count}
    ${links}=  Get WebElements    ${All_Links}
    FOR  ${print_Links}     IN   @{links}
    ${text}=  Get Text       ${print_Links} 
    Log      ${text}   
    END
Handle alerts
    Launch Browser and Navigate to Website
    Input Text    ${Handle_alerts}    Digvijay
    Click Button    ${Alert_btn}
    Handle Alert

    Sleep   2s

    Input Text    ${Handle_alerts}    Digvijay patil
    Click Button    ${Confirm}
    Handle Alert
Handle tables
    Launch Browser and Navigate to Website
    Execute Javascript        window.scrollTo(0,500)
    #Row count
    ${Count_Rows}     Get Element Count    ${Row_count}
    Log     ${Count_Rows}
    #Column count
    ${Count_Column}     Get Element Count    ${Column_count}
    Log     ${Count_Column}
    #get text
    ${text}=  Get Text      ${data}
    log   ${text}

    #counting all data with rows
    ${counting}=  Get WebElements    ${Row_count} 
    FOR  ${all-data}   IN   @{counting}
    ${text1}=  Get Text    ${all-data}
    Log    ${text1}
    END

    #counting all data with column
    ${counting_Column}=  Get WebElements    ${Column_count} 
    FOR  ${all-data1}   IN    @{counting_Column}
    ${text2}=  Get Text    ${all-data1}
    Log    ${text2}
    END    
Handle Web Table with Fixed header
    Launch Browser and Navigate to Website
    Execute Javascript       window.scrollTo(0,600)
    #get row count
    ${Row_count}     Get Element Count    ${Web_table_rows}  
    Log    ${Row_count}
    #get column count
    ${Column_count}     Get Element Count    ${Web_table_column}  
    Log    ${Column_count} 

    #iterate rows of the table
    ${for_loop_iterate}=    Get WebElements    ${Web_table_rows}
    FOR  ${items}   IN      @{for_loop_iterate}
    ${text}=   Get Text    ${items}
    Log    ${text}
    END

      #counting all data with column
    ${counting_Column}=  Get WebElements    ${Web_table_column} 
    
    FOR  ${all-data1}   IN    @{counting_Column}
    ${text2}=  Get Text    ${all-data1}
    Log    ${text2}
    END
Mouse hover
    Launch Browser and Navigate to Website
    Execute Javascript       window.scrollTo(0,1000)
    Mouse Over    ${Mouse_hover}
    Wait Until Element Is Visible    ${Mouse_hover}     10s
    Click Element     ${top}
    sleep   2s
    Execute Javascript       window.scrollTo(0,1000)
    Mouse Over    ${Mouse_hover}
    Wait Until Element Is Visible    ${Mouse_hover}     10s
    Wait Until Element Is Visible    ${Reload}      10s
    Click Element    ${Reload}    
Handle frames
    Launch Browser and Navigate to Website
    Execute Javascript       window.scrollTo(0,1600)
    Select Frame    ${Handle_frame}
    Execute Javascript       window.scrollTo(0,1800)
    Click Element    ${Blogs}
    sleep  2s
    Unselect Frame
    sleep  2s    


        

        

           
    
      



