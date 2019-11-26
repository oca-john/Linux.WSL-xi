# LaTeX新人教程-30分钟基本入门

## LaTeX简介

1. LaTeX是TeX排版引擎的一套文字排版工具，本质上是一种标记语言；另一种更轻的标记语言Markdown就源自LaTeX；
2. LaTeX的核心思想是通过类似HTML语言一样的文本内预定义的标记来注释其他部分文本的层级关系、格式等属性；
3. LaTeX反对Word的所见即所得思想，相对Word有几点优势：
   - 强大的数学公式编辑和渲染器，异常美观
   - 所有文本块，都按照附近的预定义标记所确定的属性进行统一渲染，断行的处理非常优秀
   - 与所见即所得思想相反，主张专注内容本身，排版交给工具
   - 部分刊物不接受Word排版的文章

------

下面是教程正文。（正文最后应大家要求增添了附录）

## 1. LaTeX软件的安装

参考“LaTeX中文书写环境搭建”。

最终拟定，Texlive + TexStudio组合，或Texlive + LyX组合。

## 2. 第一个文档

打开TexStudio，建立一个新文档，将以下内容复制进入文档中，保存，保存类型选择为UTF-8。

``` latex
\documentclass{article}
\begin{document}
hello, LaTeX!
\end{document}
```

然后在TexStudio的工具栏中找到编译按钮（在垃圾桶和字母B中间），在下拉菜单中选择XeLaTeX，并点击编译。 如果顺利的话，我们就可以顺利生成出第一个pdf文件，点击工具栏中的放大镜按钮就可以快速打开生成的pdf文件。

## 3. 标题、作者和注释

建立一个新文档，将以下内容复制进入文档中，保存，保存类型选择为UTF-8，编译并观察现象。

``` latex
\documentclass{article}
\author{My Name}
\title{The Title}
\begin{document}
\maketitle
hello, world % This is comment
\end{document}
```

## 4. 章节和段落

建立一个新文档，将以下内容复制进入文档中，保存，保存类型选择为UTF-8，编译并观察现象。

``` latex
\documentclass{article}
\title{Hello World}
\begin{document}
\maketitle
\section{Hello China} China is in East Asia.
\subsection{Hello Beijing} Beijing is the capital of China.
\subsubsection{Hello Dongcheng District}
\paragraph{Tian'anmen Square}is in the center of Beijing
\subparagraph{Chairman Mao} is in the center of Tian'anmen Square
\subsection{Hello Guangzhou}
\paragraph{Sun Yat-sen University} is the best university in Guangzhou.
\end{document}
```

退格只是我个人偏好，看起来层次清晰美观。实际操作上未必要如此，每一行之前的空格不影响编译生成PDF的排版结果。

## 5. 加入目录

建立一个新文档，将以下内容复制进入文档中，保存，保存类型选择为UTF-8，编译并观察现象。

``` latex
\documentclass{article}
\begin{document}
\tableofcontents
\section{Hello China} China is in East Asia.
\subsection{Hello Beijing} Beijing is the capital of China.
\subsubsection{Hello Dongcheng District}
\paragraph{Hello Tian'anmen Square}is in the center of Beijing
\subparagraph{Hello Chairman Mao} is in the center of Tian'anmen Square
\end{document}
```

## 6. 换行

建立一个新文档，将以下内容复制进入文档中，保存，保存类型选择为UTF-8，编译并观察现象。

``` latex
\documentclass{article}
\begin{document}
Beijing is
the capital
of China.

New York is

the capital

of America.

Amsterdam is \\ the capital \\
of Netherlands.
\end{document}
```

## 7. 数学公式

建立一个新文档，将以下内容复制进入文档中，保存，保存类型选择为UTF-8，编译并观察现象。

``` latex
\documentclass{article}
\usepackage{amsmath}
\usepackage{amssymb}
\begin{document}
The Newton's second law is F=ma.

The Newton's second law is $F=ma$.

The Newton's second law is
$$F=ma$$

The Newton's second law is
\[F=ma\]

Greek Letters $\eta$ and $\mu$

Fraction $\frac{a}{b}$

Power $a^b$

Subscript $a_b$

Derivate $\frac{\partial y}{\partial t} $

Vector $\vec{n}$

Bold $\mathbf{n}$

To time differential $\dot{F}$

Matrix (lcr here means left, center or right for each column)
\[
\left[
\begin{array}{lcr}
a1 & b22 & c333 \\
d444 & e555555 & f6
\end{array}
\right]
\]

Equations(here \& is the symbol for aligning different rows)
\begin{align}
a+b&=c\\
d&=e+f+g
\end{align}

\[
\left\{
\begin{aligned}
&a+b=c\\
&d=e+f+g
\end{aligned}
\right.
\]

\end{document}
```

具体细节可以自行搜索LaTeX的数学符号表或别人给的例子。[![img](http://pics.latexstudio.net/wp-content/uploads/2017/02/firstmath.png)](http://pics.latexstudio.net/wp-content/uploads/2017/02/firstmath.png)先搜索到一个将图片转成eps文件的软件，很容易找的，然后将图片保存为一个名字如figure1.eps。 建立一个新文档，将以下内容复制进入文档中，保存，保存类型选择为UTF-8，放在和图片文件同一个文件夹里，编译并观察现象。

## 9. 简单表格

建立一个新文档，将以下内容复制进入文档中，保存，保存类型选择为UTF-8，编译并观察现象。

``` latex
\documentclass{article}
\begin{document}
\begin{tabular}{|c|c|}
a & b \\
c & d\\
\end{tabular}

\begin{tabular}{|c|c|}
\hline
a & b \\
\hline
c & d\\
\hline
\end{tabular}

\begin{center}
\begin{tabular}{|c|c|}
\hline
a & b \\ \hline
c & d\\
\hline
\end{tabular}
\end{center}
\end{document}
```

## 10. 结尾

到目前为止，你已经可以用LaTeX自带的article模板来书写一篇基本的论文框架了，至少你已经能够用得起来LaTeX了。 

在论文从框架到完整的过程中，必然还存在许多的细节，比如字体字号，比如图片拼合，比如复杂的表格等等，自行Google即可。

LaTeX在国内的普及率并不高，因此许多时候如果搜英文关键词，会获得更好的效果。

## 11.中文支持

现在只需要把开头的\documentclass{atricle}写成\documentclass{ctexart}

``` latex
\documentclass{ctexart}
\begin{document}
你好，LaTeX!
\end{document}
```
