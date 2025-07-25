*** Settings ***
Library   SeleniumLibrary
Resource  Resource.robot

*** Variables ***
${Drop_down_Element}    //select[@name='dropdown-class-example']

                       

*** Test Cases ***
Handle the dropdown
    Launch Browser and Navigate to Website
    Click Element       ${Drop_down_Element}
    Select From List By Index    ${Drop_down_Element}     3
    ${Get_options}=   Get List Items    ${Drop_down_Element}
    Log    ${Get_options}
    sleep  2s
 
    

    