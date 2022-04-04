//
// Created by Pat Rak on 4/1/22.
//

#include <iostream>
#include "LinkedList.h"

using namespace std;

int main() {
    LinkedList l1 = LinkedList();       // Make Empty List
    l1.addToTop(14);        // Add to top of list
    l1.addToTop(-5);
    l1.addToTop(22);
    l1.addToBottom(22);
    l1.display();
    cout << l1.getSize() << "\n";
    cout << l1.countPos() << "\n";
}
