# Implement simple integer calculator in python
# INPUT 3 Items | user name (string), x (int), y (int)
# OUTPUT 5 Items | Message to user
# result of addition (x+y), Multiplication, exponents, modulo

z, x, y = str(input("Enter Name: ")), int(input("Enter x: ")), int(input("Enter y: "))

print()
print("Hello", z, "hope things are going correctly in life.")

print()
print(x, "+", y, "=", x + y)
print(x, "*", y, "=", x * y)
print(x, "^", y, "=", x ** y)
print(x, "%", y, "=", x % y)
