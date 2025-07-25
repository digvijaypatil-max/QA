Name="my name is digvijay 123"
print(Name[3])
print(Name[-1])
print(len(Name))
print(Name[1:3])
print(Name[1:20:2])
print(Name.capitalize())
print(Name.title())
print(Name.upper())
print(Name.lower())
print(Name.find("a"))
print(Name.count("a"))
print(Name.count("i"))
print(Name.index("i"))
print(Name.replace("digvijay","Shital"))
print(Name.split())
print(Name.isnumeric())
print(Name.isupper())
print(Name.islower())
print(Name.isalpha())

vowels="aeiouAEIOU"

for vowel in Name:
    if vowel in vowels:
        print(vowel)



vowels="aeiouAEIOU"


count=0
for vowel in Name:
    if vowel in vowels:
        count=count+1
        print()






Name1=input("Enter the string: ")
if Name1==Name1[::-1]:
    print("The given string is palimdrome")
else:
    print("The given string is not palimdrome")           








