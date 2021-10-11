word_list = []

while True:
    value = input("Enter a word ('Quit to exit'): ")
    word_list.append(value)

    if value == 'Quit':

        word_list.remove('Quit')

        print("\n")
        print("Original List")
        print("===")
        for i in range(len(word_list)):
            print(word_list[i], end=' ')

        print("\n")
        print("Sorted List")
        print("===")
        sort_list = sorted(word_list, key=len)
        for i in range(len(sort_list)):
            print(sort_list[i], end=' ')

        print("\n")
        print("Reversed")
        print("===")
        reverse_list = reversed(word_list)
        print(*reverse_list)

        print("")
        print("Longest Word")
        longest_word = max(word_list, key=len)
        print(longest_word)

        break

    elif value == '':
        continue
