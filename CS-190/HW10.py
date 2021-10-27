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
    # example code that draws a red circle with radius 50 at x=200, y=100
    circle(200, 100, 50, 'red')
    init = input("Input File: ")
    with open(init) as f:
        for line in f:
            r_str = line.rstrip()
            L = r_str.split(' ')
            print(L)
            for shape_type in L:
                if shape_type == 'triangle':
                    x = int(line[9, 10])
                    y = int()
                    size =
                    color =



# do not modify code below this line!
# ===============================================================================================
if __name__ == '__main__':
    go()
    root.mainloop()
