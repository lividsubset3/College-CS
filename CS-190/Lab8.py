# write python function to compute:
# volume of a box (input | length, width, height)
# volume of a sphere (Given radius, Height)
# volume of pyramid (Given length, width, height)
# volume of a cylinder (Given radius, height)
# Print volume

import math

while True:
    print("Volume of Box        [1]")
    print("Volume of Sphere     [2]")
    print("Volume of Pyramid    [3]")
    print("Volume of Cylinder   [4]")
    print("Quit                 [5]")
    select_menu = input("Select: ")

    if select_menu == '1':
        print("=== Volume of a Box ===")
        length = int(input("Input Length: "))
        width = int(input("Input Width: "))
        height = int(input("Input Height: "))
        volume = length * width * height
        print("Volume:", volume)
        print()

    if select_menu == '2':
        print("=== Volume of a Sphere ===")
        radius = int(input("Input Radius: "))
        height = int(input("Input Height: "))
        volume = (4/3) * math.pi * (math.pow(radius, 3))
        print("Volume:", volume)
        print()

    if select_menu == '3':
        print("=== Volume of a Pyramid ===")
        length = int(input("Input Length: "))
        width = int(input("Input Width: "))
        height = int(input("Input Height: "))
        volume = (length * width * height) / 3
        print("Volume:", volume)
        print()

    if select_menu == '4':
        print("=== Volume of a Cylinder ===")
        radius = int(input("Input Radius: "))
        height = int(input("Input Height: "))
        volume = math.pi * (math.pow(radius, 2)) * height
        print("Volume:", volume)
        print()

    if select_menu == '5':
        break
