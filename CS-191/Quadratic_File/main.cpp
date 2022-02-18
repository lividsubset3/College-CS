/*
    191
    Quadratic File
    main.cpp
    Patrick Rakowicz | Caleb Domenico
*/
#include <iostream>
#include <fstream>
#include <string>

using namespace std;

void greeting() {
    cout << "Hello User, Welcome to the Quadratic Calculator..." << endl;
    cout << "This will read from a file..." << endl;
}

int readFile(float &a, float &b, float &c, ifstream &file) {
    float x, y, z;
    // string line;
    if (file.is_open()) {
        while (file >> x >> y >> z) {
            a = x;
            b = y;
            c = z;
        }
    }
}

void disc(int a, int b, int c) {

}

int main() {
    float a, b, c;
    // Greet User
    greeting();

    //open the file
    ifstream dataFile("data.txt");
    readFile(a, b, c, dataFile);
    cout << a << " " << b << " " << c << endl;


/*

    while (not eof) {

        // Is a function
        readFile(a, b, c, theFile)

        // disc Is a function
        if (disc(a, b, c) >= 0) {

            // output “The roots are – “;

            // root1 = calcRoot1(a, b, c) --calcRoot1 is a function

            // root2 = calcRoot2(a, b, c) --calcRoot2 is a function

            //output root1 & root2

        } else {

            // output “No real roots”

        }

    } //while
*/
    // close the file
    dataFile.close();
}

