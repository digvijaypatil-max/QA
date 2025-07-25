n=7
for i in range(0,n,1):
    for j in range(n-i-1):
        print(" ",end=" ")
    for k in range(2*i+1):
        print("*",end=" ")    
    print()
for L in range(n-2,-1,-1):
    for m in range(n-L-1):
        print(" ",end=" ")
    for N in range(2*L+1):
        print("*",end=" ")  
    print()       