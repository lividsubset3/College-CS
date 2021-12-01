# Implement "Bounce" in Python
# Animate shape to bounce off N, E, S, W walls

from tkinter import *

root = Tk()
window_h = 500
window_w = 500
window = Canvas(root, width=window_w, height=window_h)
window.pack()

block = window.create_rectangle(0, 0, 50, 50, fill='black')
window.move(block, 225, 250)

root.mainloop()
