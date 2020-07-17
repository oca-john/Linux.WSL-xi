#!/usr/bin/sh
# cat
# https://man.linuxde.net/cat

cat m1                # 打印m1文本内容到显示器

cat m1 m2 > m4        # 重定向打印m1, m2文件到m3（合并文本到m3）

cat m1 m2 >> m3       # 重定向打印m1, m2文件到m3（追加）
