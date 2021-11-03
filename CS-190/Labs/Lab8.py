# write python function to compute:
# volume of a box (input | length, width, height)
# volume of a sphere (Given radius, Height)
# volume of pyramid (Given length, width, height)
# volume of a cylinder (Given radius, height)
# Print volume

import math


def volume_box(length, width, height):
    volume = length * width * height
    print("Volume:", volume)


def volume_sphere(radius):
    volume = (4 / 3) * math.pi * (math.pow(radius, 3))
    print("Volume:", volume)


def volume_pyramid(length, width, height):
    volume = (length * width * height) / 3
    print("Volume:", volume)


def volume_cylinder(radius, height):
    volume = math.pi * (math.pow(radius, 2)) * height
    print("Volume:", volume)


while True:
    print("Volume of Box        [1]")
    print("Volume of Sphere     [2]")
    print("Volume of Pyramid    [3]")
    print("Volume of Cylinder   [4]")
    print("Quit                 [5]")
    select_menu = input("Select: ")
    print()

    if select_menu == '1':
        print("=== Volume of a Box ===")
        x = int(input("Input Length: "))
        y = int(input("Input Width: "))
        z = int(input("Input Height: "))
        volume_box(x, y, z)
        print()

    if select_menu == '2':
        print("=== Volume of a Sphere ===")
        x = int(input("Input Radius: "))
        volume_sphere(x)
        print()

    if select_menu == '3':
        print("=== Volume of a Pyramid ===")
        x = int(input("Input Length: "))
        y = int(input("Input Width: "))
        z = int(input("Input Height: "))
        volume_pyramid(x, y, z)
        print()

    if select_menu == '4':
        print("=== Volume of a Cylinder ===")
        x = int(input("Input Radius: "))
        y = int(input("Input Height: "))
        volume_cylinder(x, y)
        print()

    if select_menu == '5':
        break
