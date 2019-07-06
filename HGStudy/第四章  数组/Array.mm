//
// Created by KenmuHuang on 2019-05-05.
// Copyright (c) 2019 KenmuHuang. All rights reserved.
//

#include "Array.h"

void Array::testDefinition() {
    const int count = 5;
    int a[count] = {1, 3, 5, 7, 9}; // 数组大小必须为常量；越界情况下：a[5] = 0，a[6] 开始为非正常值
    int b[5] = {1, 2}; // 除了第 1-2 元素外，剩下的 3 个元素默认为 0
    int c[] = {1, 2, 3}; // 数组大小由元素决定；越界情况下：a[3] = 1，a[6] 开始为非正常值
//    int d[5] = {1, 2, 3, 4, 5, 6, 7}; // 定义数组元素超过可容纳大小
    if (a[1] > b[1] && a[5] < c[3]) {
        printf("%d 大于 %d，并且 %d 小于 %d\n", a[1], b[1], a[5], c[3]); // 3 大于 0，并且 0 小于 1
    }

    // b == &b[0], *b == b[0]
    // b + 1 == &b[1], *(b + 1) = b[1]
    // b + i == &b[i], *(b + i) = b[i]
    printf("b = %p, &b[1] = %p\n", b, &b[1]); // b = 0x7ffeefbff380, &b[1] = 0x7ffeefbff384；b 指向第 1 个元素地址（起始地址），每个元素为 int 类型占 4 字节，所以打印为 380 和 384
    for (int i = 0, len = sizeof(b) / sizeof(int); i < len; ++i) {
        printf("b[%d] = %d, &b[%d] = %p\n", i, *(b + i), i, b + i); // 格式：b[0] = 1, &b[0] = 0x7ffeefbff380
    }

    int *p;
    p = b; // p = &b[0]
    printf("*p = %d\n", *p); // *p = 1
    p++; // p = &b[1]
    printf("*(p++) = %d\n", *(p++)); // *(p++) = 2
    p += 2; // p = &b[1 + 1 + 2]
    printf("*p = %d, p = %p\n", *p, p); // *p = 0, p = 0x7ffeefbff390

/*
    char *p1 = "name";
    char p2[] = "name";
    int a[] = {'A', 'B', 'C'};
    printf("%c, %d\n", a[1], a[1]);

    int i = 4;
    int j = -2<i<2;
    printf("%d\n", j);

    char *s[]={"Beijing", "Shanghai", "Guangzhou"};
    printf("%s\n", *(s+1)+7);

    char *str2 = "源头：src - source";
    char str1[] = "目的地：dst - destination";
    strcpy(str1, str2);
    printf("%s\t%d\n", str1, (++i*5));

    printf("%d\t%d\n", this->lcm(3, 7), this->lcm(4, 6));

    int a1[2][3] = {0, 1, 2, 3, 4, 5};
    printf("strcmp: %d\n", strcmp("AE", "AF"));

    int *p = new int(10);
    p[10] = 20;
    printf("%d\n", p[10]);
    delete[]p;

    char *s1="ABCDE";
    cout<<*(s1+1)<<endl;
    cout<<(s1+1)<<endl;
    cout<< strlen(s1)<<endl;

    char a2[2][6] = {"hello","world"};


    double a4; double *r =&a4;

    int x=1; while(++x<7)cout<<x;*/
}

void Array::testPointArray() {
    int normalArray[3] = {10, 20, 30};
    int *pointArray[3];
    for (int i = 0, len = sizeof(normalArray) / sizeof(int); i < len; ++i) {
        pointArray[i] = &normalArray[i];
        printf("pointArray[%d] = %p, *pointArray[%d] = %d\n", i, pointArray[i], i, *pointArray[i]); // 格式：pointArray[0] = 0x7ffeefbff3ac, *pointArray[0] = 10
    }
}

void Array::testMultiDimension() {
    int a[2][3] = {{1, 2, 3}, {4, 5, 6}}; // 二维数组：2 行 3 列
    int b[2][3] = {1, 2, 3, 4, 5, 6}; // 二维数组：2 行 3 列；等同上面
    int c[][3] = {1, 2, 3, 4, 5, 6, 7, 8, 9}; // 二维数组：3 行 3 列；第一维长度自动计算为 3；如果是 10 个元素，第一维长度自动计算为 4；不够的后面元素默认为 0
    int d[][3] = {{1}, {4}, {7}};  // 二维数组：3 行 3 列；仅对第 0 列初始化赋值
    int e[2][3][4] = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12}; // 三维数组：2 * 3 * 4 = 24 个元素；不够的后面元素默认为 0

    printf("len of a = %d\n", int(sizeof(a) / sizeof(int))); // len of a = 6
    printf("len of b = %d\n", int(sizeof(b) / sizeof(b[0][0]))); // len of b = 6
    printf("len of c = %d\n", int(sizeof(c) / sizeof(c[0][0]))); // len of c = 9
    printf("len of d = %d\n", int(sizeof(d) / sizeof(d[0][0]))); // len of d = 9
    printf("len of e = %d\n", int(sizeof(e) / sizeof(e[0][0][0]))); // len of e = 24
}
