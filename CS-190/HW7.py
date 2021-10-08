word_list = []

while True:
    value = input("Enter a word ('Quit to exit'): ")

    if value == 'Quit':
        print("Original")
        for words in word_list:
            print(words)

        print()
        print("Sorted")
        sorted_string = sorted(word_list)
        for words in sorted_string:
            print(words)

        print()
        print("Reversed")

        print()
        print("Longest Word")
        longest_word = max(word_list, key=len)
        for words in word_list:
            print(words)
        print(longest_word, "Longest word")

        break
    else value == '':
        continue
