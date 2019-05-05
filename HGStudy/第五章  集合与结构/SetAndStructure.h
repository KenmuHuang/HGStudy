//
// Created by KenmuHuang on 2019-05-05.
// Copyright (c) 2019 KenmuHuang. All rights reserved.
//

#ifndef HGSTUDY_SETANDSTRUCTURE_H
#define HGSTUDY_SETANDSTRUCTURE_H

#include <iostream>

using namespace std;

struct node {
    int data;
    node *next;
};

class SetAndStructure {
public:
    void testBitOperation();
    void testStructure();

private:
    void bitDisplay(unsigned value);
    node *creatList();
};


#endif //HGSTUDY_SETANDSTRUCTURE_H
