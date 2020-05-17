//
// Created by KenmuHuang on 2020/5/17.
// Copyright (c) 2020 KenmuHuang. All rights reserved.
//

#include "ExamOS.h"
#include <iostream>

using namespace std;

#define true  1
#define false 0

char Name[] = {'A', 'B', 'C', 'D', 'E'}; // 资源的名称
int Available[] = {50, 50, 50, 50, 50}; // 系统可用资源
int Max[100][100] = {0}; // 各进程所需各类资源的最大需求
int Allocation[100][100] = {0}; // 系统已分配资源
int Need[100][100] = {0}; // 还需要资源
int Request[100] = {0}; // 请求资源
int Work[100] = {0}; // 存放系统可提供资源
int SafeSequence[100] = {0}; // 存放安全序列
int ProcessMax = 100; // 作业的最大数
int ResourceCount = sizeof(Name) / sizeof(char); // 资源的数量

void ExamOS::testBankOS() {
    int processCount, flag;
    int choice = 1; // 作为 while 的循环条件，同时作为选项值；默认选择 1

    cout << "***********银行家算法***********" << endl;
    cout << "请输入作业的数量：";
    cin >> processCount;
    ProcessMax = processCount;

    cout << "请输入各进程的最大需求量（" << processCount << " * " << ResourceCount << "矩阵）[Max]：" << endl;
    for (int i = 0; i < processCount; i++)
        for (int j = 0; j < ResourceCount; j++) {
            cin >> Max[i][j];
        }
    do {
        flag = false;
        cout << "请输入各进程已经分配资源量（" << processCount << " * " << ResourceCount << "矩阵）[Allocation]：" << endl;
        for (int i = 0; i < processCount; i++)
            for (int j = 0; j < ResourceCount; j++) {
                cin >> Allocation[i][j];
                if (Allocation[i][j] > Max[i][j]) {
                    flag = true;
                }
                Need[i][j] = Max[i][j] - Allocation[i][j];
            }
        if (flag)
            cout << "首次输入的已分配资源已经大于最大需求量，请重新输入\n";
    } while (flag);

    //显示
    showInfo();

    // 安全检测
    safe();

    while (choice) {
        cout << "**************银行家算法***************" << endl;
        cout << " 1：分配资源" << endl;
        cout << " 2：显示状态" << endl;
        cout << " 0：离开" << endl;
        cout << "*******************************************" << endl;
        cout << "请选择功能号：";
        cin >> choice;
        switch (choice) {
            case 1:
                request();
                break;
            case 2: {
                cout << "*******************************************" << endl;
                cout << "现在的状态是：";
                showInfo();
                break;
            }
            case 0:
                choice = 0;
                break;
            default:
                cout << "请正确选择功能号（0，1，2）" << endl;
                break;
        }
    }
}

#pragma mark - Private Method
// 显示资源矩阵
void ExamOS::showInfo() {
    int i, j;
    // 显示可分配的资源名称
    cout << "系统可用资源[Available]：" << endl;
    for (i = 0; i < ResourceCount; i++) {
        cout << Name[i] << "   ";
    }
    cout << endl;

    // 显示可分配的资源
    for (j = 0; j < ResourceCount; j++) {
        cout << Available[j] << "  ";
    }
    cout << endl;

    cout << "              Max         Allocation         Need" << endl;
    cout << "进程名      ";
    // MAX ALLOCATION NEED 列
    for (j = 0; j < 3; j++) {
        for (i = 0; i < ResourceCount; i++) {
            cout << Name[i] << " ";
        }
        cout << "      ";
    }
    cout << endl;

    for (i = 0; i < ProcessMax; i++) {
        // 输出进程名
        cout << " " << i << "         ";
        for (j = 0; j < ResourceCount; j++) {
            // 输出最大
            cout << Max[i][j] << " ";
        }
        cout << "      ";

        for (j = 0; j < ResourceCount; j++) {
            // 输出已分配
            cout << Allocation[i][j] << " ";
        }
        cout << "      ";

        for (j = 0; j < ResourceCount; j++) {
            // 输出需求
            cout << Need[i][j] << " ";
        }
        cout << endl;
    }
}

// 进行资源分配
int ExamOS::changeData(int i) {
    // 对每个作业进行银行家算法分配
    for (int j = 0; j < ProcessMax; j++) {
        Available[j] = Available[j] - Request[j];
        Allocation[i][j] = Allocation[i][j] + Request[j];
        Need[i][j] = Need[i][j] - Request[j];
    }
    return 1;
}

// 安全性算法
int ExamOS::safe() {
    int k = 0, m, apply, Finish[100] = {0};

    for (int i = 0; i < ResourceCount; i++) {
        Work[i] = Available[i];
    }

    for (int i = 0; i < ProcessMax; i++) {
        apply = 0;
        for (int j = 0; j < ResourceCount; j++) {
            if (Finish[i] == false && Need[i][j] <= Work[j]) {
                // 经过验证之后 apply 会增加到和资源数相等
                apply++;
                if (apply == ResourceCount) {
                    for (m = 0; m < ResourceCount; m++) {
                        // 释放可用资源
                        Work[m] = Work[m] + Allocation[i][m];
                    }

                    // 置安全
                    Finish[i] = true;

                    // 记录安全进程名
                    SafeSequence[k] = i;

                    // 让i跳出资源层循环时回到初始状态
                    i = -1;

                    // 安全序列下标前进位
                    k++;
                }
            }
        }
    }

    for (int i = 0; i < ProcessMax; i++) {
        if (Finish[i] == false) {
            // 系统不安全
            cout << "系统不安全！" << endl;
            return -1;
        }
    }

    // 系统安全
    cout << "系统是安全的！" << endl;

    cout << "分配的序列：";
    for (int i = 0; i < ProcessMax; i++) {
        // 输出运行进程数组
        cout << SafeSequence[i];
        if (i < ProcessMax - 1) cout << "->";
    }
    cout << endl;
    return 0;
}

// 判定申请资源
void ExamOS::request() {
    char ch;
    int i = 0;
    ch = 'y';
    cout << "请输入要求分配的资源进程号(0-" << ProcessMax - 1 << ")：";

    // 输入须申请的资源号
    cin >> i;

    cout << "请输入进程" << i << " 申请的资源：" << endl;
    for (int j = 0; j < ResourceCount; j++) {
        cout << Name[j] << "：";

        // 输入需要申请的资源数目
        cin >> Request[j];
    }

    for (int j = 0; j < ResourceCount; j++) {
        if (Request[j] > Need[i][j]) {
            cout << "进程" << i << "申请的资源大于它需要的资源";
            cout << "不予分配！" << endl;
            ch = 'n';
            break;
        } else {
            if (Request[j] > Available[j]) {
                // 申请大于当前资源
                cout << "进程" << i << "申请的资源大于系统现在可利用的资源";
                cout << "不予分配！" << endl;
                ch = 'n';
                break;
            }
        }
    }

    if (ch == 'y') {
        changeData(i);
        showInfo();
        safe();
    }
}

