# `LaTeX`中英文混排设置

> 由于`CTeX`包非常老旧，倾向于采用`XeLaTeX`实现中英文混排。
>
> Linux下可通过`texlive-langchinese`包安装`XeLaTeX`。
>
> > 注意：编译器仅限`XeLaTeX`；
> > `LaTeX/TeX`文件保存时尽量使用英文，`TexStudio`或`Kile`调用
> > 
> > `xeLaTeX/xeTeX`命令`xelatex -synctex=1 -interaction=nonstopmode LaTeX中文文件名.tex`，
> > 
> > 由于编译器不支持中文字符编码，不能识别文件名中的中文，导致报错。
> > 
> > Asus-suse: Texlive + Kile/TexStudio, 编译通过，并生成PDF。
> > 
> > Asus-win: Texlive + Kile/TexStudio, 编译通过，并生成PDF。
> > 
> > Prob-arch: Texlive + Kile/TexStudio, 编译通过，并生成PDF。
> > 
> > Prob-win: Texlive + Kile/TexStudio, 编译通过，并生成PDF。
> > 
> > ----- Expc-deepin: MikTex + Kile/TexWorks, 失败。
> > 
> > Expc-win: MikTex + Kile/TexWorks, 编译通过，并生成PDF。

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

