#!/usr/bin/sh


# 访问数组、遍历数组、字符串选取、拼接、替换
# Bash 只支持一维数组，用圆括号()包裹，元素之间用“空格”分割（不用逗号分割）
# 直接初始化（赋值）
arr_name=(value1 value2 value3 ... valueN)
# 索引/下标初始化
arr_name[0]=value1
arr_name[1]=value2
arr_name[12]=value13    # 不连续初始化（不会填充跳过的索引）


# 访问数组元素
${arr_name[idx]}        # 注意 {} 的包裹，容易忽略，引起
# 遍历数组
${arr_name[*]}          # * 通配符选择所有元素
${arr_name[@]}          # @ 选择数组
# 数组长度，在遍历数组的基础上计算元素数
${#arr_name[*]}         # 遍历，并计数
${#arr_name[@]}


# 定义字串
str=hello
str='hello'
str="hello"             # 不用引号，单引号，双引号均可定义字串（非纯数值）
# 字串长度
${#str}                 # 字串本身是整体元素，不用[]遍历元素
# 拼接字串
str1='zhang'
str2='san'
str3=${str1}" "${str2}  # 使用空格连接即可（单词之间需要空格）
echo ${str3}
