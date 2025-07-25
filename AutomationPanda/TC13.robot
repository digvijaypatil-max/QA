*** Settings ***
Library      SeleniumLibrary
Resource     Resource.robot

*** Variables ***
${dropdown}              //input[@id='comboBox']
${option1}              //div[@class='option'][1]
${alloptions}          //div[@id='dropdown']//div[@class='option']
${visible_dropdown_text}    //input[@id='comboBox']

*** Test Cases ***
Handle dropdown
    Launch Browser and Navigate to Website
    Execute Javascript    window.scrollTo(0,1900)
  
    Wait Until Element Is Visible    ${dropdown}    10s
    Click Element    ${dropdown} 
    
    Wait Until Element Is Visible    ${option1}    5s
    Click Element    ${option1}
    ${selected}=    Get Element Attribute    ${visible_dropdown_text}    value
    Log    Selected value from this dropdown:${selected}

    Click Element    ${dropdown}

    Wait Until Element Is Visible    ${alloptions}    5s
    ${all_items}=    Get WebElements    ${alloptions}
    FOR    ${item}    IN    @{all_items}
        ${text}=    Get Text    ${item}
        Log    These values are present under this dropdown: ${text}
    END
