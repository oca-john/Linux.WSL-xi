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
for var in item1 item2 ... itemn    # 对每个待选项执行所有命令
do
    command1
    command2
    ...
    commandn
done
# 测试示例 1（逐词输出）
var="start learning form now"   # 初始化变量值
for var in $var                 # 单个变量提取
do
    echo "$var"                 # 循环打印单个变量（逐词）
done
# 测试示例 2（数值范围）
for num in {10..0..2}           # 从 10 到 0，间隔为 2
do
    echo $num                   # 循环打印 10-0 之间的偶数（闭区间）
done


# 4. while 语句（条件循环）
while [ condition ]
do
    command
done
# 测试示例
i=10
while [ $i -ge 1 ]              # 初始为 10，大于 1，True
do
    if [ $i == 2 ]
    then
        break                   # 等于 2 时，跳过
    fi
    echo "$i"                   # 对非 2 数值，打印
    (( i-- ))                   # 逐次递减
done


# 5. until 语句（条件循环）
until [ expression ]
do
    command1
    command2
    ...
    commandn
done
# 测试示例
max=3
a=1
b=0
until [[ $a -gt $max || $b -gt $max ]]; # a 大于 3 或 b 大于 3 时，终止
do
    echo "a = $a & b = $b."     # 输出
    ((a++))                     # 逐次加 1
    ((b++))
done
