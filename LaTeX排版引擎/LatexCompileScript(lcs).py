#!/usr/bin/python
# 本文件将保存为名为`lcs(Latex_Compile_Script).py`的命令行程序
# chmod a+x lcs.py; python lcs.py texfile.tex

# 0. 帮助文档
import sys
if sys.argv[1] == "--help" or sys.argv[1] == "-h" :
    print("This is a bash program developed by Oca_John <oca-john@hotmail.com>.", "\n")
    print("You can use it to compile a tex file, like this:", "\n")
    print("\n")
    print("      python /path/to/lcs.py /path/to/filename.tex", "\n")
    print("\n")

if sys.argv[1] == "--version" or sys.argv[1] == "-v" :
    print("\n")
    print("lcs version is: 0.1 Beta (20210627)", "\n")
    print("By Oca_John", "\n")
    print("\n")

# 1. 接收主要参数（文件名，含扩展名）
file = sys.argv[1]

# 2. 将参数转换为String，使用正则式提取文件名
# 命令行拼接产生 .tex 文件和 .aux 文件的文件名
import re
filename = re.match(r'.*/(.*).tex', file).group(1)
if filename:
    print("The file name is gotten.", "\n")
    print("It is:", filename, "\n")
else:
    print("No match!!")
texfile = filename+".tex"
auxfile = filename+".aux"
print("Texfile is:", texfile, "\n")
print("Auxfile is:", auxfile, "\n")
print("Key files had been generated!", "\n")

# 3. 将相关的文件名嵌入编译工具链，执行编译
import os
os.system("xelatex texfile")    # 生成PDF
os.system("bibtex auxfile")     # 嵌入ref信息
os.system("xelatex texfile")    # 编译ref信息
os.system("xelatex texfile")    # 编译引用位置信息
print("Source file had been compiled!", "\n")

# 4. 清除产生的中间文件
os.system("rm *.aux *.bbl *.blg *.log")
print("All mid-files had been cleaned!", "\n")
print("I'm Oca! Thanks for your choice!", "\n")
