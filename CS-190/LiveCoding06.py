# 06 Lecture Live Code examples

import random

x = random.randint(0, 100)
num_guess = 0

while True:

    if num_guess == 3:
        print("You are out of lives, Lost!")
        print("The Answer was " + str(x))
        break

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
        num_guess += 1
        continue

    # guess is to low
    if guess < x:
        print("Your guess is too low, try again!")
        num_guess += 1
        continue
