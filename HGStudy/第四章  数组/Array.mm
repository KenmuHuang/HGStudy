//
// Created by KenmuHuang on 2019-05-05.
// Copyright (c) 2019 KenmuHuang. All rights reserved.
//

#include "Array.h"

void Array::testDefinition() {
    const int count = 5;
    int a[count] = {1, 3, 5, 7, 9}; // 数组大小必须为常量；越界情况下：a[5] = 0，a[6] 开始为非正常值
    int b[5] = {1};
    int c[] = {1, 2, 3};// 数组大小由元素决定；越界情况下：a[3] = 1，a[6] 开始为非正常值
//    int d[5] = {1, 2, 3, 4, 5, 6, 7}; // 定义数组元素超过可容纳大小
    if (a[1] > b[1] && a[5] < c[3]) {
        printf("%d 大于 %d，并且 %d 小于 %d\n", a[1], b[1], a[5], c[3]);
    }

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
