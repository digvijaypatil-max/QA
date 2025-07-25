*** Settings ***
Library   SeleniumLibrary
Resource  Resource.robot


*** Variables ***
${Expected_Title}        Automation Testing Practice

*** Test Cases ***
Verify the title of the page
    Launch Browser and Navigate to Website
    ${Actual_Title}=    Get Title    
    Log   the page title is:${Actual_Title}

    IF    '${Expected_Title} == ${Actual_Title}'
        Log   The actual and expected title is matching 
    ELSE
        Log   The actual and expected title is not matching
    END
