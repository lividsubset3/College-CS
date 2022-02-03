/*
    191
    Loop Practice 2
    main.cpp
    Patrick Rakowicz
*/

#include <iostream>
#include <iomanip>

using namespace std;

int main() {
    // Loop 1
    int number, count = 0;
    double sum = 0;

    int maxVal = 0, minVal = maxVal;
    while (true) {
        count = count + 1;
        cout << "Enter a positive value:";
        cin >> number;
        sum += number;
        if (sum > 100 || number == 0)
            break;
        else if (sum > maxVal)
            maxVal = number;
        else if (maxVal < minVal)
            minVal = number;

    }

    cout << endl;

    cout << "Max Value: " << maxVal << endl;
    cout << "Min Value: " << minVal << endl;
    cout << "Average Value: " << setprecision(1) << fixed << sum / count << endl;
    cout << "Count: " << count;

    // Loop 2
}