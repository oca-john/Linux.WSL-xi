#!/usr/bin/sh
# use (un)tar command in batch

# use `gunzip` unpack `.gz` pack
for gz_pkg in *.gz; do gunzip $gz_pkg; done             # for loop定义自变量时不用加$(shell 语法)，do语句执行时变量要加$

# use `tar -zxvf pkgname` unpack `.tar.gz` pack
for tar_pkg in *.tar.gz; do tar -zxvf $tar_pkg; done    # do语句中调用了`tar -zxvf`解压tar包
