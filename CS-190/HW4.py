# Your job is to implement a basic calculator in Python
# Prompt the user to input, 3 Inputs, 2 floats, and 1 operator

operator = input("input Operator: ")
x = float(input("Input X: "))
y = float(input("Input Y: "))

addition = x + y
subtraction = x - y
multiplication = x * y
division = x / y
integerDivision = x // y
exponentiation = x ** y
modulo = x % y

if operator == '+':
    print(x, "+", y, "=", addition)
elif operator == '-':
    print(x, "-", y, "=", subtraction)
elif operator == '*':
    print(x, "*", y, "=", multiplication)
elif operator == '/':
    print(x, "/", y, "=", division)
elif operator == '//':
    print(x, "//", y, "=", integerDivision)
elif operator == '**' or operator == '^':
    print(x, "**|^", y, "=", modulo)
elif operator == '%':
    print(x, "%", y, "=", subtraction)
else:
    print("Invalid Operation...")
