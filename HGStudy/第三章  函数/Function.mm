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
