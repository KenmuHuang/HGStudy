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

void BasicDataAndExpression::testStaticMethod(double r) {
    double girth, area;
    const double PI = 3.1415;
    girth = 2 * PI * r;
    area = PI * r * r;
    cout << "radius = " << r << endl;
    cout << "girth = " << girth << endl;
    cout << "area = " << area << "\r\n" << endl;
}
