# Arch LaTex 环境配置和中文处理

## Arch上的LaTex环境配置
Arch上不需要安装完整的Texlive，有两种方式配置LaTeX环境：
1. 安装`sudo pacman -S texlive-bin texlive-core texlive-langchinese`三个核心包；
2. 安装`sudo pacman -S miktex`精简tex处理环境；

## 编辑器选择
- 通用环境，安装TexStudio具备完善的配置功能（200M左右）
- KDE环境，采用Kile可以编译Latex文档（增量安装20M以内）
- 如不想直接Coding Tex代码段，可采用Lyx以所见即所得方式编辑Tex文档

## 中文处理环境
- 若采用`texlive-langchinese`包，则已经包含中文样式，使用`{xeCJK}`调用即可
- mikTex方式尚未开发...
- Lyx中配置文档语言为中文（非软件语言），则可以处理中文文本

## texlive-langchinese调用方法
``` tex
% 将以下代码段加入到属性部分
usepackage{xeCJK}
setCJKfamilyfont{SimSun}
```
