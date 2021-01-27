#!/usr/bin/sh


# 捕获用户输入
# read，捕获用户输入(折行输入)
echo "Enter your name:"
read user_name                  # 捕获用户输入，赋给变量
echo "Your name is $user_name"  # 调用变量
echo "Enter your age, phone, email:"
read age phone email            # 一次捕获多个输入
echo "your age is: $age, phone is: $phone, email: $email."


# -p，Prompt提示模式，在命令行的同一行上输入（不折行），并捕获
read -p "username:" user_var    # 用 -p 提示模式，提示用户在同一行输入内容
echo "The username is:" $user_var


# -s，Secure静默模式（安全），在提示符后输入时隐藏输入内容
read -p "username : " user_var
read -sp "password : " pass_var # 用 -sp 静默提示模式，提示用户输入，但隐藏输入（安全）
echo
echo "username : " $user_var
echo "password : "  $pass_var


# -a，Array数组模式，引用数组作为输入内容
echo "Enter names : "
read -a names                   # 数组 names 中保存了所需信息
echo "The entered names are : ${names[0]}, ${names[1]}."
# 数组中子项的提取，同样使用[]，注意变量边界在外侧


# 读取文件
# 方法一：cat file（注意：反引号包裹）
value=`cat file`                # 借用 cat 工具读取文件内容，并打印
echo $value

# 方法二：$(<file)
value=$(<file)                  # 用 < 重定向给变量 $()，并打印
echo $value
