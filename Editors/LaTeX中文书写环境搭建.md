# LaTeX中文书写环境搭建

## 1. TexLive + TexStudio平台部署

### 1.1 LaTex发行版

包含LaTex核心功能的主要Tex发行版为MikTex和TexLive。前者为个人发布，只针对Windows平台发布，核心理念是最小化安装，支持在线安装扩展包；后者是Tex用户组维护的项目，由Qt编写的UI，跨平台支持Windows、Mac、Linux，核心理念是包罗万象，安装时也支持去掉不需要的包。

因此，Tex发行版选择**TexLive**比较稳妥，当前版本为2020(4月发布)，从清华大学开源镜像站下载较快。

若使用`xeCJK`来兼容中文文字，需要额外安装`texlive-langchinese`宏包。

### 1.2 LaTex编辑器

LaTex本质上是以标记文本的形式来写文章(Md就可以理解为简化的LaTex)，因此理论上讲，只要是文本编辑器都可以编辑LaTex内容。

但正如开发者需要IDE来集成开发环境，LaTex编写的集成环境也很有必要，主流的有TexStudio、TexWorks、Lyx等专用编辑器，而VS code、Atom编辑器也可以通过插件实现LaTex编辑。

从配置简单，功能全面的原则考虑，**TexStudio**比较符合要求；当然**Lyx**近似Word的所见即所得的排版方式也可以接受。

### 1.3 其他组合：

- TexLive + **TexStudio**(带PDF预览)【正常可用】
- TexLive + **Lyx** + PDF预览【正常可用】
- TeXLive + VS Code + LaTeX Workshop(插件)
- TeXLive + Emacs + AUCTex + PDF预览


## 2. 基本使用

参考“LaTeX新人教程”。

> 注意：与编程环境一样，尽量使用 space 而非 tab 实现缩进。
> Texstudio中，选项 - 配置texstudio - 编辑器 - 缩进模式 - 用space替代tab
> Kile中，设置 - 编辑器 - 编辑 - 缩进- 使用“spaces”缩进
