# Create a checker Board that has a width, height, and length input with lower then zero checking
from tkinter import *

root = Tk()

window = Canvas(root, width=500, height=500)
window.pack()

_Size = int(input("Size of square: "))
_Row = int(input("Enter width of board: "))
_Column = int(input("Enter height of board: "))

_Color = 'white'

while True:
    if _Size <= 0:
        print("Error: Number Below/Equal to 0 ~ Try again...")
        size = int(input("Enter Square Size: "))
    elif _Row <= 0:
        print("Error: Number Below/Equal to 0 ~ Try again...")
        row = int(input("Enter Board Width: "))
    elif _Column <= 0:
        print("Error: Number Below/Equal to 0 ~ Try again...")
        column = int(input("Enter Board Height: "))
    break

for y in range(_Column):
    for x in range(_Row):
        x1 = x * _Size
        y1 = y * _Size
        x2 = x1 + _Size
        y2 = y1 + _Size
        window.create_rectangle((x1, y1, x2, y2), fill=_Color)

        if _Color == 'black':
            _Color = 'white'
        else:
            _Color = 'black'

    if _Color == 'black':
        _Color = 'white'
    else:
        _Color = 'black'

root.mainloop()
