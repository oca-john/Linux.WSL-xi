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

# 提取子字串
str="test picking string"
substr1=${str:3}            # 从 index=3 的元素开始提取其后所有元素
substr2=${str:2:6}          # 从 index=2 的元素开始提取后面 6 个元素
# 删除子字串
str="abcabcdefabcabc"
echo "${str#a*b}"           # 左(#)起，删除匹配 a*b 的最短子字串(模式左侧 = 起点元素 a)
echo "${str##a*b}"          # 左(##)起，删除匹配 a*b 的最长子字串
echo "${str%a*c}"           # 右(%)起，删除匹配 a*c 的最短子字串(模式右侧 = 末尾元素 c)
echo "${str%%b*c}"          # 右(%%)起，删除匹配 b*c 的最长子字串
# 替换子字串
str="abcdefabc"
echo ${str/"abc"/"FFF"}     # FFFdefabc, 替换第一处匹配项
echo ${str//"abc"/"AAA"}    # AAAdefAAA, 替换所有匹配项
echo ${str/#"abc"/"LLL"}    # LLLdefabc, 替换前缀匹配项
echo ${str/%"abc"/"RRR"}    # abcdefabc, 替换后缀匹配项
# 字串大小写
str="abcDEfg"
echo ${var^^}               # 转大写
echo ${var,,}               # 转小写
