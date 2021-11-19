from tkinter import *

root = Tk()

window = Canvas(root, width=500, height=500)
window.pack()

window.create_rectangle(100, 100, 200, 200, fill='red')

root.mainloop()