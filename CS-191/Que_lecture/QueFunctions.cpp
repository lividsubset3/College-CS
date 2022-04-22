//
// Created by Pat Rak on 4/22/22.
//

// #include "QueFunctions.h"

#include "Queue.h"

Queue::Queue() {

}

bool Queue::isEmpty() {
    return size == 0;
}

void Queue::append(int v) {
    Node *p = new Node;
    p->data = v;
    p->next = nullptr;
    tail = p;
    size++;
}

int Queue::serve() {
    Node *p = head;
    head = head->next;
    int v = p->data;
    delete p;
    size--;
    return v;
}
