#!/usr/bin/sh

# 使用#!行告诉系统解释器的位置在/usr/bin/sh或者/bin/bash
# shell的运行有两种方式：
# chmod +x ./shellscript.sh & ./shellscript.sh # 先给执行权限再运行
# sh ./shellscript.sh # 直接用解释器运行

# 1. 定义变量时，变量前不加$符号，调用时才加；变量名不能有空格，=前后不能有空格。
# 2. 调用变量时，变量名最好用{}括起来，避免和后面的字符连接，引起歧义。
# 3. echo打印字符串可以不加引号（也可以加）。
# 4. 字符串连接，直接在调用时依次出现即可。

bianliang1="zhang"
echo "your 1st name is" ${bianliang1}

bianliang2="dier"
echo your 2nd name is $bianliang2

echo your names are 1st:$bianliang1 2nd:${bianliang2}


# 5. 打印字符串长度，在{}括起来的变量名内增加#号，用于计算字串长度。

zichuanchangdu="ceshizifuchuan"
echo ${#zichuanchangdu} # 加#直接计算长度（类似perl#获得末位下标）

# 6. 单引号不支持内插，双引号支持内插。
# 7. 变量名后加:和字串下标，可提取部分字串。

zichuantiqu="ceshi de dai tiqu zichuan"
echo ${zichuantiqu:1:12} # 提取zichuantiqu的1到12位的字符

zichuanchazhao="ceshi de dai chazhao zichuan"
echo `expr index "$zichuanchazhao" is`
