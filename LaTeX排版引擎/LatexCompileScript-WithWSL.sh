#!/usr/bin/sh
# 本文件将保存为名为`lcs(Latex_Compile_Script)`的命令行程序
# chmod a+x lcs; sudo mv lcs /usr/bin/

# 0. 帮助文档
if [[ $1 = "--help" ]] || [[ $1 = "-h" ]]
then
    echo "This is an bash program developed by Oca John."
    echo "You can use it to compile a tex file, like this:"
    echo ""
    echo "      lcs filename.tex"
    echo ""
    exit 0
fi

# 1. 接收主要参数（文件名，含扩展名）
file=$1

# 2. 将参数转换为String，使用正则式提取文件名
# 命令行拼接产生 .tex 文件和 .aux 文件的文件名
filename=${file%.tex*}
echo "The file name is gotten."
echo "It is: $filename"
texfile=$filename.tex
auxfile=$filename.aux
echo "Key files had been generated!"

# 3. 将相关的文件名嵌入编译工具链，执行编译
xelatex.exe $texfile    # 生成PDF
bibtex.exe $auxfile     # 嵌入ref信息
xelatex.exe $texfile    # 编译ref信息
xelatex.exe $texfile    # 编译引用位置信息
echo "Source file had been compiled!"

# 4. 清除产生的中间文件
rm *.aux *.bbl *.blg *.log
echo "All mid-files had been cleaned!"
echo "I'm Oca! Thanks for your choice!"
