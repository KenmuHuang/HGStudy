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

void testBasicDataAndExpression() {
    BasicDataAndExpression obj = BasicDataAndExpression();
    obj.testBasicData();
    obj.testExpression();
    obj.testEnum(blue);
    obj.testEnum(10);
    obj.testPrint();
    obj.testPoint();
    obj.testPointTypeConvert();
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
}

void testArray() {
    Array obj = Array();
}

void testSetAndStructure() {
    SetAndStructure obj = SetAndStructure();
//    obj.testBitOperation();
    obj.testStructure();
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
    testSetAndStructure();

    std::cout << "Hello, World!\n";
    return 0;

}

