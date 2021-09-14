# Write Python code to determine weather to ditch class and go skiing (in theory)
# Ask user to input:
# How much new snow? | What is the forecasted temperature? | Is there an exam that day?

snow = int(input("How much new snow? Inch: "))
forecastedTemp = int(input("What is forecasted Temp? F: "))
checkExam = input("Is there an exam Today? Y/n ")

print()
if checkExam == 'Y' or checkExam == 'y':
    exam = True
else:
    exam = False

print()
print("Go Skiing?")
if snow >= 20 and forecastedTemp <= -10 and exam == False:
    print("Snow Day, You better")
elif snow >= 10 and forecastedTemp >= 10 and exam == False:
    print("Yes")
elif forecastedTemp <= -10:
    print("Its to cold...")
elif snow < 10:
    print("Not enough snow...")
elif exam == True:
    print("No, Got an exam...")
else:
    print("no...")
