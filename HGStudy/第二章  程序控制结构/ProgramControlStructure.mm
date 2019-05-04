//
// Created by KenmuHuang on 2019-05-04.
// Copyright (c) 2019 KenmuHuang. All rights reserved.
//

#include "ProgramControlStructure.h"

void ProgramControlStructure::testIf() {
    printf("---------- 测试函数名 %s ----------\n", __FUNCTION__);

    int i = 0, j = 10, k, tempVal;
    int max;
    if (i < j) {
        max = j;
    } else {
        max = i;
    }
    printf("max = %d\n", max);

    max = i < j ? j : i;
    printf("max = %d\n", max);

    max = (i, j);
    printf("max = %d\n", max);

    /*
    cout << "输入三个整数，按从小到大顺序输出" << endl;
    cin >> i >> j >> k;
    if (i > j) {
        tempVal = i;
        i = j;
        j = tempVal;
    }
    if (i > k) {
        tempVal = i;
        i = k;
        k = tempVal;
    }
    if (j > k) {
        tempVal = j;
        j = k;
        k = tempVal;
    }
    cout << i << ", " << j << ", " << k << endl;
     */

    cout << "输入字符转小写" << endl;
    char l;
    cin >> l;
    if (l >= 'A' && l <= 'Z') {
        l += 32; // 大小写的 ASCII 码相差 32
    }
    cout << "转换后的小写为" << l << endl;
}
