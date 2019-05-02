//
// Created by KenmuHuang on 2019-05-01.
// Copyright (c) 2019 KenmuHuang. All rights reserved.
//

#ifndef HGSTUDY_BASICDATAANDEXPRESSION_H
#define HGSTUDY_BASICDATAANDEXPRESSION_H

#include <iostream>

using namespace std;

enum colorType {
    red = 0,
    yellow,
    blue,
    white,
    black,
};

class BasicDataAndExpression {
public:
    void testMethod();
    void testBasicData();
    void testExpression();

    void testEnum(int type);
    static void testStaticMethod(double r);
};


#endif //HGSTUDY_BASICDATAANDEXPRESSION_H
