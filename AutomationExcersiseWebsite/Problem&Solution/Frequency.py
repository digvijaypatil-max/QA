Name=(input("Enter the name:"))
freq={}
for i in Name:
    if i not in freq:
        freq[i]=1
    else:
        freq[i]+=1    
print(freq)        

