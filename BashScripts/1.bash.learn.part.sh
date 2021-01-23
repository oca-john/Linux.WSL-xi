#!/usr/bin/sh

# shell脚本本质上就是sh交互式命令的集合，完全按照sh中的操作依次进行
# 使用#!行告诉系统解释器的位置在/usr/bin/sh或者/bin/bash
# shell的运行有两种方式：
# chmod +x ./shellscript.sh & ./shellscript.sh # 先给执行权限再运行
# sh ./shellscript.sh # 直接用解释器运行

# 1. 定义变量时，变量前不加$符号，调用时才加；变量名不能有空格，=前后不能有空格。
# 2. 调用变量时，变量名最好用{}括起来，避免和后面的字符连接，引起歧义。
# 3. echo打印字符串可以不加引号（也可以加）。
# 4. 字符串连接，直接在调用时依次出现即可。

var1="zhang"                                          # 赋值符前后不能有空格，变量赋值不加$
echo "my name is $var1\n"                             # 变量调用要加$，双引号内变量内插
var2="25"
echo "my age is $var2\n"
echo "my age is ${var2}\n"                            # 使用可选的{}标记变量名的边界，防止解释器错误解释变量
printf "my name is: $var1, and my age is: $var2\n"    # printf与echo作用相同

# 5. 打印字符串长度，在{}括起来的变量名内增加#号，用于计算字串长度。

length="ceshizifuchuan"
echo ${#length}                                       # 加#直接计算长度(类似perl#获得末位下标)
printf ${#length}                                     # 用{}标定变量名边界，避免混淆(变量名复杂是必须用{}界定)

# 6. 单引号不支持内插，双引号支持内插。
# 7. 变量名后加:和字串下标，可提取部分字串。

pick="ceshi de dai tiqu zichuan"
echo ${pick:1:12}                                     # 提取zichuantiqu的1到12位的字符

find="ceshi de dai chazhao zichuan"
echo `expr index "$find" is`
