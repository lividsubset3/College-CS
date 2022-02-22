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
}

bool isVowel(char ch) {
    //returns true if ch is a vowel, false otherwise
}

int findFirstVowel(string s) {
    //return location of the first vowel in the string (if present), return string::npos if no vowel is in the string
}

string getOriginalString() {
    //ask the user for the string, read it (it may include blanks of course) and return it
}

void displayResultString(string r) {
    //output the result of the translation
}

string getFirstWord(string s) {
    //return the first word, without the blank (at the end);  if there is only 1 word then return it
}

string eraseFirstWord(string s) {
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
    string originalString, resultString = "", firstWord; //resultString is empty
    originalString = getOriginalString();
    while (!originalString.empty()) {
        firstWord = getFirstWord(originalString);
        originalString = eraseFirstWord(originalString);
        resultString += pigLatinize(firstWord);
    } //while
    displayResultString(resultString);
} //main

