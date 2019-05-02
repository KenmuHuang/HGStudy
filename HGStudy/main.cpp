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
    BasicDataAndExpression().testMethod();
    BasicDataAndExpression::testStaticMethod(5.5);
    BasicDataAndExpression().testStaticMethod(6.0);

    std::cout << "Hello, World!\n";
    return 0;

}