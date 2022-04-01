//
// Created by Pat Rak on 4/1/22.
//

#include "LinkedList.h"
#include "iostream"

using namespace std;

LinkedList::LinkedList() {
    top = nullptr;
}

void LinkedList::addToTop(int v) {
    Node *p = new Node;
    p->data = v;
    p->next = top;
    top = p;
}

void LinkedList::display() {
    Node *runner = top;
    while(runner != nullptr) {
        std::cout << runner->data << " ";
        runner = runner->next;
    }
    cout << "\n";
}
