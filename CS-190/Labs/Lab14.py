# Implement "Bounce" in Python
# Animate shape to bounce off N, E, S, W walls
import random  # random.randrange(startRange, endRange)
from tkinter import *

window_h = 500  # Y
window_w = 500  # X
rand = random.randrange(-8, 8)

root = Tk()
window = Canvas(root, width=window_w, height=window_h)
window.pack()

block = window.create_rectangle(0, 0, 50, 50, fill='black')

window.move(block, 225, 225)
y = 5
x = 5


def _WallDetection():
    global x, y
    x0, y0, x1, y1 = window.coords(block)

    window.move(block, x, y)
    if y1 >= 500:
        y = -4
    if x1 >= 500:
        x = -4
    if y1 <= 0:
        y = 4
    if x0 <= 0:
        x = 4
    root.after(35, _WallDetection)


root.after(35, _WallDetection)
root.mainloop()
