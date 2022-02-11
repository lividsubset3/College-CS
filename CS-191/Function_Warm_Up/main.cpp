/*
    191
    Function Warm Up
    main.cpp
    Patrick Rakowicz
*/

#include <iostream>
#include <algorithm>

using namespace std;

int maxIntVal(int x, int y) {
    //returns the largest of x and y
    if (x > y)
        return x;
    else
        return y;
}

int sumN(int n) {
    //returns the sum of the integers from 1 to n; assume n >= 0
    int sum = 0;
    for (int i = 1; i <= n; i++) {
        sum = sum + i;
    }
    return sum;
}

bool isEven(int n) {
    //returns true if n is an even number, false otherwise
    if (n % 2 == 0)
        return true;
    else
        return false;
}

string fixCaps(string s) {
    //returns the string with the first letter capitalized and the rest of the letters lowercased
    if (!s.empty()) {
        transform(begin(s), end(s), begin(s), [](char const &c) { return tolower(c); });
        s[0] = toupper(s[0]);
    }
    return s;
}

void toLowerCase(string &s) {
    //modifies s so that it is all lowercase; this is a pass by reference
    if (!s.empty()) {
        transform(begin(s), end(s), begin(s), [](char const &c) { return tolower(c); });
        s[0] = tolower(s[0]);
    }
}

// TODO
//  Work on factorial
//  cant change int y to long double y
/*int xToY(int x, long double y) {
    //uses a loop to calculate x^y and return it; assume y >= 0
    if (x < 0)
        cout << "Error! Factorial of a negative number doesn't exist.";
    else {
        for(int i = 1; i <= x; ++i) {
            y *= i;
        }
        return y;
    }
}*/

bool isAllCaps(string s) {
    //return true if s is all capital ASCII letters, false otherwise; take a look at asciitable.com
    for (int i = 0; i < s; i++) {
        if (isupper (s[i]))
            cout << "true";
        else
            cout << "false";
    }
}


//void toProperCaps(string &s) {
//    //modifies s so that the first character and any other characters which are
//    //after a blank are capitalized, all other letters are lowercased. This is a
//    //pass by reference.
//}

int main() {
    string a = "TEST";
    toLowerCase(a);

    cout << "Largest is: " << maxIntVal(4, 2) << endl;
    cout << "Sum count: " << sumN(10) << endl;
    cout << "Is N Even?: " << boolalpha << isEven(2) << endl;
    cout << "Fixed Caps: " << fixCaps("tEST") << endl;
    cout << "All Lower: " << a << endl;
    //cout << "Factorial :" << xToY(12, 1) << endl;
    cout << "Check capatal: " << boolalpha << isAllCaps("teST") << endl;
}