/*
    CS 191
    Arrays and Functions
    main.cpp
    Patrick Rakowicz
*/

#include <iostream>

using namespace std;

const int MAX = 5;

void findLargestTwo(int x[], int &largest, int &secondLargest);

void displayReverse(int x[]);

bool isAllEven(int x[]);

bool inAscendingOrder(int x[]);

int countInstances(int[], int target);

void displayArray(int[]);

int sumArray(int[]);

int findMax(int[]);


void displayArray(int d[]) {
    for (int i = 0; i < MAX; i++) {
        cout << d[i] << " ";
    }
    cout << endl << endl;
}

int sumArray(int d[]) {
    int sum = 0;
    for (int i = 0; i < MAX; i++) {
        sum += d[i];
    }
    return sum;
}

int findMax(int d[]) {
    int maxV = d[0];
    for (int i = 1; i < MAX; i++)
        if (d[i] > maxV) {
            maxV = d[i];
        }
    return maxV;
}

void findLargestTwo(int x[], int &largest, int &secondLargest) {
    for (int i = 0; i < MAX; ++i) {
        if (x[i] > largest) {
            largest = x[i];
        }
    }

    for (int i = 0; i < MAX; ++i) {
        if (x[i] > secondLargest) {
            if (x[i] == largest)
                continue;
            secondLargest = x[i];
        }
    }
}

void displayReverse(int x[]) {
    for (int i = MAX - 1; i >= 0; i--) {
        cout << x[i] << " ";
    }
    cout << endl << endl;
}

bool isAllEven(int x[]) {
    for (int i = 0; i < MAX; i++) {
        if (x[i] % 2 != 0)
            return false;
    }
    return true;
}

bool inAscendingOrder(int x[]) {
    for (int i = 0; i < MAX - 1; i++) {
        if (x[i] > x[i + 1])
            return false;
    }
    return true;
}

int countInstances(int x[], int target) {
    int count = 0;
    for (int i = 0; i < MAX; i++) {
        if (x[i] == target)
            count++;
    }
    return count;
}

int main() {
    int x[MAX] = {22, -13, 45, 7, 12};
    cout << "Print Array: ";
    displayArray(x);

    cout << "~ sumArray Test ~" << endl;
    cout << "Expected: 73" << endl;
    cout << "Actual: " << sumArray(x) << endl << endl;

    cout << "~ findMax Test ~" << endl;
    cout << "Expected: 45" << endl;
    cout << "Actual: " << findMax(x) << endl << endl;

    cout << "~ findLargestTwo Test ~" << endl;
    cout << "Expected: Largest 45, Second Largest 22" << endl;
    int largest = 0;
    int secondLargest = 0;
    findLargestTwo(x, largest, secondLargest);
    cout << "Actual - Largest: " << largest << " Second Largest: " << secondLargest << endl;

    cout << endl << "~ displayReverse Test ~" << endl;
    cout << "Expected: 12 7 45 -13 22" << endl;
    cout << "Actual: ";
    displayReverse(x);

    int x1[] = {4, -20, 12, 8, -44};
    cout << "Print Array: ";
    displayArray(x1);

    cout << "~ isAllEven Test ~" << endl;
    cout << "Expected: 1 (True)" << endl;
    cout << "Actual: " << isAllEven(x1) << endl << endl;

    int x2[] = {4, -19, 17, 8, 0};
    cout << "Print Array: ";
    displayArray(x2);
    cout << "~ isAllEven Test ~" << endl;
    cout << "Expected: 0 (False)" << endl;
    cout << "Actual: " << isAllEven(x2) << endl << endl;

    cout << "Print Reverse Array: ";
    displayReverse(x);
    cout << "~ inAscendingOrder Test ~" << endl;
    cout << "Expected: 0 (false)" << endl;
    cout << "Actual: " << inAscendingOrder(x) << endl << endl;

    int x3[] = {4, 10, 7, 10, 31, -43};
    int y = 10;
    cout << "Print Array: ";
    displayArray(x3);
    cout << "Count how many of " << y << " there is" << endl;
    cout << "Check for "<< y << " | " <<  countInstances(x3, y);
}