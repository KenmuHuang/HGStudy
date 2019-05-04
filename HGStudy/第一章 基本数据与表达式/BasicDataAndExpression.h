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
    void testPrint();
    void testPointTypeConvert();
    static void testStaticMethod(double r);

private:
    void compare(char firstChar, char secondChar);
};


#endif //HGSTUDY_BASICDATAANDEXPRESSION_H
