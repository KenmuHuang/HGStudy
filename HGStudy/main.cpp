//
//  main.cpp
//  HGStudy
//
//  Created by KenmuHuang on 2019-05-01.
//  Copyright © 2019 KenmuHuang. All rights reserved.
//

#include <iostream>
#include "BasicDataAndExpression.h"
#include "ProgramControlStructure.h"
#include "Function.h"
#include "Array.h"
#include "SetAndStructure.h"
#include "Exam.h"

void testBasicDataAndExpression() {
    BasicDataAndExpression obj = BasicDataAndExpression();
    obj.testBasicData();
    obj.testExpression();
    obj.testEnum(blue);
    obj.testEnum(10);
    obj.testPrint();
    obj.testPointer();
    obj.testPointerTypeConvert();
    obj.testMethod();
    BasicDataAndExpression::testStaticMethod(5.5);
    obj.testStaticMethod(6.0);
}

void testProgramControlStructure() {
    ProgramControlStructure obj = ProgramControlStructure();
    obj.testIf();
    obj.testSwitch();
    obj.testWhile();
    obj.testFor();
}

void testFunction() {
    Function obj = Function();
    obj.testVolume(5.0, 8.5);
    obj.testTransferValue(10, 20);
    obj.testTransferValue(10, 20, 30);
//    obj.testTransferValue(10); // 由于三个参数的重载函数有默认值，所以会导致编译器无法判断调用哪个

    int a = 5, b = 10;
    int *i, *j;
    i = &a;
    j = &b;
    bool isSwapSuccess = obj.testTransferPointer(i, &*j); // 或者 obj.testTransferPointer(&a, &b);
    printf("指针参数交换会改变实参？%s\n", (isSwapSuccess ? "是" : "否"));

    isSwapSuccess = obj.testTransferReference(*i, *j); // 或者同样 a 和 b 参数对应的 obj.testTransferReference(a, b);
    printf("引用参数交换会改变实参？%s\n", (isSwapSuccess ? "是" : "否"));

    int *max = obj.testReturnPointer(&a, &b);
    printf("*max = %d, max = %p\n", *max, max);
}

void testArray() {
    Array obj = Array();
}

void testSetAndStructure() {
    SetAndStructure obj = SetAndStructure();
//    obj.testBitOperation();
    obj.testStructure();
}

void testExam() {
    Exam obj = Exam();
    obj.testStructure();
    obj.testCalculation();
    obj.testAverage();
}

int main(int argc, const char * argv[]) {
    // 第一章 基本数据与表达式
//    testBasicDataAndExpression();

    // 第二章  程序控制结构
//    testProgramControlStructure();

    // 第三章  函数
    testFunction();

    // 第四章  数组
//    testArray();

    // 第五章  集合与结构
//    testSetAndStructure();

    // 实验  建立控制台应用程序
//    testExam();

    std::cout << "Hello, World!\n";
    return 0;

}

