
*** Settings ***
Library    SeleniumLibrary
Library    ../Rshetty/AlertHelper.py
Library    XML
Resource    ../Rshetty/Resource.robot


*** Variables ***
#Browser and URL
${Browser}                 Chrome
${URL}                     https://demo.automationtesting.in/Index.html
${Expected_Title}          Index

#Login Page
${Email}                   //input[@type='text']
${Enter_btn}              //span//a//img[@alt='logo']

#Registration Form
${First_Name_Elemnt}              //input[@placeholder='First Name']
${Last_Name_Elemnt}               //input[@placeholder='Last Name']
${Address_Element}                //textarea[@ng-model="Adress"]
${Register_Email_id_Element}      //input[@type='email']
${Phone_Element}                  //input[@type='tel']
${Male_Radio_Btn_Element}         //input[@value='Male']
${Female_radio_Btn_Element}       //input[@value='FeMale']
${Hobby_radio_Btn_Element}        //input[@value='Hockey']
${Select_File_Element}            //input[@id='imagesrc']
${Password_Element}               //input[@id='firstpassword']
${Retype_Password_Element}        //input[@id='secondpassword']
${Submit_button}                  //button[@id='submitbtn']

#Language and Country
${Language_dropdown_click_Element}     //div[contains(@class,'ui-autocomplete')]
${English}                             //a[text()='Hindi']
${Alloptions}                          //div[@class='col-md-4']//li
${Skill_Label_Element}                 //label[text()='Skills']
${Skills_dropdown_Element}            //select[@id='Skills']
${All_Skills_dropdown}                //select[@id='Skills']/option
${Selected_option}                    //option[@value='XML']
${Country_Label_Element}              //label[text()='Select Country :']
${Country_dropdown_ELement}           //span[contains(@class,'select2-selection')]
${Country_Dropdown_Element_Value}     //option[@value='India']
${Country_All_Option}                 //select[@id='country']/option

#Date Selection
${Year_dropdown_Elements}             //select[@id='yearbox']
${Selected_year}                      //select[@id='yearbox']//option[contains(text(),"2015")]
${Month_dropdown_Element}             //select[@ng-model='monthbox']
${Selected_Month}                     //select[@ng-model='monthbox']//option[contains(text(),"September")]
${Day_dropdown_Element}               //select[@id='daybox']
${Selected_day}                       //select[@id='daybox']//option[contains(text(),"14")]

# Alerts
${Mouse_Hover_Element}                //a[text()='SwitchTo']
${Alert_Options_Element}              //a[text()='Alerts']
${Handle_Alert_Element1}             //a[text()='Alerts']
${Handle_Alert_Element1_1}           //button[@class='btn btn-danger']
${Handle_Alert_Element2}             //a[text()='Alert with OK & Cancel ']
${Handle_Alert_Element2_1}           //button[text()='click the button to display a confirm box ']
${Handle_Alert_Element3}             //a[text()='Alert with Textbox ']
${Handle_Alert_Element3_1}           //button[text()='click the button to demonstrate the prompt box ']
${Handle_Alert_text}                 //p[@id='demo1']

#Window Handling
${Handle_Window_Element}             //a[text()='Windows']
${Handle_Window_1}                   //a[@target='_blank']//button[@class='btn btn-info']
${Handle_Window_2}                   //a[contains(text(),'Open New Seperate Windows')]
${Handle_Window_2_1}                 //div[@id='Seperate']//p/following-sibling::button[text()='click']
${Handle_Window_3}                   //a[contains(text(),'Open Seperate Multiple Windows')]
${Handle_Window_3_1}                 //button[@onclick='multiwindow()']

#Widgets
${Widget_Elements}                   //a[text()='Widgets']

# Accordion
${Accordion_Elements}                                   //a[text()=' Accordion ']
${Accordion_Readability_Elements}                      //b[text()='Collapsible Group 1 - Readability']
${Accordion_Readability_Elements_text_Element}        //div[@id='collapse1']//div[@class='panel-body']
${Accordion_SingleLineCode_Elements}                 //b[text()='Collapsible Group 2 - Single Line Coding']
${Accordion_SingleLineCode_Elements_text_Element}   //div[@id='collapse2']//div[@class='panel-body']
${Accordion_Method_Chaining}                       //b[text()='Collapsible Group 3 - Methhod Chaining']
${Accordion_Method_Chaining_text_Element}         //div[@id='collapse3']//div[@class='panel-body']
${Accordian_Cross_Browser_Testing}               //b[text()='Collapsible Group 4 - Cross Browser Testing']
${Accordian_Cross_Browser_Testing_text_Element}     //div[@id='collapse3']//div[@class='panel-body']

# Frames
${Frame_Element}                            //a[text()='Frames']
${Single_Frame_One}                         //iframe[@id='singleframe']
${Input_in_Single_frame}                    //input[@type='text']
${Multiple_Frame_Element}                   //a[text()='Iframe with in an Iframe']
${Nested_Frame_Element}                     //iframe[@src='MultipleFrames.html']
${Nested_Frame_Element_Inner_Frame}         //iframe[@src='SingleFrame.html']
${Nested_Frame_Input_Element}               //input[@type='text']

# Autocomplete
${Autocomplete_Element}                     //a[text()=' AutoComplete ']
${Search_Autocomplete_Element}              //input[@id='searchbox']
${All_Country_Name}                         //ul[@id='ui-id-1']/li
${Select_Auto_option}                       a[contains(text(),'${All_Country_Name}')]

# Datepicker
${Datepicker_Widget_Element}                //a[text()=' Datepicker ']
${DatePicker_Element}                       //div[@class='col-xs-4']
${Select_Year}                              //td[@data-month='5' and @data-year='2023' and text()='15']
${Select_Day}                               //a[text()='23']
${Month_Element}                            //span[@class='ui-datepicker-month']
${Year_Element}                             //span[@class='ui-datepicker-year']
${Datepicker2_Element}                      //input[@id='datepicker2']
${Date_Month_dropdown}                      //select[@title='Change the month']
${Year_Month_dropdown}                      //select[@title='Change the year']
${date_Datepicker2_Element}                //a[@title='Select Friday, May 21, 2021']


# Interactions
${slider_Webelement}                        //a[text()=' Slider '] 
${Actual_slider_Webelement}                //a[contains(@class,'ui-slider-handle')]
${Interaction_Elements_One}                //a[text()='Interactions '] 
${Drag_and_Drop_Elements_Two}              //a[text()='Drag and Drop '] 
${Static_Drop_Down_Element}                //a[text()='Static '] 
${First_Img_draganddrop_Element}           //img[@id='angular']
${Drop_target_Element}                     //div[@id='droparea']
${Dynamic_Drop_Down_Element}               //a[text()='Dynamic ']
${Resizable_Element}                       //a[text()='Resizable']
${Resizable_Element_Actual}                //div[contains(@class,'ui-resizable-handle')]
${Selectable_mouse_hover_Element}          //a[text()='Selectable ']
${Selectable_Element}                      //a[text()='Serialize '] 
${Radable_selected_Element}                //div[@id='Serialize']//li//b[normalize-space()='Sakinalium - Extent Reports']
${Readable_Attribute_Value}                //p[@id='feedback']//span[@id='result']

#Videos
${Mouse_over_video_Element}                //a[text()='Video']
${youtube_video_Element}                   //a[text()='Youtube']      
${youtube_Video_play_Btn_Element}          //button[@class="ytp-large-play-button ytp-button ytp-large-play-button-red-bg"]
${Youtube_iframe_Element}                  //iframe[@width='720']
${vimeo_video_Element}                     //a[text()='Vimeo']    
${vimeo_video_play_Btn_Element}            //button[contains(@class,'PlayButton_module_playButton')]
${vimeo_iframe_Element}                    //iframe[@id='foo']

#Charts & Dynamic Data
${More_Option_Mouse_over}                  //a[text()='More']
${Charts_Option}                           //a[text()='Charts']
${Dynamic_data_Element}                    //a[text()='Dynamic Data']
${Get_Dynamic_data_Element}                //button[text()='Get Dynamic Data']

#File Download / Upload
${File_download_Element}                   //a[text()='File Download']
${Download_Btn_Element}                    //a[@class='btn btn-primary']
${Enter_Data_Element}                      //textarea[@id='textbox']
${Generate_File1_Element}                  //button[@id='createTxt']
${Download_Generated_file1_Element}        //a[@id='link-to-download']
${pdf_Enter_Element}                       //textarea[@id='pdfbox']
${Generate_File2_Element}                  //button[@id='createPdf']
${Download_Generated_File2}                //a[@id='pdf-link-to-download']
${File_uplaod_Element}                     //a[text()='File Upload']
${Select_file}                             //input[@name='input4[]']
${Uplaod_Selected_File_Element}            //button[@title='Upload selected files']
${Remove_Selected_File_Element}            //button[@title='Clear selected files']

#Progress Bars / Loaders
${Query_Progress_bar}                      //a[text()='JQuery ProgressBar']
${Jquery_StartDownload_Element}           //button[@id='downloadButton']
${Jquery_close_button}                     //button[text()='Close']
${Loader_Element}                          //a[text()='Loader']
${Bootstrap_Run_Btn_Element}               //button[@id='loader']
${Bootstrap_SaveChanges_Element}           //button[text()='Save changes']
${Progress_Bar_Element}                    //a[text()='ProgressBar']
${Download_Progress_Bar_Button}            //button[@id='cricle-btn']


#Modals
${models_Element}                          //a[text()='Modals']
${data_toggle_Element}                     //a[@href="#myModal"]
${saveChanges_data_toggle_Element}         //button[text()='Save changes']
${launch_model_Element}                    //a[@href="#myModalMulti"]
${Launch_model_inner_Element}              //a[@href="#myModal"]
${Save_Changes_inner_Element}              //div[@class='modal-footer']//a[@onclick="history.go(0)"]


#practice-site
${practice_Site_Element}                    //a[text()='Practice Site']
${Filter_By_Price_Element}                  //div[@class='ui-slider-range ui-corner-all ui-widget-header']
${Filter_Btn_Element}                       //button[text()='Filter']
${Shop_Btn_Element}                         //a[text()='Shop']
${AndroidAddToCartElement}                  //a[@data-product_id='169']
${View_Basket_Element}                      //a[text()='View Basket']
${Checkout_Btn}                             //a[@class='checkout-button button alt wc-forward']


#Test-Cases
${Home_Btn_Element}                         //a[text()='Home']
${Products_link}                            //ul[@class='products']/li
${New_Arrivals}                             //a[@class='woocommerce-LoopProduct-link']//img
${Selenium_Ruby_Element}                    //h3[text()='Selenium Ruby']
${Selenium_Ruby_Element_Add_To_Basket_Element}           //button[text()='Add to basket']
${Description_Element}                                    //a[text()='Description']
${prodct_des_Element_text}      //div[@id='tab-description']
${reviews_Element}             //a[text()='Reviews (0)']
${Review_text}                 //div[@id='comments']/p
${Product_Name}                //h1[@class='product_title entry-title']
${Product_Price}               //span[@class='woocommerce-Price-amount amount']
${View_Basket}                 //a[text()='View Basket']
${Coupon_Code_Element_link}          //a[text()='Click here to enter your code']
${Coupon_Code_text_elemnt}           //input[@name='coupon_code']
${Apply_Coupon_Code_Element}         //input[@name='apply_coupon']
${TotalAfterCouponCode_Element}       //tr[@class='order-total']//span[@class='woocommerce-Price-amount amount']
${Add_To_Basket_Thinking_In_Html_Element}           //a[@data-product_id='163']
${View_Basket_Second_Element}                         //a[@data-product_id='163'] /following-sibling::a[@title='View Basket']
${Enter_Coupon_Code}                            //input[@name='coupon_code']    
${Apply_Coupon_Code}         //input[@name='apply_coupon']
${Error_Msg_Code}           //ul[@class='woocommerce-error']/li
${Remove_Items}         //a[@class='remove']
${After_Remove_Items_Element}          //div[@class='woocommerce-message']
${Quanity_Element}                      //input[@type='number']
${Update_Basket_Element}                //input[@name='update_cart']
${After_update_Product_Quantity_amount}       //td[@data-title='Total']//span[contains(@class, 'woocommerce-Price-amount') and contains(text(), '2,000.00')]
${Click_product_Link}                        //a[text()='Selenium Ruby']
${First_name}                          //input[@name='billing_first_name']
${Last_name123}                          //input[@name='billing_last_name']
${Billing_company_name}               //input[@name='billing_company'] 
${Email_Address123}                    //input[@name='billing_email'] 
${Phone_number123}                    //input[@name='billing_phone'] 
${Country_Element}                    //span[text()='India']
${Address123}                       //input[@name='billing_address_1'] 
${Address123}                       //input[@name='billing_address_2'] 
${BillingCity}                       //input[@name='billing_city']
${State_Element}                  //span[@id='select2-chosen-2']
${click_Element_india}                      //div[@id='select2-result-label-2840']/span[@class='select2-match']
${Postcode}                       //input[@name='billing_postcode']
${payment_Meyhod}                           //input[@name='payment_method']
${placeOrder}                          //input[@class='input-radio']/following-sibling::label[@for='payment_method_cod']
${Label_ping}                  //h3[text()='Additional Information']









*** Keywords ***
Open browser to login the Page
     [Arguments]                                       ${Browser_for_Test}
     Open Browser                     ${URL}           ${Browser_for_Test}
     Maximize Browser Window

Verify the title of the page 
      Title Should Be                                   ${Expected_Title}

Enter User Email id
    [Arguments]                       ${User_Email}
    Element Should Be Enabled         ${Email}
    Input Text                        ${Email}          ${User_Email}

Click on Enter 
    Wait Until Element Is Visible            ${Enter_btn}           10s   
    Click Element                            ${Enter_btn}

Enter the First name and last name
    [Arguments]                              ${First_Name}             ${Last_Name}
    Wait Until Element Is Visible            ${First_Name_Elemnt}      10s
    Click Element                            ${First_Name_Elemnt} 
    Input Text                               ${First_Name_Elemnt}      ${First_Name}
    Wait Until Element Is Visible            ${Last_Name_Elemnt}       10s
    Click Element                            ${Last_Name_Elemnt}
    Input Text                               ${Last_Name_Elemnt}       ${Last_Name}
          
Enter Address
      [Arguments]                            ${Address}
      Wait Until Element Is Visible          ${Address_Element}         10s
      Wait Until Element Is Enabled          ${Address_Element}
      Click Element                          ${Address_Element}
      Input Text                             ${Address_Element}          ${Address}
                 
Enter Valid Email id  
     [Arguments]                             ${Register_Email_id}
     Wait Until Element Is Visible           ${Register_Email_id_Element}      10s
     Click Element                           ${Register_Email_id_Element} 
     Input Text                              ${Register_Email_id_Element}      ${Register_Email_id}     

Enter phone_Number
     [Arguments]           ${Phone_Number}
     Click Element         ${Phone_Element}
     Input Text            ${Phone_Element}        ${Phone_Number}

Click on radio button            
      Click Element      ${Male_Radio_Btn_Element}   

Click on hobby radio button
      Click Element      ${Hobby_radio_Btn_Element}
            

click on language dropdown and select english language and print all dropdown values
       Click Element                    ${Language_dropdown_click_Element} 
       Wait Until Element Is Visible    ${English}
       Click Element                    ${English} 
       ${Selected_Text}=  Get WebElements   ${Language_dropdown_click_Element}       
       Log    ${Selected_Text}
       ${counteee}=     Set Variable    0
       ${Elements}=    get WebElements    ${Alloptions}
       FOR   ${xz}    IN          @{Elements}
       ${text}=   Get Text    ${xz}
       Log   ${xz}
       ${counteee}=   Evaluate  ${counteee}+1
       END
       Log  ${counteee}
    
Select Skills from the skill dropdown and return all options from dropdown
     Click Element    ${Skill_Label_Element}
     sleep  10s
     click element      ${Skills_dropdown_Element} 
     sleep  5s
     Click Element   ${Selected_option}  
     ${text_Skill_option}=  Get Text    ${Skills_dropdown_Element}  
     Log    ${text_Skill_option}
     ${Looping_Skill_Option}=  Get WebElements    ${All_Skills_dropdown}
     ${Skill_Count_loop}=    Set Variable     0
     FOR    ${Looping_Skill_Option_temp}    IN         @{Looping_Skill_Option}
      ${text_Looping_Skill_Option_temp}=  get text    ${Looping_Skill_Option_temp}
      Log     ${text_Looping_Skill_Option_temp}
      ${Skill_Count_loop}=   Evaluate      ${Skill_Count_loop}+1
      END
      Log    ${Skill_Count_loop}
Verify choose file and retrive name of the selected file   
       Wait Until Element Is Visible    ${Select_File_Element}      5s
       Choose File      ${Select_File_Element}          D:\\Medius flow\\Medius Test Cases.xlsx
Select Country from country dropdown and return all options from dropdown
      Click Element    ${Country_Label_Element}
      Click Element    //select[@id="countries"]
      click Element    //select[@id='countries']/option[text()='Select Country']
      Wait Until Element Is Visible     ${Country_dropdown_ELement}    10s
      Click Element    ${Country_dropdown_ELement}
      Click Element    ${Country_Dropdown_Element_Value} 
      ${text}=  Get text    ${Country_Dropdown_Element_Value} 
      Log   ${text}
      ${countries_all_drops_value}=  Get WebElements     ${Country_All_Option} 
      ${Count_Of_Dropdown_values}=   Set Variable      0
      FOR   ${Loop_Through_All_drops}   IN   @{countries_all_drops_value}
      ${text_In_Loop}=    Get Text       ${Loop_Through_All_drops}
      Log     ${text_In_Loop}
      ${Count_Of_Dropdown_values}=  Evaluate      ${Count_Of_Dropdown_values}+1
      END
      Log    ${Count_Of_Dropdown_values}

Verify the date of birth dropdowns     
      Click Element    ${Year_dropdown_Elements}
      Click Element    ${Selected_year}
      Click Element    ${Month_dropdown_Element}
      click Element    ${Selected_Month}
      Click Element    ${Day_dropdown_Element}
      click Element     ${Selected_day}

Enter password and retype password
      [Arguments]    ${Enter_Password}               ${Re_Enter_Passwordss}
      Input Text    ${Password_Element}              ${Enter_Password}
      Input Text    ${Retype_Password_Element}       ${Re_Enter_Passwordss}
      sleep   10s
      Click Element      ${Submit_button}

Handle Alertss
     sleep  5s
     Execute Javascript       window.scrollTo(0,0)
     sleep  5s
     Wait Until Element Is Visible    ${Mouse_Hover_Element}    
     Mouse Over         ${Mouse_Hover_Element}
     Click Element      ${Mouse_Hover_Element}
     sleep   5s
     Click Element          ${Handle_Alert_Element1} 
     Click Element          ${Handle_Alert_Element1_1}
     Handle Alert     
     Click Element           ${Handle_Alert_Element2}
     Click Element           ${Handle_Alert_Element2_1}
     Handle Alert
     Click Element            ${Handle_Alert_Element3}  
     Click Element            ${Handle_Alert_Element3_1}
     sleep  5s          
     Input Text Into Alert    Digvijay is doing great         
     ${text}=   get text      ${Handle_Alert_text} 
     Log  ${text}

Handle Windowss   
     sleep    5s
     Mouse Over    ${Mouse_Hover_Element}
     Click Element     ${Mouse_Hover_Element}
     Click Element    ${Handle_Window_Element}
     Wait Until Element Is Visible    ${Handle_Window_1}   10s
     Click Element    ${Handle_Window_1}
     ${Handles}=        Get Window Handles
     Switch Window      ${Handles}[1]
     sleep  2s
     Switch Window      ${Handles}[0]
     sleep   5s
     Click Element    ${Handle_Window_2}
     Wait Until Element Is Visible    ${Handle_Window_2_1}   10s
     Click Element    ${Handle_Window_2_1}
     ${Handles}=        Get Window Handles
     Switch Window      ${Handles}[1]
     Switch Window      ${Handles}[0]
     sleep   5s
     Click Element    ${Handle_Window_3}
     Wait Until Element Is Visible    ${Handle_Window_3_1}   10s
     Click Element    ${Handle_Window_3_1}
      ${Handles}=        Get Window Handles
     Switch Window      ${Handles}[1]
     Switch Window      ${Handles}[0]
     sleep   5s

 Handle Framess   
     sleep    5s
     Mouse Over    ${Mouse_Hover_Element}
     Click Element     ${Mouse_Hover_Element}  
     Click Element    ${Frame_Element}
     sleep   5s
     Select Frame    ${Single_Frame_One} 
     sleep  2s
     Input Text    ${Input_in_Single_frame}    Digvijay patil
     Unselect Frame
     sleep  2s
     Click Element    ${Multiple_Frame_Element}
     sleep  2s
     Select Frame    ${Nested_Frame_Element}
     sleep  2s
     Select Frame    ${Nested_Frame_Element_Inner_Frame}
     sleep  5s
     Input Text    ${Nested_Frame_Input_Element}     Now digvijay is in nested frame
     Unselect Frame
Handle widget
   #Accordian
     Mouse Over          ${Widget_Elements}
     Click Element       ${Accordion_Elements}
     Click Element       ${Accordion_Readability_Elements}
     ${text}=    Get Text    ${Accordion_Readability_Elements_text_Element}
     Log     ${text}
     Sleep  5s
     Click Element          ${Accordion_SingleLineCode_Elements}
     ${text}=    Get Text    ${Accordion_SingleLineCode_Elements_text_Element}
     Log     ${text}
      Sleep  5s
     Click Element          ${Accordion_Method_Chaining}
     ${text}=    Get Text   ${Accordion_Method_Chaining_text_Element}
     Log     ${text}
      Sleep  5s
     Click Element          ${Accordian_Cross_Browser_Testing}
     ${text}=    Get Text   ${Accordian_Cross_Browser_Testing_text_Element}
     Log     ${text}
      Sleep  5s

      #Autocomplete:
        Mouse Over         ${Widget_Elements}
     Click Element      ${Autocomplete_Element}
     Click Element      ${Search_Autocomplete_Element}
       [Arguments]        ${Insert_Item}
    Input Text         ${Search_Autocomplete_Element}    ${Insert_Item}
      Sleep              2s
    ${All_Country_Name}=     Get WebElements    //ul[@id='ui-id-1']/li/div

    FOR  ${item}  IN  @{All_Country_Name}
    ${Text}=  Get Text    ${item}
    Log       ${Text}
    Run Keyword If    '${Text}' == '${Insert_Item}'    Click Element    ${item}
    Exit For Loop If  '${Text}' == '${Insert_Item}'
    END


Verify DatePicker  
    sleep  2s
    Mouse Over          ${Widget_Elements}
    Click Element        ${Datepicker_Widget_Element} 
    sleep  4s
    Click Element        ${DatePicker_Element}
    Wait Until Element Is Visible     ${Select_Day}     10s
    Click Element    ${Select_Day}

    sleep  2s
    Click Element    ${Datepicker2_Element}
    sleep  2s
    Click Element       //select[@class='datepick-month-year' and @title='Change the month']
    Select From List By Label     ${Date_Month_dropdown}     May
    sleep  2s
    click Element    //select[@class='datepick-month-year' and @title='Change the year']
    Select From List By Label     ${Year_Month_dropdown}   2021
    sleep  2s
    click Element   //a[@href='javascript:void(0)' and text()='21']

Handle slider
   Mouse Over          ${Widget_Elements}
   click Element        ${slider_Webelement}
   sleep  2s
   Drag And Drop By Offset     ${Actual_slider_Webelement}     50  0    

Drag and dropss   
      sleep  2s 
      Mouse over              ${Interaction_Elements_One}             
      sleep  2s         
      Mouse over             ${Drag_and_Drop_Elements_Two}     
      sleep  2s       
      Click Element           ${Static_Drop_Down_Element}        
      Drag And Drop    //img[@id='angular']    //div[@id='droparea']
      Drag And Drop    //img[@src='original.png' and @id='mongo']    //div[@id='droparea']   
      Drag And Drop    //img[@src='selenium.png' and @id='node']   //div[@id='droparea'] 
      sleep  5s 
      Mouse over              ${Interaction_Elements_One}             
      sleep  2s          
      Mouse over             ${Drag_and_Drop_Elements_Two}  
      sleep  2s       
      Click Element           ${Dynamic_Drop_Down_Element}   
      Drag And Drop    //img[@id='angular']    //div[@id='droparea']
      Drag And Drop    //img[@src='original.png' and @id='mongo']    //div[@id='droparea']   
      Drag And Drop    //img[@src='selenium.png' and @id='node']   //div[@id='droparea'] 

Selectable options 
      sleep  2s 
      Mouse over              ${Interaction_Elements_One}             
      sleep  2s  
      Click Element           ${Selectable_mouse_hover_Element}   
      sleep   2s
      click Element           ${Selectable_Element}    
      sleep   5s            
      click Element           ${Radable_selected_Element}           
      click Element            ${Readable_Attribute_Value}    
      ${text}=     Get Text      ${Readable_Attribute_Value}   
      Log   ${text}    
Handle Resizable
    Mouse over              ${Interaction_Elements_One} 
    sleep   5s
    Click Element            ${Resizable_Element}
    Drag And Drop By Offset     ${Resizable_Element_Actual}    450    0

Handle Video
   Mouse Over        ${Mouse_over_video_Element}            
   Sleep    2s
   click Element        ${youtube_video_Element}                   
   sleep  2s 
   Select Frame    ${Youtube_iframe_Element}
   sleep  3s
   Click Element   ${youtube_Video_play_Btn_Element}            
   sleep   10s
   Unselect Frame
    Mouse Over       ${Mouse_over_video_Element}            
   Sleep    2s
    Click Element      ${vimeo_video_Element}     
    sleep  2s           
    Select Frame    ${vimeo_iframe_Element}      
   click Element        ${vimeo_video_play_Btn_Element}
   Sleep     10s
   Unselect Frame
   

Verify More options from the Page 
      Mouse Over               ${More_Option_Mouse_over}     
      Sleep  2s    
      Click Element             ${Charts_Option}   
      Mouse Over               ${More_Option_Mouse_over}     
      Sleep  2s                          
      Click Element                ${Dynamic_data_Element}  
      Sleep  2s                
      click Element                ${Get_Dynamic_data_Element} 
      sleep   10s           
      Mouse Over                    ${More_Option_Mouse_over}     
      Sleep  2s
      Click Element                      ${File_download_Element}           
      Sleep      2s
     click Element             ${Download_Btn_Element} 
     sleep   5s              
     Input Text         ${Enter_Data_Element}                       ertyuilkjbvghjbvgj 
     sleep  3s         
     click Element                ${Generate_File1_Element}   
     sleep   5s            
     Click Element                      ${Download_Generated_file1_Element}  
     sleep  5s       
     Input Text                           ${pdf_Enter_Element}                       iuyftyuiujhgfghuiuygfcghui
      sleep  5s
      Click Element                  ${Generate_File2_Element} 
      sleep  3s                 
      Click Element                    ${Download_Generated_File2}          
      sleep  10s     
      Mouse Over                    ${More_Option_Mouse_over}     
      Sleep  2s
      click Element                      ${File_uplaod_Element} 
      sleep  2s                    
      Choose File                ${Select_file}                            D:\\Medius flow\\Medius Test Cases.xlsx
      sleep  10s
      Click Element           ${Uplaod_Selected_File_Element}         
      Sleep  10s 
      click Element                        ${Remove_Selected_File_Element}
      Sleep    10s
      Mouse Over                    ${More_Option_Mouse_over}     
      Sleep  2s
    click Element       ${Query_Progress_bar}     
    sleep  5s               
     click Element    ${Jquery_StartDownload_Element}  
     sleep  20s
     Click Element      ${Jquery_close_button}
     Mouse Over                    ${More_Option_Mouse_over}     
      Sleep  2s
     click Element              ${Loader_Element}                   
     sleep   5s
    click Element         ${Bootstrap_Run_Btn_Element}     
    sleep   15s  
    Wait Until Element Is Visible     ${Bootstrap_SaveChanges_Element}    10s
    click Element        ${Bootstrap_SaveChanges_Element} 
    sleep  2s
     Mouse Over                    ${More_Option_Mouse_over}     
      Sleep  2s

   click Element           ${models_Element}                  
   sleep  5s
     click Element         ${data_toggle_Element}            
     sleep  5s
       Click Element      ${saveChanges_data_toggle_Element} 
       sleep  5s       
     click Element  ${launch_model_Element}                
     sleep  5s
     #Click Element       ${Launch_model_inner_Element} 
       #sleep  5s
     Click Element   ${Save_Changes_inner_Element}  

progrressBarss
      Mouse Over                    ${More_Option_Mouse_over}     
      Sleep  2s
      Click Element         ${Progress_Bar_Element}   
      sleep  5s             
      Click Element                 ${Download_Progress_Bar_Button} 
      sleep  15s
      Close Browser   

Practice page
     Open browser to login the Page              chrome
     Verify the title of the page 
     Enter User Email id                         dr@123
      Click on Enter 
      sleep  2s
      Click Element               ${practice_Site_Element}    
      Sleep  10s
     Click Element               ${practice_Site_Element}    
     Sleep  10s     
     Click Element               ${Shop_Btn_Element}  
     sleep  10s                  
     Drag And Drop By Offset     ${Filter_By_Price_Element}    60   0                  
     Click Element                          ${Filter_Btn_Element}        
     sleep  10s             
     Execute Javascript          window.scrollTo(0,700)
     Click Element    ${AndroidAddToCartElement} 
     Sleep  2s
     Click Element    ${View_Basket_Element}
     sleep  2s
     click Element    ${Checkout_Btn}
 Home Page with three Sliders only     
      Open browser to login the Page              chrome
     Verify the title of the page 
     Enter User Email id                         dr@123
      Click on Enter 
      sleep  2s
      Click Element               ${practice_Site_Element}    
      Sleep  10s     
     Click Element               ${Shop_Btn_Element}  
      sleep  10s 
      Click Element               ${Home_Btn_Element} 
     sleep  10s 
     Execute Javascript         window.scrollTo(0,500)
      ${Slider_Numbers}     Get WebElements    ${Products_link}
     Length Should Be    ${Slider_Numbers}    3


Home page with three Arrivals only
      Sleep    5s
     Open browser to login the Page              chrome
      Verify the title of the page 
      Enter User Email id                         dr@123
      Click on Enter 
     sleep  2s
      Click Element               ${practice_Site_Element}    
      Sleep  10s     
     Click Element               ${Shop_Btn_Element}  
      sleep  10s 
      Click Element               ${Home_Btn_Element} 
      sleep  10s 
      Execute Javascript         window.scrollTo(0,500)
      ${Arrival_number}     Get WebElements    ${New_Arrivals}
      ${count} =  Get Length    ${Arrival_number}
     Should Be Equal As Integers    ${count}   3


Home page - Images in Arrivals should navigate
       Sleep    5s
     Open browser to login the Page              chrome
     Verify the title of the page 
    Enter User Email id                         dr@123
     Click on Enter 
     sleep  2s
      Click Element               ${practice_Site_Element}    
    Sleep  10s     
     Click Element               ${Shop_Btn_Element}  
     sleep  10s 
    Click Element               ${Home_Btn_Element} 
   sleep  10s 
   Execute Javascript         window.scrollTo(0,500)
    ${Arrival_number}     Get WebElements    ${New_Arrivals}
    ${count} =  Get Length    ${Arrival_number}
    Wait Until Element Is Visible    ${New_Arrivals}    10s
    Should Be Equal As Integers    ${count}   3
    Click Element                      ${Selenium_Ruby_Element}  
    sleep  2s
    click Element                   ${Selenium_Ruby_Element_Add_To_Basket_Element} 


Home page - Arrivals-Images-Description    
       Sleep    5s
     Open browser to login the Page              chrome
     Verify the title of the page 
    Enter User Email id                         dr@123
     Click on Enter 
     sleep  2s
      Click Element               ${practice_Site_Element}    
    Sleep  10s     
     Click Element               ${Shop_Btn_Element}  
     sleep  10s 
    Click Element               ${Home_Btn_Element} 
   sleep  10s 
   Execute Javascript         window.scrollTo(0,500)
    ${Arrival_number}     Get WebElements    ${New_Arrivals}
    ${count} =  Get Length    ${Arrival_number}
    Wait Until Element Is Visible    ${New_Arrivals}    10s
    Should Be Equal As Integers    ${count}   3
    Click Element                      ${Selenium_Ruby_Element}  
    sleep  2s
    click Element                   ${Selenium_Ruby_Element_Add_To_Basket_Element} 
    sleep  2s
    Click Element    ${Description_Element} 
    sleep  2s
    ${Text}=  Get Text    ${prodct_des_Element_text}
    Log    ${Text}

Home page - Arrivals-Images-Reviews    
       Sleep    5s
     Open browser to login the Page              chrome
     Verify the title of the page 
    Enter User Email id                         dr@123
     Click on Enter 
     sleep  2s
      Click Element               ${practice_Site_Element}    
    Sleep  10s     
     Click Element               ${Shop_Btn_Element}  
     sleep  10s 
    Click Element               ${Home_Btn_Element} 
   sleep  10s 
   Execute Javascript         window.scrollTo(0,500)
    ${Arrival_number}     Get WebElements    ${New_Arrivals}
    ${count} =  Get Length    ${Arrival_number}
    Wait Until Element Is Visible    ${New_Arrivals}    10s
    Should Be Equal As Integers    ${count}   3
    Click Element                      ${Selenium_Ruby_Element}  
    sleep  2s
    click Element                   ${Selenium_Ruby_Element_Add_To_Basket_Element} 
    sleep  2s
    Click Element    ${Description_Element} 
    sleep  2s
    ${Text}=  Get Text    ${prodct_des_Element_text}
    Log    ${Text}
    Click Element    ${reviews_Element}
    sleep  2s
    ${Text}=    Get Text    ${Review_text} 
    Log      ${Text}


Home page - Arrivals-Images-Add to Basket    
           Sleep    5s
     Open browser to login the Page              chrome
     Verify the title of the page 
    Enter User Email id                         dr@123
     Click on Enter 
     sleep  2s
      Click Element               ${practice_Site_Element}    
    Sleep  10s     
     Click Element               ${Shop_Btn_Element}  
     sleep  10s 
    Click Element               ${Home_Btn_Element} 
   sleep  10s 
   Execute Javascript         window.scrollTo(0,500)
    ${Arrival_number}     Get WebElements    ${New_Arrivals}
    ${count} =  Get Length    ${Arrival_number}
    Wait Until Element Is Visible    ${New_Arrivals}    10s
    Should Be Equal As Integers    ${count}   3
    Click Element                      ${Selenium_Ruby_Element}  
    sleep  2s
    click Element                   ${Selenium_Ruby_Element_Add_To_Basket_Element} 
    sleep  2s
    Element Should Contain    ${Product_Name}    Selenium Ruby
    Element Should Contain    ${Product_Price}    500
    Log   Book title and price displayed

#Test case 8
Home-Arrivals-Add to Basket-Items    
     Sleep    5s
     Open browser to login the Page              chrome
     Verify the title of the page 
    Enter User Email id                         dr@123
     Click on Enter 
     sleep  2s
      Click Element               ${practice_Site_Element}    
    Sleep  10s     
     Click Element               ${Shop_Btn_Element}  
     sleep  10s 
    Click Element               ${Home_Btn_Element} 
   sleep  10s 
   Execute Javascript         window.scrollTo(0,500)
    ${Arrival_number}     Get WebElements    ${New_Arrivals}
    ${count} =  Get Length    ${Arrival_number}
    Wait Until Element Is Visible    ${New_Arrivals}    10s
    Should Be Equal As Integers    ${count}   3
    Click Element                      ${Selenium_Ruby_Element}  
    sleep  2s
    click Element                   ${Selenium_Ruby_Element_Add_To_Basket_Element} 
    sleep  2s
    Element Should Contain    ${Product_Name}    Selenium Ruby
    Element Should Contain    ${Product_Price}    500
    Log   Book title and price displayed
    Click Element    ${View_Basket}
    sleep  2s
    Click Element    ${Checkout_Btn}
    sleep  2s

Home-Arrivals-Add to Basket-Items-Coupon    
      Sleep    5s
     Open browser to login the Page              chrome
     Verify the title of the page 
    Enter User Email id                         dr@123
     Click on Enter 
     sleep  2s
      Click Element               ${practice_Site_Element}    
    Sleep  10s     
     Click Element               ${Shop_Btn_Element}  
     sleep  10s 
    Click Element               ${Home_Btn_Element} 
   sleep  10s 
   Execute Javascript         window.scrollTo(0,500)
    ${Arrival_number}     Get WebElements    ${New_Arrivals}
    ${count} =  Get Length    ${Arrival_number}
    Wait Until Element Is Visible    ${New_Arrivals}    10s
    Should Be Equal As Integers    ${count}   3
    Click Element                      ${Selenium_Ruby_Element}  
    sleep  2s
    click Element                   ${Selenium_Ruby_Element_Add_To_Basket_Element} 
    sleep  2s
    Element Should Contain    ${Product_Name}    Selenium Ruby
    Element Should Contain    ${Product_Price}    500
    Log   Book title and price displayed
    Click Element    ${View_Basket}
    sleep  2s
    Click Element    ${Checkout_Btn}
    sleep  2s
    Click Element   ${Coupon_Code_Element_link}     
     sleep  2s 
     [Arguments]             ${Coupon_codes_texts}   
     Input Text            ${Coupon_Code_text_elemnt}          ${Coupon_codes_texts} 
      sleep  2s
     Click Element       ${Apply_Coupon_Code_Element} 
     sleep  2s
     Element Should Contain    ${TotalAfterCouponCode_Element}     459

Home-Arrivals-Add to Basket-Items-Coupon value<450     
           Sleep    5s
     Open browser to login the Page              chrome
     Verify the title of the page 
    Enter User Email id                         dr@123
     Click on Enter 
     sleep  2s
      Click Element               ${practice_Site_Element}    
    Sleep  10s     
     Click Element               ${Shop_Btn_Element}  
     sleep  10s 
    Click Element               ${Home_Btn_Element} 
   sleep  10s 
   Execute Javascript         window.scrollTo(0,500)
    ${Arrival_number}     Get WebElements    ${New_Arrivals}
    ${count} =  Get Length    ${Arrival_number}
    Wait Until Element Is Visible    ${New_Arrivals}    10s
    Should Be Equal As Integers    ${count}   3
    Click Element         ${Add_To_Basket_Thinking_In_Html_Element}           
    sleep  2s
      Click Element         ${View_Basket_Second_Element}    
                  
                       
       [Arguments]            ${coupon_Code_For_Second_img}                 
       Input Text             ${Enter_Coupon_Code}        ${coupon_Code_For_Second_img}
       Click Element          ${Apply_Coupon_Code}
       sleep   2s
       ${Text}=    Get Text    ${Error_Msg_Code} 
       Log   ${Text}
       Element Should Contain      ${Error_Msg_Code}          ${Text}
        Log    Coupon not applied as expected because book price < ₹450
        Capture Page Screenshot

Home-Arrivals-Add to Basket-Items-Remove book        
          Sleep    5s
     Open browser to login the Page              chrome
    Enter User Email id                         dr@123
     Click on Enter 
     sleep  2s
      Click Element               ${practice_Site_Element}    
    Sleep  10s     
     Click Element               ${Shop_Btn_Element}  
     sleep  10s 
    Click Element               ${Home_Btn_Element} 
   sleep  10s 
   Execute Javascript         window.scrollTo(0,500)
    ${Arrival_number}     Get WebElements    ${New_Arrivals}
    ${count} =  Get Length    ${Arrival_number}
    Wait Until Element Is Visible    ${New_Arrivals}    10s
    Should Be Equal As Integers    ${count}   3
    Click Element                      ${Selenium_Ruby_Element}  
    sleep  2s
    click Element                   ${Selenium_Ruby_Element_Add_To_Basket_Element} 
    sleep  2s
    Element Should Contain    ${Product_Name}    Selenium Ruby
    Element Should Contain    ${Product_Price}    500
    Log   Book title and price displayed
    Click Element    ${View_Basket}
    sleep  2s
     Click Element    ${Remove_Items}
     sleep  2s
     Element Should Contain    ${After_Remove_Items_Element}        Selenium Ruby removed. 
     Log  Book removed successfully from cart


Home-Arrivals-Add to Basket-Items-Add book     
              Sleep    5s
     Open browser to login the Page              chrome
     Verify the title of the page 
    Enter User Email id                         dr@123
     Click on Enter 
     sleep  2s
      Click Element               ${practice_Site_Element}    
    Sleep  10s     
     Click Element               ${Shop_Btn_Element}  
     sleep  10s 
    Click Element               ${Home_Btn_Element} 
   sleep  10s 
   Execute Javascript         window.scrollTo(0,500)
    ${Arrival_number}     Get WebElements    ${New_Arrivals}
    ${count} =  Get Length    ${Arrival_number}
    Wait Until Element Is Visible    ${New_Arrivals}    10s
    Should Be Equal As Integers    ${count}   3
    Click Element                      ${Selenium_Ruby_Element}  
    sleep  2s
    click Element                   ${Selenium_Ruby_Element_Add_To_Basket_Element} 
    sleep  2s
    Element Should Contain    ${Product_Name}    Selenium Ruby
    Element Should Contain    ${Product_Price}    500
    Log   Book title and price displayed
    sleep  2s
    Click Element           ${View_Basket} 
    [Arguments]       ${Amount_of_Quanity}
    Input Text    ${Quanity_Element}    ${Amount_of_Quanity}
    sleep  2s
    Element Should Be Enabled    ${Update_Basket_Element}
    Click Element     ${Update_Basket_Element}


Home-Arrivals-Add to Basket-Items-Check-out-Book Final price    
     Sleep    5s
     Open browser to login the Page              chrome
     Verify the title of the page 
    Enter User Email id                         dr@123
     Click on Enter 
     sleep  2s
      Click Element               ${practice_Site_Element}    
    Sleep  10s     
     Click Element               ${Shop_Btn_Element}  
     sleep  10s 
    Click Element               ${Home_Btn_Element} 
   sleep  10s 
   Execute Javascript         window.scrollTo(0,500)
    ${Arrival_number}     Get WebElements    ${New_Arrivals}
    ${count} =  Get Length    ${Arrival_number}
    Wait Until Element Is Visible    ${New_Arrivals}    10s
    Should Be Equal As Integers    ${count}   3
    Click Element                      ${Selenium_Ruby_Element}  
    sleep  2s
    click Element                   ${Selenium_Ruby_Element_Add_To_Basket_Element} 
    sleep  2s
    Element Should Contain    ${Product_Name}    Selenium Ruby
    Element Should Contain    ${Product_Price}    500
    Log   Book title and price displayed
    sleep  2s
    Click Element           ${View_Basket} 
    sleep  2s
    Click Element    ${Click_product_Link}   

Test case 15. Home-Arrivals-Add to Basket-Items-Check-out-Total & Sub-total condition    
      Sleep    5s
     Open browser to login the Page              chrome
     Verify the title of the page 
    Enter User Email id                         dr@123
     Click on Enter 
     sleep  2s
      Click Element               ${practice_Site_Element}    
    Sleep  10s     
     Click Element               ${Shop_Btn_Element}  
     sleep  10s 
    Click Element               ${Home_Btn_Element} 
   sleep  10s 
   Execute Javascript         window.scrollTo(0,500)
    ${Arrival_number}     Get WebElements    ${New_Arrivals}
    ${count} =  Get Length    ${Arrival_number}
    Wait Until Element Is Visible    ${New_Arrivals}    10s
    Should Be Equal As Integers    ${count}   3
    Click Element                      ${Selenium_Ruby_Element}  
    sleep  2s
    click Element                   ${Selenium_Ruby_Element_Add_To_Basket_Element} 
    sleep  2s
    Capture Page Screenshot
    sleep   2s

18. Home-Arrivals-Add to Basket-Items-Check-out-Payment Gateway-Place order	 
    Sleep    5s
     Open browser to login the Page              chrome
     Verify the title of the page 
    Enter User Email id                         dr@123
     Click on Enter 
     sleep  2s
      Click Element               ${practice_Site_Element}    
    Sleep  10s     
     Click Element               ${Shop_Btn_Element}  
     sleep  10s 
    Click Element               ${Home_Btn_Element} 
   sleep  10s 
   Execute Javascript         window.scrollTo(0,500)
    ${Arrival_number}     Get WebElements    ${New_Arrivals}
    ${count} =  Get Length    ${Arrival_number}
    Wait Until Element Is Visible    ${New_Arrivals}    10s
    Should Be Equal As Integers    ${count}   3
    Click Element                      ${Selenium_Ruby_Element}  
    sleep  2s
    click Element                   ${Selenium_Ruby_Element_Add_To_Basket_Element} 
    sleep  2s
    Capture Page Screenshot
    sleep   2s
    Click Element           ${View_Basket}
    sleep   2s
    Click Element    ${Checkout_Btn}
    sleep   2s
    [Arguments]   ${Fname}     ${lastname}     ${cmpnyname}     ${EmailAddress}      ${phone}       ${Addresss1}        ${Addresss2}        ${billingcty}            ${Postcodes}
    
    Input Text    ${First_name}         ${Fname}
    Input Text    ${Last_name123}        ${lastname}
    Input Text    ${Billing_company_name}    ${cmpnyname}
    Input Text    ${Email_Address123}    ${EmailAddress}
    Input Text    ${Phone_number123}    ${phone}
    Wait Until Element Is Visible    ${countryelement}    10s
    #Click Element    ${countryelement}
   # Wait Until Element Is Visible    ${Label_ping} 
    #click Element     ${Label_ping}   
    Input Text    ${Address123}    ${Addresss1} 
    Input Text    ${Address123}    ${Addresss2}
    Input Text    ${BillingCity}    ${billingcty}
    #Click Element    ${StateElement}
    sleep  2s
    #Click Element    ${click_Element_india}    
    Input Text    ${Postcode}    ${Postcodes}
       Execute Javascript         window.scrollTo(0,500)
   Click Element           ${payment_Meyhod}     
   Wait Until Element Is Visible    ${placeOrder}     10s                      
   Click Element                         ${placeOrder} 
   
  
   
       
    
        


      
     
          
     



    







