# Create a checker Board that has a width, height, and length input with lower then zero checking
from tkinter import *

root = Tk()

window = Canvas(root, width=500, height=500)
window.pack()

_Size = int(input('Enter Square Size: '))
_Row = 500
_Column = 500
_Color = 'white'

while True:
    if _Size <= 0:
        _Size = int(input('Enter Square Size: '))
        continue
    break

print("Window Being Made...")
for y in range(_Column):
    if (_Row % 2) == 0:
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
        else:
            for x in range(_Row):
                x1 = x * _Size
                y1 = y * _Size
                x2 = x1 + _Size
                y2 = y1 + _Size
                window.create_rectangle((x1, y1, x2, y2), fill=_Color)

                if _Color == 'white':
                    _Color = 'black'
                else:
                    _Color = 'white'

    if _Color == 'black':
        _Color = 'white'
    else:
        _Color = 'black'
print('Window Made!')

root.mainloop()
