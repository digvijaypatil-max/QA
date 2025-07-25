List1=["Apple","Banana","Grapes","KIwi","Cherry","chiku"]
print(List1)
print(len(List1))
print(type(List1))
print(List1[1])
print(List1[-1])
print(List1[-2])
print(List1 [1:3])
print(List1[:3])
print(List1[2:])

if "Grapes" in List1:
    print("This fruit is present")
else:
    print("This fruit is not present")    

for i in List1[1]:
    print(i)


#Change items

List1[1]="Digvijay"
print(List1)
List1[2:4]=["Mobile","Charger"]
print(List1)
List1[2:4]=["Grapes"]
print(List1)
List1.insert(3,"Muskmelon")
print(List1)
List1.append("Orange")
print(List1)
List2=["A","B","C"]
List1.extend(List2)
print(List1)
List1.remove("Digvijay")
print(List1)
List1.pop(1)
print(List1)
List1.pop()
print(List1)
del List1[4]
print(List1)

List1.sort()
print(List1)
List1.sort(reverse=False)
print(List1)

List3=List1.copy()
print(List3)

indexMusk=List1.index("Apple")
print(indexMusk)

countFruit=List1.count("chiku")
print(countFruit)


Listx=[[1,2,3],[4,5,6],[7,8,9]]
print(Listx[1][0])

List1.sort(reverse=True)
print(List1)