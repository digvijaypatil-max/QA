List=[1,2,3,4,5,-9,-7,-4,-8,-2]
count=0
for i in List:
  if i <= 0:
    count=count+1
    print(i,end=" ")
  
print(f"In this list total negative numbers is : {count}")  
    