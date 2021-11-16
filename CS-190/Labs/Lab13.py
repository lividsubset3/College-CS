# Create a cavas with 4 shapes
# Line, Oval, Rectangle, Triangle
# (y, x)

from tkinter import *

root = Tk()

window = Canvas(root, width=500, height=500)
window.pack()

window.create_line(25, 50, 100, 200, fill='yellow')
window.create_rectangle(350, 100, 200, 200, fill='red')
window.create_oval(420, 420, 300, 350, fill='green')
window.create_polygon(40, 480, 100, 480, 80, 350, fill='blue')

root.mainloop()
