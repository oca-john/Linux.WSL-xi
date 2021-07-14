#!/usr/bin/sh
# 本文件将保存为名为`lcs(Latex_Compile_Script)`的命令行程序
# chmod a+x lcs; sudo mv lcs /usr/bin/
#
# 1. 接收主要参数（文件名，含扩展名）
file=$1

# 2. 将参数转换为String，使用正则式提取文件名
# 命令行拼接产生 .tex 文件和 .aux 文件的文件名
filename=${file%.tex*}
echo "The file name is gotten.\n"
echo "It is: $filename\n"
texfile=$filename.tex
auxfile=$filename.aux
echo "Key files had been generated!\n"

# 3. 将相关的文件名嵌入编译工具链，执行编译
xelatex $texfile    # 生成PDF
bibtex $auxfile     # 嵌入ref信息
xelatex $texfile    # 编译ref信息
xelatex $texfile    # 编译引用位置信息
echo "Source file had been compiled!\n"

# 4. 清除产生的中间文件
rm *.aux *.bbl *.blg *.log
echo "All mid-files had been cleaned!\n"
echo "I'm oca! Thanks for your choice!\n"
