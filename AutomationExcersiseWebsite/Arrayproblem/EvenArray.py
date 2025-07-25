def EvenNumber(): 
   Even =[2,4,6,8,9,11,13,15,22,24,26,88]
   count=0
   for i in Even:
    if i %2 == 0:
     count=count+1
     print(i)
   print(f"Total number of Even numbe is: {count}")     
     


EvenNumber()


