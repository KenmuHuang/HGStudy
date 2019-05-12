//
// Created by KenmuHuang on 2019-05-12.
// Copyright (c) 2019 KenmuHuang. All rights reserved.
//

#include "Exam.h"

void Exam::testStructure() {
    printf("---------- 测试函数名 %s ----------\n", __FUNCTION__);

    /* 学生信息的结构体 */
    struct Student {
        string sno; // 学号
        string sname; // 姓名
        bool sgender; // 性别
        int syear; // 年级
    };

    Student *student = new Student;
    student->sno = "201907162013003";
    student->sname = "黄建武";
    student->sgender = true;
    student->syear = 1;

    printf("学生信息：学号 = %s，姓名 = %s，性别 = %s，年级 = %d\n", student->sno.c_str(), student->sname.c_str(), (student->sgender ? "男" : "女"), student->syear);
}

void Exam::testCalculation() {
    printf("---------- 测试函数名 %s ----------\n", __FUNCTION__);

    double l, w, h;
    printf("请分别输入立方体的长宽高，中间以空格分隔：");
    scanf("%lf%lf%lf", &l, &w, &h);
    printf("立方体的体积和表面积分别为：%0.2lf 和 %0.2lf\n", calVolumn(l, w, h), calArea(l, w, h));
}

void Exam::testAverage() {
    printf("---------- 测试函数名 %s ----------\n", __FUNCTION__);

    int i, count=0, sum=0;
    double average;
    int a[] = { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10};
    for(i=0; i<10; i++)
    {
        if(a[i]%2==0)
            continue;
        sum+=a[i];
        count++;
    }
    average=sum/count; // 存在非整除情况不准的情况，只能保留整数，如题目 3 定义最后一个数字为 13 时；所以应该改为 sum * 1.0 / count
    cout<<"count = "<<count << "\t;\t" << "average = " << average << endl; // count = 5	;	average = 5
}

#pragma mark - Private Method
double Exam::calVolumn(double l, double w, double h) {
    // 立方体的体积
    return l * w * h;
}

double Exam::calArea(double l, double w, double h) {
    // 立方体的表面积
    return 2 * (l * w + l * h + w * h);
}
