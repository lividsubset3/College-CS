
tank_size = int(input("How large is your tank: "))
gas_price = float(input("Hiw much is gas (in x dollars and y cents, enter in for x.y):"))

cost_to_fill = tank_size * gas_price

print("it will cost $" + str(cost_to_fill) + " to fill your " + str(tank_size) + " gallon tank at $" + str(gas_price) + " per gallon.")
