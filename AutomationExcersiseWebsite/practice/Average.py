def AcceptMarks(a,b,c):
    d=a+b+c
    return d
    
def CalculateAverage(e):
    j=e/3
    return j

def ConditionalAverage(finalAvergeValue):
    if finalAvergeValue>60:
        print("The average is more than 60 ")
    else:
        print("The average is less than 60")    

additionofMarks=AcceptMarks(50,75,80)
finalAverage=CalculateAverage(additionofMarks)
print(f"This is final average {finalAverage} ")  
ConditionalAverage(finalAverage) 




a="Digvijay patil"
for x in reversed(a):
    print(x, end="")


    