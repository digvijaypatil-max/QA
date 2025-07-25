Name="my name is digvijay 123"
vowels="aeiouAEIOU"
count=0
for vowel in Name:
    if vowel in vowels:
        count=count+1
        print(count,end=" ")
        print(vowel,end=" ")
        