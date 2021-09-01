# L2 Space Flight calculator
# Create a calc that calculates how many years does it take to travel x light years

scs = int(input("Speed of Craft MPS: "))
distance = float(input("Enter Light Year(s): "))

lightYear = distance / (186000 * 31556952)
Years = scs / lightYear

print(Years)
