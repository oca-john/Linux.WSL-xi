// 手动编译 LaTeX
// 默认环境中已配置好相关的编译工具，手动逐个调用即可。
// 此文档使用不同语言实现，可以开发不同语言版本的LaTeX编译工具 ^.^ 
// 
// 
// 1. 不含 .bib 参考文献的 .tex 文件编译
// 只需一次编译，从下列四种方式中任选一种均可：
// latex file.tex 		// 编译结果为 .dvi 文件需要转 pdf
// lualatex file.tex
pdflatex file.tex 		// 无 .bib 文件推荐用 pdflatex 编译
// xelatex file.tex 	// 有 .bib 文件推荐用 xelatex 编译
// 
// 
// 2. 包含 .bib 文献的 .tex 文件编译
// 需要多次编译，要构建编译工具链：
xelatex file.tex 	// 一次编译，生成PDF
bibtex file.aux 		// bib编译，识别文献信息
xelatex file.tex 	// 二次编译，PDF中嵌入文献列表
xelatex file.tex 	// 三次编译，识别PDF在文中的引用序号
