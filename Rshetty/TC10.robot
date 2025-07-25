*** Settings ***
Library     SeleniumLibrary
Resource    Resource.robot

*** Variables ***
${Row_count}             //table[@class='table-display']//tr
${Column_count}         //table[@class='table-display']//th
${data}                 //table[@class='table-display']//td[contains(text(),"Selenium Webdriver with Java Basics + Advanced + Interview Guide")]
  


*** Test Cases ***
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