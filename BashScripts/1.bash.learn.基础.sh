#!/usr/bin/sh


# shell 脚本本质上就是 sh 交互式命令的集合，完全按照 sh 中的操作依次进行
# 使用 #! 行告诉系统解释器的位置在 /usr/bin/sh 或者 /bin/bash
# shell 的运行有两种方式：
# chmod +x ./shellscript.sh & ./shellscript.sh # 先给执行权限再运行
# sh ./shellscript.sh # 直接用解释器运行


# 1. 定义变量时，变量前不加 $ 符号，调用时才加；变量名不能有空格，= 前后不能有空格。
# 2. 调用变量时，变量名最好用 {} 括起来，避免和后面的字符连接，引起歧义。
# 3. echo 打印字符串可以不加引号（也可以加）。
# 4. 字符串连接，直接在调用时依次出现即可。
var1="zhang"                                        # 赋值符前后不能有空格，变量赋值不加 $
echo "my name is $var1\n"                           # 变量调用时要加 $，双引号中可内插变量
var2="28"
echo "my age is $var2\n"
echo "my age is ${var2}\n"                          # 使用可选的 {} 标记变量名的边界，防止解释器错误解释变量
printf "my name is: $var1, and my age is: $var2\n"  # printf 与 echo 作用相同


# 5. 打印字符串长度，在 {} 括起来的变量名内增加#号，用于计算字串长度。
length="ceshizifuchuan"
echo ${#length}                                     # 加#直接计算长度(类似 perl # 获得末位下标)
printf ${#length}                                   # 用 {} 标定变量名边界，避免混淆(变量名复杂是必须用 {} 界定)


# 6. 单引号不支持内插，双引号支持内插。
var3="zhang"
echo 'name is: $var'                                # 输出name is: $var
echo "name is: $var"                                # 输出name is: zhang
# readonly 命令将变量设为只读
readonly var3                                       # 修改权限不用加 $ 调用
var3="wang"                                         # 会提示 bash: read-only variable: var3
# unset 可删除变量
unset var3                                          # 删除变量不用加 $ 调用


# 7. 变量名后加:和字串下标，可提取部分字串。
pick="ceshi de dai tiqu zichuan"
echo ${pick:1:12}                                   # 提取 zichuantiqu 的 1 到 12 位的字符
find="ceshi de dai chazhao zichuan"
echo `expr index "$find" is`


# 8. 变量类型和数值计算
# bash 不对变量区分类型，默认都作为字串，若变量中只有数字，则会被认为是数字
# 数值计算可用 let 工具
a=2356
let a++;    #(let a+=1)                             # 两种累加方式都有效
# let 'a++'; let "a++"; 也均能生效
echo $a;    #(echo ${a})                            # 输出时的调用必须加 $， {} 边界可选
# 字符+数字，类型转换（只与是否纯数字有关），字符在计算时作为空值
# ${var/A/B}， bash 中的替换操作，将变量 var 中的 A 替换为 B
b=${a/23/NN}                                        # 纯数字的变量中部分数字替换为字符，变量变为字符型
echo ${b}                                           # 输出：NN56
let b+=2
echo ${b}                                           # 输出：2 （b 是字符，计算时作为空值）
c=${b/NN/87}                                        # 所有字符被换为数字，纯数字变量是数值型
echo ${c}                                           # 输出：8756
# 空变量
d=""
echo ${d}                                           # 空值没有任何输出
let d++                                             # 空值 + 1
echo ${d}                                           # 输出：1
# 未定义变量
echo "f = $f"                                       # 输出：f =
let f++
echo "f = ${f}"                                     # 输出：f = 1


# 9. 作用域
# 环境变量，所有程序都能访问的变量，即 linux 中的 PATH 变量
# 全局变量，bash 中自定义的普通变量默认是全局变量，可在本文件的其他位置引用
# 局部变量，需要使用 local 声明，只能在所在代码块或函数中有效
