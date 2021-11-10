# create a basic calc with + - * / %
# But it is in a GUI

from tkinter import *

root = Tk()

Label(root, text=' ~OP~ ').grid(row=0, column=1)
Label(root, text=' = ').grid(row=0, column=3)

_ValueOne = Entry(root)
_ValueOne.grid(row=0, column=0)
_ValueTwo = Entry(root)
_ValueTwo.grid(row=0, column=2)
_ValueFinal = Entry(root)
_ValueFinal.grid(row=0, column=4)


def _Add():
    x = int(_ValueOne.get())
    y = int(_ValueTwo.get())
    calc = x + y
    _ValueFinal.delete(0, END)
    _ValueFinal.insert(0, str(calc))


def _Subtract():
    x = int(_ValueOne.get())
    y = int(_ValueTwo.get())
    calc = x - y
    _ValueFinal.delete(0, END)
    _ValueFinal.insert(0, str(calc))


def _Multiple():
    x = int(_ValueOne.get())
    y = int(_ValueTwo.get())
    calc = x * y
    _ValueFinal.delete(0, END)
    _ValueFinal.insert(0, str(calc))


def _Divide():
    x = int(_ValueOne.get())
    y = int(_ValueTwo.get())
    calc = x / y
    _ValueFinal.delete(0, END)
    _ValueFinal.insert(0, str(calc))


def _Modulo():
    x = int(_ValueOne.get())
    y = int(_ValueTwo.get())
    calc = x % y
    _ValueFinal.delete(0, END)
    _ValueFinal.insert(0, str(calc))


Button(root, text='+', command=_Add).grid(row=2, column=0)
Button(root, text='-', command=_Subtract).grid(row=2, column=1)
Button(root, text='*', command=_Multiple).grid(row=2, column=2)
Button(root, text='/', command=_Divide).grid(row=2, column=3)
Button(root, text='%', command=_Modulo).grid(row=2, column=4)

root.mainloop()
