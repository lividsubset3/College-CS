from tkinter import *

root = Tk()
root.title('Homework 10')
canvas = Canvas(root, width=400, height=400)
canvas.pack()


def circle(x, y, radius, color):
    canvas.create_oval(x, y, x + radius, y + radius, fill=color, outline=color)


def rectangle(x, y, width, height, color):
    canvas.create_rectangle(x, y, x + width, y + height, fill=color, outline=color)


def triangle(x, y, size, color):
    canvas.create_polygon(x - size // 2, y, x + size // 2, y, x, y - size // 2, fill=color, outline=color)


# do not modify code above this line!
# ===============================================================================================

def go():
    try:
        # init = input("Input File: ")
        init = "HW10.txt"
        with open(init) as f:
            for line in f:
                L = line.split(' ')
                for shape_type in L:
                    if shape_type == 'triangle':
                        x = int(L[1])
                        y = int(L[2])
                        size = int(L[3])
                        color = str(L[4])
                        triangle(x, y, size, color)
                    elif shape_type == 'rectangle':
                        x = int(L[1])
                        y = int(L[2])
                        width = int(L[3])
                        height = int(L[4])
                        color = str(L[5])
                        rectangle(x, y, width, height, color)
                    elif shape_type == 'circle':
                        x = int(L[1])
                        y = int(L[2])
                        radius = int(L[3])
                        color = str(L[4])
                        circle(x, y, radius, color)
                    elif shape_type == 'square':
                        x = int(L[1])
                        y = int(L[2])
                        width = int(L[3])
                        height = int(L[4])
                        color = f"'{L[5]}'"
                        rectangle(x, y, width, height, color)
    except EXCEPTION:
        print("Error | 404 | File Not found")


# do not modify code below this line!
# ===============================================================================================
if __name__ == '__main__':
    go()
    root.mainloop()
