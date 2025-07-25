*** Settings ***
Library     SeleniumLibrary
Resource    Resource.robot

*** Variables ***
${Web_table_rows}      //div[@class='tableFixHead']//table[@id='product']//tr
${Web_table_column}    //div[@class='tableFixHead']//table[@id='product']//th
${Amount_table}        //div[@class='tableFixHead']//table[@id='product']//tr//td[4]

*** Test Cases ***
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


