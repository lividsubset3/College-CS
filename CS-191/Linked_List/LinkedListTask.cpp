//
// Created by Pat Rak on 4/1/22.
//

#include <iostream>
#include "LinkedList.h"

using namespace std;

int main() {
    LinkedList l1 = LinkedList();       // Make Empty List

//    l1.addToTop(-5);
//    l1.addToTop(0);
    l1.addToBottom(-5);
    l1.addToBottom(-10);
    l1.addToTop(20);
    l1.addToBottom(-15);

    l1.display();
}
