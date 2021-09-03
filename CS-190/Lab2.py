# L2 Space Flight calculator
# Create a calc that calculates how many years does it take to travel x light years

# Input two variables needed for calc
speed = int(input("Speed of Craft MPS: "))
distance = float(input("Light years: "))

# Math for calc
mpy = speed * 60 * 60 * 24 * float(365.5)
lightYear = distance * 5878625370000

# End Calc
calc = lightYear // mpy

print("amount of years: ", calc)
