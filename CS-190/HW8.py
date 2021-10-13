# Five input Integer
# Define functions top of code
# Functions cant use global variables
# Must print correct passer rating


def calcA(x, y):
    a = ((x / y) - 0.3) * 5
    return a


def calcB(x, y):
    b = ((x / y) - 3) * 0.25
    return b


def calcC(x, y):
    c = (x / y) * 20
    return c


def calcD(x, y):
    d = 2.375 - ((x / y) * 25)
    return d


def rating(a, b, c, d):
    equation = ((a + b + c + d) / 6) * 100
    print("QB rating", equation)


print("Welcome to the NFL QB passer rating calculator!")
print("================")
print("Please enter the following QB stats")

att = int(input("Enter number of pass attempts: "))
comp = int(input("Enter number of completions: "))
yds = int(input("Enter total passing yards: "))
td = int(input("Enter total passing touchdowns: "))
intr = int(input("Enter number of interceptions thrown: "))

rating(calcA(comp, att), calcB(yds, att), calcC(td, att), calcD(intr, att))

print("================")
