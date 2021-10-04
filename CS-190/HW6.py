# Check if its positive
# Check if its prime

num = int(input("Input Positive Value: "))

if num > 1:
    for i in range(2, num / 2 + 1):
        if (num % i) == 0:
            print(num, "Is Prime!")
            break
        else:
            print(num, "Is not prime!")
else:
    print(num, "Is not positive..")
