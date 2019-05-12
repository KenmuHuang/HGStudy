//
// Created by KenmuHuang on 2019-05-12.
// Copyright (c) 2019 KenmuHuang. All rights reserved.
//

#ifndef HGSTUDY_EXAM_H
#define HGSTUDY_EXAM_H

#include <iostream>

using namespace std;

class Exam {
public:
    void testStructure();
    void testCalculation();
    void testAverage();

private:
    double calVolumn(double l, double w, double h);
    double calArea(double l, double w, double h);
};


#endif //HGSTUDY_EXAM_H
