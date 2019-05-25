//
// Created by KenmuHuang on 2019-05-04.
// Copyright (c) 2019 KenmuHuang. All rights reserved.
//

#ifndef HGSTUDY_FUNCTION_H
#define HGSTUDY_FUNCTION_H

#include <iostream>
#include <math.h>

using namespace std;

class Function {
public:
    void testVolume(double radius, double height);
    void testTransferValue(int val);
    void testTransferValue(int val, int secondVal = 2, int thirdVal = 3); ///<「传值参数」的默认参数必须连续放最后
    bool testTransferPointer(int *a, int *b); ///<「指针参数」
    bool testTransferReference(int &a, int &b); ///<「引用参数」相当于别名

private:
    void swapPointer(int *a, int *b);
    void swapReference(int &a, int &b);
};


#endif //HGSTUDY_FUNCTION_H
