//
// Created by Pat Rak on 4/1/22.
//

#ifndef LINKED_LIST_LINKEDLIST_H
#define LINKED_LIST_LINKEDLIST_H

struct Node {
    int data;
    Node *next;
};

class LinkedList {
private:
    Node *top, *bottom;
    int size;
public:
    LinkedList();

    void addToTop(int);
    void addToBottom(int);
    int getSize();
    bool deleteVal(int);
    double average();


    void display();
    int countPos();
};


#endif //LINKED_LIST_LINKEDLIST_H
