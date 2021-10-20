def isOdd(lst):
    for i in lst:
        if i % 2 == 0:
            print(lst)
            return False
    return True


print(isOdd([1, 3, 5, 7, 9]))


def disc(a, b, c):
    calc = (b ** 2) - (4 * a * c)
    if calc == 0:
        print("1 Solution")
    elif calc < 0:
        print("0 Solutions")
    elif calc > 0:
        print("2 Solutions")


disc(50, 20, 100)
