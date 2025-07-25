fruits=["A","b","c","p","e"]
print(fruits)
print(len(fruits))


list1=["cat","dog","Elephant","Eagle"]
list2=[1,2,3,4,5,6]
list3=[True,False,True]


print(list1)
print(list2)
print(list3)


list4=["dog",1,1.4,True]
print(list4)
print(type(list4))
print(list4[0])
print(list4[-1])
print(list4[-2])


list5=["one","two","three","four","five","six","seven"]
list5[2]="Digvijay"
print(list5)
list5.insert(3,"shital")
print(list5)
list5.append("john")
print(list5)
list6=["Mobile",2,"Laptop",4.6]
list5.extend(list6)
print(list5)

list5.remove("seven")
print(list5)

list5.pop(1)
print(list5)



for topic in list5 :
    print(topic)
  

for i in range(len(list5)):
    print(list5[i])   







thislist = ["orange", "mango", "kiwi", "pineapple", "banana"]
thislist.sort()
print(thislist)

thislist.sort(reverse=True)
print(thislist)