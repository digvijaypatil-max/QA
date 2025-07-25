*** Settings ***
Library   SeleniumLibrary
Resource    Resource.robot


*** Test Cases ***
Valid Login page,User register form,Alerts,Frames 
    Open browser to login the Page              chrome
    Verify the title of the page 
    Enter User Email id                         dr@123
    Click on Enter 
    sleep  2s
    Enter the First name and last name          sham     patil
    Enter Address                              fc road,pune
    Enter Valid Email id                        dr@123
    Enter phone_Number                           8765437654
    Click on radio button
    Click on hobby radio button
    click on language dropdown and select english language and print all dropdown values
    Select Skills from the skill dropdown and return all options from dropdown
    Verify choose file and retrive name of the selected file
    Select Country from country dropdown and return all options from dropdown
    Verify the date of birth dropdowns 
    Enter password and retype password          12345      12345
    Handle Alertss
    Handle Windowss 
    Handle Framess  
    Handle widget                               Slovenia, American Samoa
    Verify DatePicker
    Handle slider
    Drag and dropss
    Selectable options
    Handle Resizable
    Handle Video
    Verify More options from the Page 
    progrressBarss
    Practice page
   
    


