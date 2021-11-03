# Read file "input.txt" line by line
# Each line will contain either
# If line start +, print result to x + y
# If line start +-, prints results of (x + y) - z


with open("Lab10.txt", "r") as f:
    for line in f:
        r_str = line.rstrip()
        L = r_str.split(' ')
        print(L)
        for characters in L:
            if characters == '+':
                x = int(line[2])
                y = int(line[4])
                mafs = x + y
                print(mafs)
            elif characters == '+-':
                x = int(line[3])
                y = int(line[5])
                z = int(line[7])
                mafs = (x + y) - z
                print(mafs)
