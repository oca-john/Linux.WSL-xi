#!/usr/bin/sh


# 访问数组、遍历数组、字符串选取、拼接、替换
# Bash 只支持一维数组，用圆括号()包裹，元素之间用“空格”分割（不用逗号分割）
# 直接初始化（赋值）
arr_name=(value1 value2 value3 ... valueN)
# 索引/下标初始化
arr_name[0]=value1
arr_name[1]=value2
arr_name[12]=value13    # 不连续初始化（不会填充跳过的索引）
