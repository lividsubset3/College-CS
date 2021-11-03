# Pair Programming

passphrase = "Megmo" and "megmo"

null1 = "123"
null2 = "letmein"
null3 = "password"

while True:
    password = str(input("Please enter password: "))

    if null3 in password:
        print("Incorrect | Password has password inside")

    if null2 in password:
        print("Incorrect | password has letmein")

    if null1 in password:
        print("Incorrect | Password has 123")

    if passphrase in password and not null1 and not null2 and not null3:
        print("Correct | Password validated")
        break
