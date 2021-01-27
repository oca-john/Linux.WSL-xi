#!/usr/bin/sh


# 函数定义
function func_name()            # 关键字 function 可选
{
    # function body             # 函数体可嵌套，但一般不嵌套
}


# 无参函数调用
function func1()
{
    echo "hello"                # 函数内未定义参数
    echo "this is function_1"
}
# calling func1
func1                           # 无参函数直接用函数名调用


# 有参函数调用
function func2()
{
    echo "this is function_2"
    a=$1                        # 定义参数 1
    b=$2
    echo "a is $a"              # 函数内引用变量，调用参数 1
    echo "b is $b"
}
# calling func2
func2 "value_of_a" "value_of_b"


# 参数作用域
# 环境变量，所有程序都能访问的变量，即 linux 中的 PATH 变量
# 全局变量，bash 中自定义的普通变量默认是全局变量，可在本文件的其他位置引用
# 局部变量，需要使用 local 声明，只能在所在代码块或函数中有效
func()                          # 定义函数，省略 function 关键字
{
    global_var="global var in function."
    echo $global_var
    local local_var="local var in function."    # 有 local 声明
    echo $local_var
}
func()                          # 调用函数，使两类变量被赋值
echo $global_var
echo $local_var
