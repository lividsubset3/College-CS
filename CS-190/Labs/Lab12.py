# F to C GUI
# Implement a GUI that convert user input from Fahrenheit to Celsius
# Visa Versa

from tkinter import *

root = Tk()

Label(root, text='Fahrenheit: ').grid(row=0, sticky=W)
Label(root, text='Celsius: ').grid(row=1, sticky=W)

_enterFahrenheit = Entry(root)
_enterFahrenheit.grid(row=0, column=1)

_enterCelsius = Entry(root)
_enterCelsius.grid(row=1, column=1)


def F_C():
    _Fahrenheit = int(_enterFahrenheit.get())
    calc = (_Fahrenheit - 32) * .5556
    print(calc)
    _enterCelsius.delete(0, END)
    _enterCelsius.insert(0, str(calc))


def C_F():
    _Celsius = int(_enterCelsius.get())
    calc = (_Celsius * 1.8) + 32
    print(calc)
    _enterFahrenheit.delete(0, END)
    _enterFahrenheit.insert(0, str(calc))


Button(root, text='F to C', command=F_C).grid(row=2, column=0)
Button(root, text='C to F', command=C_F).grid(row=2, column=1)

root.mainloop()
