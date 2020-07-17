#!/usr/bin/sh
# wc
# **wc命令**用来计算数字。利用wc指令我们可以计算文件的Byte数、字数或是列数，若不指定文件名称，或是所给予的文件名为“-”，则wc指令会从标准输入设备读取数据。 

# -l或——lines：只显示列数；
# -w或——words：只显示字数。

wc -l tst.txt       # 对tst文本的行计数
wc -w tst.txt       # 对tst文本的字符计数
