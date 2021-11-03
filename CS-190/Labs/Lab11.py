# Create a list of 10+ meme words
# E.G. Totes, slaps, cat, WTF, AF, etc.
# Implement code that writes 100 random meme phrases to a file named "Meme.txt"
import random

memeList = ['totes ', 'slaps ', 'cat ', 'WTF ', 'AF ', 'ATF ', 'Get some napalm ', 'lol ', 'Your ass ', 'Robo Bitch ']

with open('meme.txt', 'w') as f:
    for i in range(100):
        a = random.choice(memeList)
        b = random.choice(memeList)
        c = random.choice(memeList)
        f.write(a + b + c + '\n')
