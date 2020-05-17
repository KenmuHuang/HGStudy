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
#include "ExamOS.h"

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

    int *maxPointer = obj.testReturnPointer(&a, &b); // 指针地址跟 b 的一样
    printf("*maxPointer = %d, maxPointer = %p\n", *maxPointer, maxPointer); // *maxPointer = 10, maxPointer = 0x7ffeefbff570

    int maxReference = obj.testReturnReference(a, b); // 指针地址跟 b 的不一样，新的指针地址
    printf("maxReference = %d, &maxReference = %p\n", maxReference, &maxReference); // maxReference = 10, &maxReference = 0x7ffeefbff54c

    long bin = obj.testFunctionNesting(10, 4); // 10 的阶乘 / (4 的阶乘 * （10 - 4）的阶乘) = 210
    printf("bin = %ld\n", bin);
    bin = obj.testFunctionRecursive(10, 4); // 10 的阶乘 / (4 的阶乘 * （10 - 4）的阶乘) = 210
    printf("bin = %ld\n", bin);
}

void testArray() {
    Array obj = Array();
    obj.testDefinition();
    obj.testPointArray();
    obj.testMultiDimension();
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

void textExamOS() {
    ExamOS obj = ExamOS();
    obj.testBankOS();
}

int main(int argc, const char * argv[]) {
    // 第一章 基本数据与表达式
//    testBasicDataAndExpression();

    // 第二章  程序控制结构
//    testProgramControlStructure();

    // 第三章  函数
//    testFunction();

    // 第四章  数组
//    testArray();

    // 第五章  集合与结构
//    testSetAndStructure();

    // 实验  建立控制台应用程序
//    testExam();

    // 操作系统：银行家死锁避免算法模拟
    textExamOS();

    return 0;

}

