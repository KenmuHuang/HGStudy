//
// Created by KenmuHuang on 2019-05-04.
// Copyright (c) 2019 KenmuHuang. All rights reserved.
//

#include "ProgramControlStructure.h"

void ProgramControlStructure::testIf() {
    printf("---------- 测试函数名 %s ----------\n", __FUNCTION__);

    int i = 0, j = 10, k, tempVal;
    int max;
    if (i < j) {
        max = j;
    } else {
        max = i;
    }
    printf("max = %d\n", max);

    max = i < j ? j : i;
    printf("max = %d\n", max);

    max = (i, j);
    printf("max = %d\n", max);

    /*
    cout << "输入三个整数，按从小到大顺序输出" << endl;
    cin >> i >> j >> k;
    if (i > j) {
        tempVal = i;
        i = j;
        j = tempVal;
    }
    if (i > k) {
        tempVal = i;
        i = k;
        k = tempVal;
    }
    if (j > k) {
        tempVal = j;
        j = k;
        k = tempVal;
    }
    cout << i << ", " << j << ", " << k << endl;
     */

    cout << "请输入字符转小写" << endl;
    char l;
    cin >> l;
    if (l >= 'A' && l <= 'Z') {
        l += 32; // 大小写的 ASCII 码相差 32
    }
    cout << "转换后的小写为" << l << endl;
}

void ProgramControlStructure::testSwitch() {
    enum MonthOfYear {
        January = 1,
        February,
        March,
        April,
        May,
        June,
        July,
        August,
        September,
        October,
        November,
        December
    };

    cout << "判断日期的有效性，请分别输入年月日（yyyyMMdd）" << endl;
    int year, month, day;
    cin >> year >> month >> day;
    int dayInMonth;
    switch (month) {
        case January:
        case March:
        case May:
        case July:
        case August:
        case October:
        case December: {
            // 1、3、5、7、8、10、12 月份
            dayInMonth = 31;
        }
            break;
        case April:
        case June:
        case September:
        case November: {
            // 4、6、9、11 月份
            dayInMonth = 30;
        }
            break;
        case February: {
            int daysInFebruary; // 二月特殊
            if (year % 4 != 0) {
                daysInFebruary = 28;
            } else if (year % 400 == 0) {
                daysInFebruary = 29;
            } else if (year % 100 == 0) {
                daysInFebruary = 28;
            } else {
                daysInFebruary = 29;
            }

            dayInMonth = daysInFebruary;
        }
            break;
        default: {
            cout << "非法月份：" << month << endl;
        }
            break;
    }

    if (day < 1 || day > dayInMonth) {
        cout << "非法日：" << day << endl;
        return;
    }

    cout << year << "-" << setw(2) << setfill('0') << month << "-" << setw(2) << setfill('0') << day << endl;
//    printf("%d-%02d-%02d\n", year, month, day);
}
