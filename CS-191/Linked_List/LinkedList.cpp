//
// Created by Pat Rak on 4/1/22.
//

#include "LinkedList.h"
#include "iostream"

using namespace std;

// If run time fixed not proportional to # items O(1)

LinkedList::LinkedList() {
    top = nullptr; // NULL
    bottom = nullptr; // NULL
    size = 0;
}

int LinkedList::getSize() {
    return size;
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

double LinkedList::average() {
    int sum = 0;
    Node *runner = top;
    while (runner != nullptr) {
        sum += runner->data;
    }
    return (double) sum / size;
}

bool LinkedList::deleteVal(int v) {
    Node *trail = top;
    Node *lead = top->next;
    while (lead != nullptr && lead->data != v) {
        trail = lead;
        lead = lead->next;
    }
    // cout << "*** found " << lead->data << "\n";
    if (lead != nullptr) {      // If we are at a valid node
        trail->next = lead->next;  // Jump from the current node skip the next and select the one after skipped
        delete lead;
        size--;     // decrease size
        return true;        // Had a deletion
    } else
        return false;  // Tried to delete val 99, Witch is not possible
}

void LinkedList::addToTop(int v) { // O(1) (Order [1])
    if (size == 0) {
        Node *p = new Node; // Allocate mem for new empty node
        p->data = v;        // assign value to new empty node
        p->next = top;      // point to new node with value | if only one node make top | once new node point to new node
        top = p;            // Set top to node
        bottom = p;         // Set Bottom to node
    } else {
        Node *p = new Node; // Allocate mem for new empty node
        p->data = v;        // assign value to new empty node
        p->next = top;      // point to new node with value | if only one node make top | once new node point to new node
        top = p;            // Set top to current node
    }
    size++;
}

void LinkedList::addToBottom(int v) {
    if (size == 0) {
        Node *p = new Node;
        p->data = v;
        p->next = nullptr;
        top = bottom = p;
    } else {
        Node *p = new Node;
        p->data = v;
        p->next = nullptr;
        bottom->next = p;
        bottom = p;
    }
    size++;
}

/*
    part of solution
    runner = top;

    while(runner-> data != target) {
        runner = runner->next;
    }

    Solution #1
    struct node {
        int data
        node *next , y prev;
    }

    runner = top;
    while (runner -> next -> data != target)  {
        runner = runner ->next;
    }
    runner->next = runner->next->next;
    size--;
    delete runner->next;


    // This only works when you are deleting nodes inside the list.
    node *trail = top;
    node *lead = top->next;

    while (lead != nullptr && lead->data != target) {
        trail = lead;
        lead = lead->next;
    }
    trail->next = lead->next;
    size--;
    if (lead != nullptr) {
        delete lead;
        return true;
    } else {
        return false;
    }
*/

/*
void LinkedList::addToBottom(int v) { // O(n)
    if (size != 0) {  // List is not empty
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
    } else { // List is empty
        Node *p = new Node; // Make a new Node
        p->data = v;    // Assign value to new node
        p->next = nullptr; // point new node to null
        top = p; // enable top to new node
        size++; // increment size
    }
}*/

