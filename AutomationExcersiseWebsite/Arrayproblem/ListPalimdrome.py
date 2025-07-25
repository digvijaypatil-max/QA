listOfChar=["M","A","D","A","M"]
listOfInt=[1,2,3,2,1]
if listOfChar == listOfChar[::-1] and listOfInt == listOfInt[::-1] :
    print(f"The below list of char and int is palimdrome")
else:
    print(f"The below list of char and int is not palimdrome")    