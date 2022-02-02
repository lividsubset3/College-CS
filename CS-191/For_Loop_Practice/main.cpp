/*
    191
    For Loop Practice
    main.cpp
    Patrick Rakowicz
*/
#include <iostream>
#include <iomanip>

using namespace std;

int main() {
    // Loop 1
    int m1, n1, count;
    float sum = 0;

    cout << "Generating Numbers from m to n";
    cout << "Enter m and n:";
    cin >> m1 >> n1;

    cout << "Expected: Integers from " << m1 << " to " << n1 << endl;
    count = n1 - m1 + 1;

    cout << "Actual: ";
    for (int i = m1; i < (n1 + 1); ++i) {
        cout << i << " ";
        sum += i;
    }
    cout << endl;
    cout << setprecision(2) << fixed << "Sum: " << double (sum) << " " << "Average: " << double (sum/count) << endl;

    cout << endl;

    // Loop 2
    int m2, n2;

    cout << "Generating Numbers from m to n";
    cout << "Enter m and n:";
    cin >> m2 >> n2;

    cout << "Expected: odd integers from " << m2 << " to " << n2 << endl;
    cout << "Actual: ";

    for (int i = m2; i < (n2 + 1); ++i) {
        if (i % 2 != 0) {
            cout << i << " ";
        }
    }
}