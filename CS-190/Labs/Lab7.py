# Write python code that:
# Asks user to input 5 words
# Stores in a list
# Outputs all words inputted / Output Longest word

word1 = input("enter a word: ")
word2 = input("enter a word: ")
word3 = input("enter a word: ")
word4 = input("enter a word: ")
word5 = input("enter a word: ")

word_list = [word1, word2, word3, word4, word5]
longest_word = max(word_list, key=len)

for words in word_list:
    print(words)
print(longest_word, "Longest word")
