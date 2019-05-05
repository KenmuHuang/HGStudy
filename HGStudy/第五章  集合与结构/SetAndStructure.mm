//
// Created by KenmuHuang on 2019-05-05.
// Copyright (c) 2019 KenmuHuang. All rights reserved.
//

#include "SetAndStructure.h"

void SetAndStructure::testBitOperation() {
    printf("---------- 测试函数名 %s ----------\n", __FUNCTION__);

    cout << "请输入进行位运算的两个数" << endl;

    unsigned i, j;
    cin >> i >> j;
    bitDisplay(i);
    bitDisplay(j);

    cout << i << '&' << j << " = \n";
    bitDisplay(i&j); // 按位与运算：左右操作数对应的每一位分别做逻辑与运算

    cout << i << "&&" << j << " = \n";
    bitDisplay(i&&j);

    cout << i << '|' << j << " = \n";
    bitDisplay(i|j); // 按位或运算：左右操作数对应的每一位分别做逻辑或运算

    cout << i << "||" << j << " = \n";
    bitDisplay(i||j);

    cout << i << '^' << j << " = \n";
    bitDisplay(i^j); // 按位异或运算：当左右操作数对应位不相同，即当且仅当其中一个为1时，位操作的结果才为1

    cout << i << "<<" << j << " = \n";
    bitDisplay(i<<j); // 左移：对于一个整数，每左移一位就相当于乘以2（结果不溢出时）；做算术左移时，只要不溢出，不会移动符号位

    cout << i << ">>" << j << " = \n";
    bitDisplay(i>>j); // 右移：对于一个整数，每右移一位就相当于整除以2；做算术右移时，不会移动符号位

    cout << '~' << i << " = \n";
    bitDisplay(~i); // 按位取反：单目运算。对操作数按位做逻辑非；负数在计算机中用补码表示。11110101是-11的补码
}

void SetAndStructure::testStructure() {
    printf("---------- 测试函数名 %s ----------\n", __FUNCTION__);

    cout << "请输入链表数据" << endl;
    node *head = creatList();
    while (head != NULL) {
        cout << head->data << "  ";
        head = head->next;
    }
    cout << endl;
}

#pragma mark - Private Method
void SetAndStructure::bitDisplay(unsigned value) {
    unsigned bitMask = 1<<31; //掩码，最高位置1
    cout << value << " = ";
    for (unsigned i = 1; i <= 32; i++) {
        cout << (value & bitMask ? '1' : '0');
        value <<= 1;
        if (i % 8 == 0) {
            cout << ' ';
        }
    }
    cout << "\n" << endl;
}

node *SetAndStructure::creatList() {
    node *head = NULL;
    node *s, *p;
    s = new node;
    cin >> s->data;
    while (s->data != 0) {
        if (head == NULL) {
            head = s;
        } else {
            p->next = s;
        }

        p = s;
        s = new node;
        cin >> s->data;
    }
    p->next = NULL;
    delete s;

    return (head);
}
