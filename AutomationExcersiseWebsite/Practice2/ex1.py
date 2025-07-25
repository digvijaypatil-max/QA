n=7
for i in range(0,n,1):
    for j in range(n-i-1):
        print(" ",end=" ")
    for k in range (2*i+1): 
        print("*",end=" ")   
    print() 

for x in range(n-2,-1,-1):
    for y in range(n-x+-1):
        print(" ",end=" ")
    for z in range (2*x+1):
        print("*",end=" ")
    print()      



Name=(input("Enter the name: "))
Vowels=("aeiouAEIOU")
count=0
for i in Name:
    if i in Vowels:
        count=count+1
    print(f"the vowel present in the word is {i} and count of that vowels {count}")



    




