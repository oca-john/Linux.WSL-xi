#!/bin/bash
file='book.txt'     # 定义文件名
while read line; do # 定义逐行读取
echo $line
done < $file        # 定向处理(读取)file文件
