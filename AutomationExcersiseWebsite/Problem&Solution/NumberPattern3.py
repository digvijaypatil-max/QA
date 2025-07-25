n=1
for i in range (n,6,1):
    for j in range(6-i):
        print(" ",end=" ")
    for k in range(i):
        print(k+1,end=" ")
    print()        