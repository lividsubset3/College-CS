# Homework 2
# Write Python code that will print the number of heart beats for
# a person given their age and average beats per minute(BPM). Assume there are 365.25 days /year.

age = int(input("Enter Age: "))
bpm = int(input("Enter BPM: "))

product = bpm * 60 * 24 * 365.25 * age

print("Total # of beats: ", product)
