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
    void testTransferValue(int val, int secondVal = 2, int thirdVal = 3); ///< 默认参数必须连续放最后
};


#endif //HGSTUDY_FUNCTION_H
