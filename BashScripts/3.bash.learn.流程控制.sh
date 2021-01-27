#!/usr/bin/sh


# 判断、循环、流程控制
# if, case, for, while, until


# 1. if 语句（判断）
if [ condition1 ]               # 注意空格
then
    command1
elif [ condition2 ]             #
then
    command2
else
    command3
if
# example
a=3                             # 定义变量 = 两侧一定不能有空格
b=4
if [ $a -lt $b ]                # [] 和变量名直接一定要有空格，大小比较不能用 >, < （用于重定向）
then
	echo "$a is lower than $b"
fi                              # 结尾用与 if 对应的 fi 结束

