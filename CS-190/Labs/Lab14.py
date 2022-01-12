# Implement "Bounce" in Python
# Animate shape to bounce off N, E, S, W walls
import random  # random.randrange(startRange, endRange)
from tkinter import *

window_h = 500  # Y
window_w = 500  # X
_posRand = random.randint(1, 9)
_negRand = random.randint(-9, -1)
_Rand = random.randint(100, 300)

root = Tk()
window = Canvas(root, width=window_w, height=window_h)
window.pack()

block = window.create_rectangle(0, 0, 50, 50, fill='black')

window.move(block, 120, 200)
y = 2
x = 2


def _WallDetection():
    global x, y
    x0, y0, x1, y1 = window.coords(block)

    window.move(block, x, y)
    if y1 >= 500:
        y = _negRand
    if x1 >= 500:
        x = _negRand
    if y0 <= 0:
        y = _posRand
    if x0 <= 0:
        x = _posRand
    root.after(60, _WallDetection)


root.after(35, _WallDetection)
root.mainloop()
