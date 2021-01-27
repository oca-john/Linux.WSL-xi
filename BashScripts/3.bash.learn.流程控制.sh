#!/usr/bin/sh


# 判断、循环、流程控制
# if, case, for, while, until


# 1. if 语句（判断）
if [ condition1 ]               # 注意空格
then
    command1
elif [ condition2 ]             # 支持多次嵌套
    command2
else
    command3
fi
# 测试示例
a=3                             # 定义变量 = 两侧一定不能有空格
b=4
if [ $a -lt $b ]                # [] 和变量名直接一定要有空格，大小比较不能用 >, < （用于重定向）
then
	echo "$a is lower than $b"
elif [ $a -gt $b ]
    echo "$a is greater than $b"
else
    echo "$a is equal to $b"
fi                              # if 以 fi 结尾（if 的反拼）


# 2. case 语句（多分支）
case "${var}" in                # "" 的使用不强制
    "$condition1")              # 测试行，以")"结尾
        command1
    ;;                          # 条件块，以";;"结尾
    "$condition2")
        command2
    ;;
    * )                         # 默认（无条件满足时输出此条），相当于 C 语言 case 中的 default
        command_default
    ;;
esac                            # case 以 esac 结尾（case 的反拼）
# 测试示例
case $os in
    Windows|Windows|Win|win)
        echo "your platform is windows."
    ;;
    Linux|linux)
        echo "oh! your platform is linux."
    ;;
    *)
        echo "your platform is not clear."
    ;;
esac


# 3. for 语句（数组循环）


# 4. while 语句（条件循环）


# 5. until 语句（条件循环）


