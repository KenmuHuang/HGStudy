//
// Created by KenmuHuang on 2020/5/17.
// Copyright (c) 2020 KenmuHuang. All rights reserved.
//

#include "ExamOS.h"

void ExamOS::testBankOS() {
    double l, w, h;
    printf("请分别输入立方体的长宽高，中间以空格分隔：\n");
    scanf("%lf%lf%lf", &l, &w, &h);
    printf("立方体的长宽高分别为：%0.2lf %0.2lf %0.2lf\n", l, w, h);
}

#pragma mark - Private Method

