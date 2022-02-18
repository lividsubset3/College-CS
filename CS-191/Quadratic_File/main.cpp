/*
    191
    Quadratic File
    main.cpp
    Patrick Rakowicz | Caleb Domenico
*/
#include <iostream>
#include <fstream>
#include <string>
#include <cmath>

using namespace std;

void greeting() {
    cout << "Hello User, Welcome to the Quadratic Calculator..." << endl;
    cout << "This will read from a file..." << endl;
}

double readFile(double &a, double &b, double &c, ifstream &file) {
    file >> a >> b >> c;
}

double disc(int a, int b, int c) {
    double r = (b * b) - (4 * a * c);
    return r;
}

double calcRoot1(int a, int b, int c) {
    double x1 = ((-1 * b) + sqrt((b * b) - 4 * a * c)) / (2.0 * a);
    return x1;
}

double calcRoot2(int a, int b, int c) {
    double x2 = ((-1 * b) - sqrt((b * b) - 4 * a * c)) / (2.0 * a);
    return x2;
}

int main() {
    double a, b, c;
    double root1, root2;

    greeting();

    ifstream dataFile("data.txt");

    while (!dataFile.eof()) {
        readFile(a, b, c, dataFile);
        if (disc(a, b, c) >= 0) {
            root1 = calcRoot1(a, b, c);
            root2 = calcRoot2(a, b, c);
            cout << "The roots are | " << root1 << " and " << root2 << endl;
        } else {
            cout << "There are no real roots" << endl;
        }
    }
    dataFile.close();
}

