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

bool Function::testTransferPointer(int *a, int *b) {
    printf("---------- 测试函数名 %s（指针参数） ----------\n", __FUNCTION__);

    int temp = *a;
    this->swapPointer(a, b);

    return temp != *a;
}

bool Function::testTransferReference(int &a, int &b) {
    printf("---------- 测试函数名 %s（引用参数） ----------\n", __FUNCTION__);

    int temp = a;
    this->swapReference(a, b);

    return temp != a;
}

int *Function::testReturnPointer(int *a, int *b) {
    printf("---------- 测试函数名 %s（函数的返回类型 - 指针） ----------\n", __FUNCTION__);

    return this->maxPointer(a, b);
}

int &Function::testReturnReference(int &a, int &b) {
    printf("---------- 测试函数名 %s（函数的返回类型 - 引用） ----------\n", __FUNCTION__);

    return this->maxReference(a, b);
}

long Function::testFunctionNesting(int a, int b) {
    printf("---------- 测试函数名 %s ----------\n", __FUNCTION__);

    return (this->factorial(a) / (this->factorial(b) * this->factorial(a - b)));
}

#pragma mark - Private Method
void Function::swapPointer(int *a, int *b) {
    printf("交换前 a = %d, b = %d\n", *a, *b);
    int temp = *a;
    *a = *b;
    *b = temp;
    printf("交换后 a = %d, b = %d\n", *a, *b);
}

void Function::swapReference(int &a, int &b) {
    printf("交换前 a = %d, b = %d\n", a, b);
    int temp = a;
    a = b;
    b = temp;
    printf("交换后 a = %d, b = %d\n", a, b);
}

int *Function::maxPointer(int *a, int *b) {
    printf("*a = %d, *b = %d, a = %p, b = %p\n", *a, *b, a, b); // *a = 5, *b = 10, a = 0x7ffeefbff574, b = 0x7ffeefbff570
    return *a > *b ? a : b;
//    int temp = 11;
//    return &temp; //< 不建议用局部变量，局部销毁可能导致异常？所以建议使用定义多一个结果参数，比如：int *result
//    return nullptr; // nullptr 表示空指针，其中 ptr 是 pointer 的缩写
}

int &Function::maxReference(int &a, int &b) {
    printf("a = %d, b = %d, &a = %p, &b = %p\n", a, b, &a, &b); // a = 5, b = 10, &a = 0x7ffeefbff574, &b = 0x7ffeefbff570
    return a > b ? a : b;
}

long Function::factorial(int val) {
    long sum = 1;
    for (int i = 1; i <= val; i++) {
        sum *= i;
    }
    printf("%d 的阶乘 = %ld\n", val, sum);
    return sum;
}
