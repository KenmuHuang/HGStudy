//
// Created by KenmuHuang on 2019-05-04.
// Copyright (c) 2019 KenmuHuang. All rights reserved.
//

#include "Function.h"

void Function::testVolume(double radius, double height) {
    printf("---------- 测试函数名 %s ----------\n", __FUNCTION__);

    double volume = 3.14 * pow(radius, 2) * height; // pow(radius, 2) 表示 radius 的 2 次方
    printf("已知圆柱体的半径 = %0.2f 和 高度 = %0.2f，得到体积 = %0.2f\n", radius, height, volume);
}

void Function::testTransferValue(int val) {
//    this->testTransferValue(val, 666, 999); // 也可以
    this->testTransferValue(val, 666);
}

void Function::testTransferValue(int val, int secondVal, int thirdVal) {
    printf("---------- 测试函数名 %s（传值参数） ----------\n", __FUNCTION__);

    printf("val = %d, secondVal = %d, thirdVal = %d, val + secondVal + thirdVal = %d\n", val, secondVal, thirdVal, val + secondVal + thirdVal);
}
