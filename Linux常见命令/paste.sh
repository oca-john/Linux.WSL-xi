#!/usr/bin/sh
# paste
# **paste命令**用于将多个文件按列进行合并。 

# -d<间隔字符> 或--delimiters=<间隔字符>：用指定的间隔字符取代跳格字符；
# -s 或——serial串列进行而非平行处理。

# 构造列表m1，m2
# paste能按列进行合并
paste m1 m2         # 按列合并m1，m2
paste m1 m2 > mh    # 按列合并，定向给mh文件
