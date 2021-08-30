# Homework 2
# Write Python code that will print the number of heart beats for
# a person given their age and average beats per minute(BPM). Assume there are 365.25 days /year.

age = input("Enter Age: ")
bpm = input("Enter BPM: ")

product = int(bpm) * 60 * 24 * 365.25 * int(age)

print("Total # of beats: ", product)
