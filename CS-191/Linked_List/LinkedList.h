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

    bool deleteVal(int);
    void deleteTop();
    void deleteBottom();
    int countValues(int);
    double average();

    int getSize();
    void display();
    int countPos();
};


#endif //LINKED_LIST_LINKEDLIST_H
