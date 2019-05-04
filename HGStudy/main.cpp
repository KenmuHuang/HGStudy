//
//  main.cpp
//  HGStudy
//
//  Created by KenmuHuang on 2019-05-01.
//  Copyright © 2019 KenmuHuang. All rights reserved.
//

#include <iostream>
#include "BasicDataAndExpression.h"

int main(int argc, const char * argv[]) {
    // 第一章 基本数据与表达式
    BasicDataAndExpression obj = BasicDataAndExpression();
    obj.testBasicData();
    obj.testExpression();
    obj.testEnum(blue);
    obj.testEnum(10);
    obj.testPrint();
    obj.testPointTypeConvert();
    obj.testMethod();
    BasicDataAndExpression::testStaticMethod(5.5);
    obj.testStaticMethod(6.0);

    std::cout << "Hello, World!\n";
    return 0;

}