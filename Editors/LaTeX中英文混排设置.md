# `LaTeX`中英文混排设置

> 由于`CTeX`包非常老旧，倾向于采用`XeCJK`实现中英文混排。  
> Linux下可通过`texlive-langchinese`包安装`XeCJK`。  
> > 注意1：编译器仅限`XeLaTeX`，`LaTeX/TeX`文件保存时尽量使用英文，因为在`TexStudio`或`Kile`调用  
> > `xeLaTeX/xeTeX`的命令`xelatex -synctex=1 -interaction=nonstopmode LaTeX中文文件名.tex`时，  
> > 由于编译器不支持中文字符编码，可能无法识别文件名中的中文，而导致报错（仅系统默认不支持UTF8时）。  
> > 注意2：对默认支持的系统不要修改编码方式，此操作可能会导致其他文件或程序的乱码。  
> > 注意3：编辑器关闭启动画面(Kl)，关闭实时预览(Kl)，使用Xelatex编译器(Ts/Kl)，Build方式改为compile方式(Kl)，修改缩进为空格(Ts/Kl)。  
> 
> Asus-suse: Texlive + Kile/TexStudio, 编译通过，并生成PDF。  
> Asus-win: Texlive + Kile/TexStudio, 编译通过，并生成PDF。  
> Prob-arch: Texlive + Kile/TexStudio, 编译通过，并生成PDF[Arch未频繁更新，后续谨慎部署Arch Linux]。  
> Prob-win: Texlive + Kile/TexStudio, 编译通过，并生成PDF[仅此平台无法识别中文文件名，采用修改系统编码的方式修正]。  
> Expc-deepin: Texlive-Core + Kile, 编译通过，有报错，Deepin自带Okular不可卸载，不影响Kile使用，但影响系统依赖处理[后续不考虑不熟Deepin]。  
> Expc-win: MikTex + Kile/TexWorks, 编译通过，并生成PDF。  

## 基于`xeCJK`宏包的中文兼容性设置

``` latex
\documentclass[a4paper,10pt]{article}
\usepackage{xeCJK}                  % 调用中文处理包，来自texlive-langchinese
\setCJKmainfont{FangSong}           % 全局CJK字体为仿宋
\setmainfont{Times New Roman}       % 全局字体为新罗马
% 已测试的字体有:
% 原生字体: FangSong, KaiTi, SimSun, SimHei, YouYuan, 
% 方正字体: FZYaoTi, FZShuTi, 
% 华文字体: STFangsong, STKaiti, STXingkai, STZhongsong, STXihei, STXinwei, STLiti


\begin{document}
    这里是中文文本，并混排了一些English单词。
    
    This is English paragraph, and mixed with some 中文文本.
    
\end{document}
```

