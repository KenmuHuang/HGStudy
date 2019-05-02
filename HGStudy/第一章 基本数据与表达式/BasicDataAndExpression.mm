//
// Created by KenmuHuang on 2019-05-01.
// Copyright (c) 2019 KenmuHuang. All rights reserved.
//

#include "BasicDataAndExpression.h"

void BasicDataAndExpression::testMethod() {
    double r = 0.0;
    cout << "Please input radius:\n";
    cin >> r;
    this->testStaticMethod(r); // BasicDataAndExpression::testStaticMethod(r);
}

void BasicDataAndExpression::testBasicData() {
    // 关键字（不可作为名称，名称本身大小写敏感，以下划线或字母开头）：while, if, static, break, char, goto, sizeof, case, extern, switch, new
    // 不是关键字：If, Static, go, integer
    int _integer = 0xaa;
    cout << "_integer = " << _integer << endl;
    char If = 'e'; // 能编译，但值为最后的字符 'e'
    cout << "If = " << If << endl;
    If = 'n'; // 正常字符
    cout << "If = " << If << endl;
    If = '\101'; // ASCII 码：101 = A；102 = B
    cout << "If = " << If << endl;
}

void BasicDataAndExpression::testStaticMethod(double r) {
    double girth, area;
    const double PI = 3.1415;
    girth = 2 * PI * r;
    area = PI * r * r;
    cout << "radius = " << r << endl;
    cout << "girth = " << girth << endl;
    cout << "area = " << area << "\r\n" << endl;
}
