#!/bin/bash
function greeting() {   # define func `greeting`
str="Hello, $name"
echo $str
}

echo "Enter your name"
read name               # get input

val=$(greeting)         # func as input of var, 用$()调用函数作为变量的值/输入
echo "Return value of the function is $val"
