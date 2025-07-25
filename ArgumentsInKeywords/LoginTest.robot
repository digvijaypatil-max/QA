*** Settings ***
Library   SeleniumLibrary
Resource  Resource.robot


*** Test Cases ***
Valid Login Test
    Open browser to login the Page   Chrome
    Verify the title of the page 
    Input Username and Password     standard_user    secret_sauce
    click on login button
    sleep  2s
    Close Browser


InvalidvLogin Test
    Open browser to login the Page    firefox
    Verify the title of the page 
    Input Username and Password       standard_user2    secret_sauce4
    click on login button
    sleep  2s
    Close Browser


valid Username but invalid password LoginTest
    Open browser to login the Page    Chrome
    Verify the title of the page 
    Input Username and Password       standard_user    secret_sauce47
    click on login button
    sleep  2s
    Close Browser    

invalid Username but valid password LoginTest
    Open browser to login the Page    Chrome
    Verify the title of the page 
    Input Username and Password       standard_user34    secret_sauce
    click on login button
    sleep  2s
    Close Browser   

valid Username and valid password but lenght of username is high LoginTest
    Open browser to login the Page    Chrome
    Verify the title of the page 
    Input Username and Password       standard_user33333333333333333333333333333333333333333    secret_sauce47
    click on login button
    sleep  2s
    Close Browser          