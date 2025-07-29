*** Settings ***
Library   SeleniumLibrary
Library    String


*** Variables ***
${Url}                  https://testautomationpractice.blogspot.com/
${Url2}                 https://www.flipkart.com/
${Browser}             chrome
${Input_Box}           //input[@class='wikipedia-search-input']
${search_Btn}           //input[@class='wikipedia-search-button']
${Search_Result}       //div[@class='wikipedia-search-results-header']

*** Keywords ***
open Browser and Enter google
     Open Browser    ${Url}           ${Browser}
     Maximize Browser Window
     Input Text    ${Input_Box}     google.com
     Click Element    ${search_Btn} 
     Wait Until Element Is Visible    ${Search_Result}      15s
     Wait Until Page Contains Element    ${Search_Result}    10s

     ${All_Links}=   Get WebElements    ${Search_Result}

     ${counts_Of_Searches}=  Get Length    ${All_Links}
     Log   ${counts_Of_Searches}


     FOR        ${All_Text_result}   IN   @{All_Links}
                ${Text}=   Get Text     ${All_Text_result}
                 Log  ${Text}
                 ${counts_Of_Searches}=  Evaluate     ${counts_Of_Searches}+1
     END
     Log   ${counts_Of_Searches}
     Run Keyword Unless    ${counts_Of_Searches} > 0    Fail    No search results found!
     click link   Google.com  


Count how mant links are preesent in webpage 
        Open Browser    ${Url2}           ${Browser}
        ${Text}=    Get Length    //a
        Log   ${Text}
          
     

