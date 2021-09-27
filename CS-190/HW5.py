# Multiply using addition without using the multiplication tag

x = int(input("Main Value: "))
y = int(input("Value to be multiplied: "))

product = y
z = 1

if x >= 0 and y >= 0:
    print()
    for i in range(z, y + 1):
        print("after integration |", x, "x", i, "=", product)
        product = product + x
    print(x, "*", y, "=", product - y)
else:
    print()
    print("X or Y value is not positive")
    print("please enter Positive Number..")
