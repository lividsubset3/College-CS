//
// Created by Pat Rak on 4/1/22.
//

#include "LinkedList.h"
#include "iostream"

using namespace std;

// If run time fixed not proportional to # items O(1)

LinkedList::LinkedList() {
    top = nullptr; // NULL
    size = 0;
}

void LinkedList::addToTop(int v) { // O(1) (Order [1])
    Node *p = new Node; // Allocate mem for new empty node
    p->data = v;        // assign value to new empty node
    p->next = top;      // point to new node with value | if only one node make top | once new node point to new node
    top = p;            // Set top to current node
    size++;
}

int LinkedList::getSize() {
    return size;
}

int LinkedList::addToBottom(int v) {
    Node *runner = top;        // Runner starts at the top
    while (runner->next != nullptr) { // Checks if node is present and if its not null pointer
        runner = runner->next;   // point to node that has nullptr up next
    }
    Node *p = new Node;  // Make new node
    p->data = v;     // Put the value in the empty node
    p->next = nullptr; // point new node w/ value to null
    runner->next = p; // make the runner point to new node
    size++; // increase size
    // return 0;
}

void LinkedList::display() { // This method is really slow | rt = kn | O(n)
    Node *runner = top;      //Check if top is not null | Select node
    while (runner != nullptr) {    // Check if node is not null
        std::cout << runner->data << " ";   // Print value in node
        runner = runner->next;      // Select next node and repeat until null
    }
    cout << "\n";
}

int LinkedList::countPos() {
    int n = 0;
    Node *runner = top;
    while (runner != nullptr) {
        if (runner->data > 0) { // check if int in node is greater than 0 count 1 n++
            n++;
        }
        runner = runner->next; // Select next node that isn't 0
    }
    return n;
}
