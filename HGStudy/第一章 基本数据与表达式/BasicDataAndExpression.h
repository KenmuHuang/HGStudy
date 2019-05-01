//
// Created by KenmuHuang on 2019-05-01.
// Copyright (c) 2019 KenmuHuang. All rights reserved.
//

#ifndef HGSTUDY_BASICDATAANDEXPRESSION_H
#define HGSTUDY_BASICDATAANDEXPRESSION_H

#include <iostream>

using namespace std;

class BasicDataAndExpression {
public:
    void testMethod() {
        double r = 0.0, girth, area;
        const double PI = 3.1415;
        cout << "Please input radius:\n";
        cin >> r;
        girth = 2 * PI * r;
        area = PI * r * r;
        cout << "radius = " << r << endl;
        cout << "girth = " << girth << endl;
        cout << "area = " << area << endl;
        cout << "Hello KenmuHuang" << endl;
    }
};


#endif //HGSTUDY_BASICDATAANDEXPRESSION_H
