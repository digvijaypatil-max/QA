*** Settings ***
Library      SeleniumLibrary
Resource     Resource.robot

*** Variables ***
${laptopLinks1}       //h4[text()='Laptop Links']/following-sibling::a


*** Test Cases ***
Handling Links
    Launch Browser and Navigate to Website
    Execute Javascript    window.scrollTo(0,2000)

    ${laptopLinks2}=    Get WebElements    ${laptopLinks1}   
    FOR     ${allLaptops}     IN     @{laptopLinks2}
        ${text}=    Get Text    ${allLaptops}
        Log    These all laptops present under that list: ${text}
    END
