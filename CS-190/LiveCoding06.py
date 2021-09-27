# 06 Lecture Live Code examples
x = 71

while True:
    guess = int(input("Please enter a guess: '0-100' "))

    # user got guess right
    if x == guess:
        print("Correct " + str(x))
        break

    # guess is out of range
    if guess < 0 or guess > 100:
        print("That guess is out of range! ")
        continue

    # guess is too high
    if guess > x:
        print("Your guess is too high, try again!")
        continue

    # guess is to low
    if guess < x:
        print("Your guess is too low, try again!")
        continue
