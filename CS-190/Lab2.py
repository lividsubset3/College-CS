# L2 Space Flight calculator
# Create a calc that calculates how many years does it take to travel x light years

speed = int(input("Speed of Craft MPS: "))
distance = float(input("Light years: "))

mpy = speed * 60 * 60 * 24 * float(365.5)
lightYear = distance * 5878625370000

calc = lightYear // mpy

print(calc)
