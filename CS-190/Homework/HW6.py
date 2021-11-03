# Check if its positive
# Check if its prime
# Ask again if negative

x = True

while x:
    num = int(input("Input Positive Value: "))

    for i in range(2, int(num / 2) + 1):
        if (num % i) == 0:
            print(num, "Is Prime!")
            x = False
            break
        else:
            print(num, "Not Prime")
            x = False
            break
