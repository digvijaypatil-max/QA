def firstFunction():
    print("This is a first function")
firstFunction()


def secondFunction(fname,lastname):
    print(f"The Employee first name is {fname} and last name is {lastname} " )
secondFunction("Digvijay","Patil")  


def employeeInfo(empFirstName,empLastName,contactNum,empSalary,empAddress,empband):
    print(f"The firstname is {empFirstName} lastname is {empLastName} , the contactnumber is {contactNum} , and salary of employee is {empSalary} ,and address is {empAddress} and band of employee is {empband}")
employeeInfo("Digvijay","Patil",12345,2000000,"Pune","A1")    


def employeeNames(*EmpName):
    print(f"This employee is having 5000000 salary and name of that employee is "+EmpName[2])

employeeNames("Amar","Rutu","Digvijay","John")    


def animalNames(name="Elephant"):
    print(f"The names of bird is {name}")
animalNames("Lion")
animalNames("Tiger")
animalNames()
animalNames("deer")
animalNames("Cow")    


def additionOperation(Values):
    return 10 * Values

print(additionOperation(10))
print(additionOperation(20))
print(additionOperation(30))
print(additionOperation(40))
print(additionOperation(50))
print(additionOperation(60))
print(additionOperation(70))    
print(additionOperation(80))
print(additionOperation(90))
print(additionOperation(100))
