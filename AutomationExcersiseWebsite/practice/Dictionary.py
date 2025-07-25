PersonalDetails= {"Name" :  "Digvijay",
                 "City" :  "Pune" ,
                "MobNo" :  56784567,
                 "salary":  10000000.00,
                  "LikedColors":["Red","yellow","Green"] }

print(PersonalDetails)

print(PersonalDetails["Name"])

print(len(PersonalDetails))

print(type(PersonalDetails))

for details in PersonalDetails.values():
    print(details)

for details in PersonalDetails.items():
    print(details)    

PersonalDetails["Status"] = "Married"
print(PersonalDetails)


PersonalDetails.update({"status":"single"})
print(PersonalDetails)


PersonalDetails.popitem()
print(PersonalDetails)

for x in PersonalDetails:
    print(PersonalDetails[x])

for x in PersonalDetails.values():
    print(PersonalDetails)    

for x in PersonalDetails.items():
    print(PersonalDetails)     