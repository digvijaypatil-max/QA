*** Settings ***
Library      SeleniumLibrary
Resource     Resource.robot


*** Variables ***
${wikipedia_input_box}          //input[@class='wikipedia-search-input']
${wikipedia_input_button}      //input[@class='wikipedia-search-button']            
${result}                      //div[@class='wikipedia-search-results-header']

*** Test Cases ***
Verify the tabs on the web page
    Launch Browser and Navigate to Website
    Input Text      ${wikipedia_input_box}               google.com
    Click Button    ${wikipedia_input_button}            
    Wait Until Element Is Visible    ${result}         20s
    Wait Until Page Contains Element    ${result}    timeout=10s
       
    @{results}=    Get WebElements    ${result} 
    FOR    ${item}    IN    @{results}
           ${text}=    Get Text    ${item}
           Log          ${text}

    END

    Click Link    Google.com