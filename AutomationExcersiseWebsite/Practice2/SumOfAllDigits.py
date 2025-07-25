number = input("Enter the number: ") 
total = 0
for digit in number:
    total += int(digit)
    
print("Sum of digits:", total)
