# a, b, c = map(int, input("Input Values A B C").split())
from lib2to3.pgen2.grammar import line
import math

numList = []


def r1(a, b, c):
    return (-b + math.sqrt(math.pow(b, 2) - 4 * a * c)) / 2 * a


def r2(a, b, c):
    return (-b + math.sqrt(math.pow(b, 2) - 4 * a * c)) / 2 * a


def disc(a, b, c):
    calc = (b ** 2) - (4 * a * c)
    if calc == 0:
        print(r1() + "," + "None")
    elif calc < 0:
        print("None" + "," + "None")
    elif calc > 0:
        print(r2() + "," + r1)


def checkList(numList):
    for i in range(len(numList)):
        if numList[i] % 2 == 0:
            return True
        elif not numList % 2 == 0:
            return False


for i in range(3):
    num = int(input("Input Values "))
    numList.append(num)

print(numList)

print(checkList(numList))
print("Roots =" + disc(numList))
