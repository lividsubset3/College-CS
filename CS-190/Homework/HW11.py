# Your team’s task is to implement Python code to write a portable gray map (PGM) image file
# with some kind of discernible pattern
import random

_NameFile = input("Enter Name of File:(.PGM) ")
_Width = input("Enter Width of File: ")
_Height = input("Enter Height of File: ")

try:
    with open(_NameFile, 'w') as f:
        _PixelDim = int(_Width) * int(_Height)

        f.write("P2" + '\n')
        f.write(str(_Width) + ' ' + str(_Height) + '\n')
        f.write("255" + '\n')

        for i in range(int(_PixelDim)):
            f.write(str('255') + '\n')
            f.write(str('200') + '\n')
            f.write(str('150') + '\n')
            f.write(str('100') + '\n')
            f.write(str('50') + '\n')

except Exception as e:
    print(e)
    print("Error | 404 | File Not found")
