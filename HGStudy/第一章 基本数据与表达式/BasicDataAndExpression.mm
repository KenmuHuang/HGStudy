//
// Created by KenmuHuang on 2019-05-01.
// Copyright (c) 2019 KenmuHuang. All rights reserved.
//

#include "BasicDataAndExpression.h"

void BasicDataAndExpression::testMethod() {
    double r = 0.0;
    cout << "\nPlease input radius:\n";
    cin >> r;
    this->testStaticMethod(r); // BasicDataAndExpression::testStaticMethod(r);
}

void BasicDataAndExpression::testBasicData() {
    // 关键字（不可作为名称，名称本身大小写敏感，以下划线或字母开头）：while, if, static, break, char, goto, sizeof, case, extern, switch, new
    // 不是关键字：If, Static, go, integer
    int _integer = 0xaa;
    cout << "_integer = " << _integer << endl;
    char If = 'name'; // 能编译会警告，但值为最后的字符 'e'
    cout << "If = " << If << endl;
    If = 'n'; // 正常字符
    cout << "If = " << If << endl;
    If = '\101'; // ASCII 码：101 = A；102 = B
    cout << "If = " << If << endl;
}

void BasicDataAndExpression::testExpression() {
int i = 10, j = 12;
int *p = &i; // 定义「指针对象」，左 * 右 &
*p = j; // 赋值可以用 *p = j; 或 p = &j; 不能用 p = j；「值类型变量的值」不能赋值给「引用类型，对象变量指向地址」
p = &j;
    cout << "i = " << i << endl; // i = 12；指针操作导致 i 和 j 指向地址的实际引用的值一样
    cout << "p = " << p << endl; // p = 0x7ffeefbff5a0；「指针对象」指向地址
    cout << "*p = " << *p << endl; // *p = 12；「指针对象」指向地址 -> 实际引用的值
    cout << "&*p = " << &*p << endl; // &*p = 0x7ffeefbff5a0；「指针对象」指向地址 -> 实际引用的值 -> 指向地址
    cout << "*&*p = " << *&*p << endl; // *&*p = 12；「指针对象」指向地址 -> 实际引用的值 -> 指向地址 -> 实际引用的值

    int a = 5, b = 3, t;
    int &ra = a; // 定义「指针对象」，左 &
    int &rb = b;
    cout << "\n&ra = " << &ra << endl; // &ra = 0x7ffeefbff594
    cout << "&rb = " << &rb << endl; // &rb = 0x7ffeefbff590
    cout << "*&ra = " << *&ra << endl; // *&ra = 5
    cout << "*&rb = " << *&rb << endl; // *&rb = 3
    t = ra;
    ra = rb;
    rb = t;
    cout << "中间变量转换后\r&ra = " << &ra << endl;
    cout << "&rb = " << &rb << endl;
    cout << "*&ra = " << *&ra << endl; // *&ra = 3
    cout << "*&rb = " << *&rb << endl; // *&rb = 5
    cout << "ra = " << ra << endl; // ra = 3
    cout << "rb = " << rb << endl; // rb = 5

    int k = i+++j; // i++ + j，先执行 i + j，再执行 i++；这时 k = 24、i = 13、j = 12
    cout << "\nk = " << k << endl; // k = 24

    int l = ra > rb ? ra : i < k ? i : k; // 相当于 ra > rb ? ra : (i < k ? i : k);
    cout << "\nl = " << l << endl; // l = 13
}

void BasicDataAndExpression::testEnum(int type) {
    string colorDesc = "";
    switch (type) {
        case red: {
            colorDesc = "红色";
        }
            break;
        case yellow: {
            colorDesc = "黄色";
        }
            break;
        case blue: {
            colorDesc = "蓝色";
        }
            break;
        case white: {
            colorDesc = "白色";
        }
            break;
        case black: {
            colorDesc = "黑色";
        }
            break;
        default:
            break;
    }
    if (colorDesc.length() > 0) { // length 也可用 size
        cout << "\n颜色 = " << colorDesc << "，type = " << type << endl;
    } else {
        cout << "\n非法颜色" << endl;
    }
}

void BasicDataAndExpression::testStaticMethod(double r) {
    double girth, area;
    const double PI = 3.1415;
    girth = 2 * PI * r;
    area = PI * r * r;
    cout << "radius = " << r << endl;
    cout << "girth = " << girth << endl;
    cout << "area = " << area << "\n" << endl;
}
