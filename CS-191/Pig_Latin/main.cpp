/*
    191
    Pig Latin
    main.cpp
    Patrick Rakowicz
*/

#include <iostream>
#include <string>

using namespace std;

bool isConsonant(char);

bool isVowel(char);

int findFirstVowel(string);

string getOriginalString();

string getFirstWord(string);

string eraseFirstWord(string);

string pigLatinize(string);

void displayResultString(string);


bool isConsonant(char ch) {
    //return true if ch is a consonant, false otherwise; be smart about this function; don't write 20 or comparisons
    char ch2 = tolower(ch);
    switch (ch2) {
        case 'a' :
            return false;
        case 'e' :
            return false;
        case 'i' :
            return false;
        case 'o' :
            return false;
        case 'u' :
            return false;
        default :
            return true;
    }
}

bool isVowel(char ch) {
    //returns true if ch is a vowel, false otherwise
    string str = "aeiouAEIOU";
    return (str.find(ch) != string::npos);
}

int findFirstVowel(string s) {

    string str = "aeiou";
    if (str.find(s)) {
        return str.find(s);
    } else {
        return string::npos;
    }
    //return location of the first vowel in the string (if present), return string::npos if no vowel is in the string
}

string getOriginalString() {
    string s;
    cout << "Enter a string: ";
    getline(cin, s);
    return s;
}

void displayResultString(string r) {
    cout << r;
}

string getFirstWord(string s) {
    string first = s.substr(0, s.find(" "));
    return first;
    //return the first word, without the blank (at the end);  if there is only 1 word then return it
}

string eraseFirstWord(string s) {
    string first = s.substr(0, s.find(" "));
    return first;
    //return the string with the first word, and the blank after it (if present), removed
}

string pigLatinize(string s) {
    //returns the result of pig-latinizing one word
    if (isConsonant(s[0])) {
        int fvp = findFirstVowel(s);
        string temp = s.substr(0, fvp);
        return s.erase(0, fvp) + temp + "ay ";
    } else {
        return s + "ay ";
    }
}

int main() {
    string originalString, resultString = " ", firstWord; //resultString is empty
    originalString = getOriginalString();
    while (!originalString.empty()) {
        firstWord = getFirstWord(originalString);
        originalString = eraseFirstWord(originalString);
        resultString += pigLatinize(firstWord);
    } //while
    displayResultString(resultString);
} //main

