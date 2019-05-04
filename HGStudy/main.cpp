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
}

int main(int argc, const char * argv[]) {
    // 第一章 基本数据与表达式
//    testBasicDataAndExpression();

    // 第二章  程序控制结构
    testProgramControlStructure();

    std::cout << "Hello, World!\n";
    return 0;

}

