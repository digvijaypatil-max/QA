*** Settings ***
Library          SeleniumLibrary
Resource         Resource.robot
Test Template    Test username and password with different username and password


*** Test Cases ***
Valid credentials                                       Digvijay        dp123
Invalid credentials                                      dr              12345
Boundary value                                           34567dfghj       2345678909876543245678909876543456789087654
Special Character                                        @#$%^#$%^&UI      ((*&^%$#$%^&*(*&^%$%^&*))
Only Numbers in username as well as in password          12345678765432345       234567898765432345678
With Special char and Numbers and chars                  DigvijayPatil        Dig*9pat$$
