/*
    191
    Practice 1
    main.cpp
    Patrick Rakowicz
*/
#include <iostream>
#include <stdio.h>
#include <stdlib.h>
#include <time.h>
using namespace std;


int main() {
    int m1, m2;
    srand(time(NULL));

    cout << "Input two integers in increasing order:";
    cin >> m1 >> m2;

    cout << "Generating random integers" << endl;
    cout << "Expected:" << endl;
    cout << "10 Random integers in the range [" << m1 << " , " << m2 << "]" << endl;

    for (int i=1; i<=10;i++) {
        cout << (rand() % (m2 - m1+1)) + m1 << " ";
    }
    cout << endl;

    cout << "Expected:" << endl;
    cout << "average value of the integers" << endl;
    cout << "maximum value of the integers" << endl;
    cout << "minimum value of the integers" << endl;
    cout << "Actual:" << endl;
    //  TODO
    //      print Average Values
    //      print Maximum Values
    //      print Minimum Values
}
