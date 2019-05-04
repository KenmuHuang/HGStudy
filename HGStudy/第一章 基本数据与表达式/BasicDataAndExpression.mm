//
// Created by KenmuHuang on 2019-05-01.
// Copyright (c) 2019 KenmuHuang. All rights reserved.
//

#include "BasicDataAndExpression.h"

void BasicDataAndExpression::testMethod() {
    printf("---------- 测试函数名 %s ----------\n", __FUNCTION__);

    double r = 0.0;
    cout << "Please input radius:\n";
    cin >> r;
    this->testStaticMethod(r); // BasicDataAndExpression::testStaticMethod(r);
}

void BasicDataAndExpression::testBasicData() {
    printf("---------- 测试函数名 %s ----------\n", __FUNCTION__);

    // 关键字（不可作为名称，名称本身大小写敏感，以下划线或字母开头）：while, if, static, break, char, goto, sizeof, case, extern, switch, new
    // 不是关键字：If, Static, go, integer
    int _integer = 0xaa;
    cout << "_integer = " << _integer << endl; // _integer = 170；16进制，a 表示 10，10 * （16 的一次方) + 10 * （16 的零次方）= 170
//    char If = 'name'; // 能编译会警告，但值为最后的字符 'e'
//    cout << "If = " << If << endl;
    char If = 'n'; // 正常字符
    cout << "If = " << If << endl;
    If = '\101'; // ASCII 码（8进制）：转换为10进制后，65 = A
    cout << "If = " << If << endl;
}

void BasicDataAndExpression::testExpression() {
    printf("---------- 测试函数名 %s ----------\n", __FUNCTION__);

    int i = 10, j = 12;
    int *p = &i; // 定义「指向整型对象的指针，可以存放一个整型变量的地址」，左 * 右 &；* 表示「间址运算符、指针运算符」、& 表示「取址运算符」
    *p = j; // 间址操作，赋值可以用 *p = j 或 p = &j; 不能用 p = j，因为 j 不是「int *对象」，也不能 p 不是「int 对象」
    p = &j;
    cout << "i = " << i << endl; // i = 12；指针操作导致 i 和 j 指向地址的实际引用的值一样
    cout << "p = " << p << endl; // p = 0x7ffeefbff5a0；「指针对象」指向地址
    cout << "*p = " << *p << endl; // *p = 12；「指针对象」指向地址 -> 实际引用的值
    cout << "&*p = " << &*p << endl; // &*p = 0x7ffeefbff5a0；「指针对象」指向地址 -> 实际引用的值 -> 指向地址
    cout << "*&*p = " << *&*p << endl; // *&*p = 12；「指针对象」指向地址 -> 实际引用的值 -> 指向地址 -> 实际引用的值

    int a = 5, b = 3, t;
    int &ra = a; // 引用，取址操作；ra 是 a 的别名
    int &rb = b;
    cout << "\n&ra = " << &ra << endl; // &ra = 0x7ffeefbff594
    cout << "&rb = " << &rb << endl; // &rb = 0x7ffeefbff590
    cout << "*&ra = " << *&ra << endl; // *&ra = 5
    cout << "*&rb = " << *&rb << endl; // *&rb = 3
    t = ra; // 相当于 t = *&ra 操作属于「交换指针所指对象的值」。另外一种 int *p1, *p2, *p; p = p1; 操作属于「交换指针值」
    ra = rb;
    rb = t;
    cout << "中间变量转换后\r&ra = " << &ra << endl;
    cout << "&rb = " << &rb << endl;
    cout << "*&ra = " << *&ra << endl; // *&ra = 3
    cout << "*&rb = " << *&rb << endl; // *&rb = 5
    cout << "ra = " << ra << endl; // ra = 3
    cout << "rb = " << rb << endl; // rb = 5

    int ****p4, ***p3, **p2, *p1, k = 3;
    p4 = &p3; // 指向指针的指针
    p3 = &p2;
    p2 = &p1;
    p1 = &k;
    // p4 = &p2; 编译错误，因为 &p2 指向的 p3 只是「int ***对象」不是「int ****对象」
    cout << ****p4 << endl; // 3

    const int m = 23;
    const int *p5 = &m; // 必须加 const 常量标识符
    cout << *p5 << endl; // 23
    p5 = &k; // 可以指向一个变量
    // *p5 = 6; 编译错误，只读常量
    cout << *p5 << endl; // 3

    k = i+++j; // i++ + j，先执行 i + j，再执行 i++；这时 k = 24、i = 13、j = 12
    cout << "\nk = " << k << endl; // k = 24

    int l = ra > rb ? ra : i < k ? i : k; // 相当于 ra > rb ? ra : (i < k ? i : k);
    cout << "\nl = " << l << endl; // l = 13
}

void BasicDataAndExpression::testEnum(int type) {
    printf("---------- 测试函数名 %s ----------\n", __FUNCTION__);

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
        cout << "颜色 = " << colorDesc << "，type = " << type << endl;
    } else {
        cout << "非法颜色" << endl;
    }
}

void BasicDataAndExpression::testPrint() {
    printf("---------- 测试函数名 %s ----------\n", __FUNCTION__);
    char i = '0', j = '2'; // 比较字符的 ASCII 码值
    compare(i, j); // '0' < '2' 吗？是, '0' = 48, '2' = 50

    compare(i++, j); // '0' < '2' 吗？是, '0' = 48, '2' = 50
    i++; // i = 50
    compare(++i, j); // '3' < '2' 吗？否, '3' = 51, '2' = 50

    i = 'A';
    j = 'B';
    compare(i, j); // 'A' < 'B' 吗？是, 'A' = 65, 'B' = 66

    i = 'a';
    j = 'b';
    compare(i, j); // 'a' < 'b' 吗？是, 'a' = 97, 'b' = 98

    int k = 101; // 10进制
    char l = '\101'; // 8进制，对应的10进制值为 65
    printf("%d = '%c', %d = '%c'\n", k, k, l, l); // 101 = 'e', 65 = 'A'
}

void BasicDataAndExpression::testPointTypeConvert() {
    printf("---------- 测试函数名 %s ----------\n", __FUNCTION__);
    int a = 65;
    int *ip;
    void *vp = &a;
    cout << *(int *)vp << endl; // 65
    cout << *(char *)vp << endl; // A
    ip = (int *)vp;
    cout << ip << endl; // 0x7ffeefbff5a4
    cout << *ip << endl; // 65
}

void BasicDataAndExpression::testStaticMethod(double r) {
    printf("---------- 测试函数名 %s ----------\n", __FUNCTION__);

    double girth, area;
    const double PI = 3.1415;
    girth = 2 * PI * r;
    area = PI * r * r;
    cout << "radius = " << r << endl;
    cout << "girth = " << girth << endl;
    cout << "area = " << area << "\n" << endl;
}

#pragma mark - Private Method
void BasicDataAndExpression::compare(char firstChar, char secondChar) {
    bool flag = firstChar < secondChar;
    printf("'%c' < '%c' 吗？%s, '%c' = %d, '%c' = %d \n", firstChar, secondChar, (flag ? "是" : "否"), firstChar, firstChar, secondChar, secondChar);
    // cout << "'a' < 'b' 吗？" << (flag ? "是" : "否") << endl;
}
