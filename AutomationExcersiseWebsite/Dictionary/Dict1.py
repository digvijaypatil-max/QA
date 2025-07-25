Fruits={"Apple":1200,
        "Orange":990,
        "Kiwi":340,
       "Grapes":500}
print(len(Fruits))
for i in Fruits:
     print(i)


Fruits.get("Apple")     

print(Fruits.items())
print(Fruits["Apple"])
print(Fruits.get("Kiwi"))
print(Fruits.keys())
print(Fruits.values())

if "grapes" in Fruits:
     print()
     

Fruits["Watermellon"] = "1800"     


print(Fruits.items())

del Fruits["Grapes"]

print(Fruits.items())

for key , value in Fruits.items():
     print(key,value)