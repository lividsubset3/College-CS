# Write Python code that outputs the lyrics to "99 Bottles of beer"
# verses:
# x bottles of beer on the wall | X bottles of beer (take one down, pass it around)
# X-1 bottles of beer on the wall
# Bottle of beer / Bottles of beer
# Ends - no more bottles of beer on the wall, no more bottles of beer
# - go to the store, by some more, 99 bottles of beer on the wall

b = 12

if b >= 1:
    for i in range(12):
        if b == 1:
            print(str(b), "Bottle of beer on the wall...")
            print(str(b), "Bottle of beer...")
            print("Take one down, pass it around...")
            print("No more bottles of beer on the wall.")
        else:
            print(str(b), "Bottles of beer on the wall...")
            print(str(b), "Bottles of beer...")
            b -= 1
print("Go to the store, buy some more")
print("99 Bottles of beer on the wall")

