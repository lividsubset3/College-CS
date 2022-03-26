/*
    Patrick Rakowicz
    CS 191
    Rational 1

Write a single file program to prototype, define and then test a class for rational numbers.
Recall that a rational number is a number in the form a/b, where a, b are integers and b is not 0. Examples: 2/3, -8/5, 0/20
*/

#include <iostream>

using namespace std;

class Rational {
private:
    int num, den;
public:
    Rational() {
        num = 0;
        den = 1;
    };
    Rational(int n, int d) {
        num = n;
        if (d == 0) {
            cout << "Error! ~ Has to be greater then 0 ~" << "\n";
            exit(1);
        } else
            den = d;
    };

    void load();
    void display();
    void set(int, int);

    int getDen();
    int getNum();
    double getApprox();

    void add(Rational);
    void sub(Rational);
    void multi(Rational);
    void div(Rational);
};

void Rational::load() {
    cout << "Enter Num / Den: ";
    cin >> num >> den;
}

void Rational::display() {
    cout << num << " | " << den << "\n";
}

void Rational::set(int n, int d) {
    num = n;
    if (d == 0) {
        cout << "Error! ~ Has to be greater then 0 ~" << "\n";
        exit(1);
    } else
        den = d;
}

int Rational::getDen() {
    return den;
}

int Rational::getNum() {
    return num;
}

int main() {
    Rational test1 = Rational();
    Rational test2 = Rational(3, 2);
    Rational test3 = Rational();

    test1.display();
    test2.display();

//    test1.load();
//    test1.display();

    test3.set(5, 2);
    test3.display();

    cout << test3.getDen();
}