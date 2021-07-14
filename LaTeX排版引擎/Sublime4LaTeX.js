// Sublime Text 4 中编译 LaTeX 文档
// Sublime 配置后默认支持 .bib 文件，即可以编译不包含/包含 .bib 文献的文档
// 默认包含 bibliography 设置，不需要单独配置。
// 
// 
// 1. 安装 LaTeXTools 扩展
// 搜索并安装 LaTeXTools扩展
// 
// 2. 初始化 LaTeXTools 配置文件
// 搜索`latexsetting`，重置用户配置文件（初始化）
// 
// 3. 修改配置文件
// Platform settings: adapt as needed for your machine
"python": "python",			// line 234
// Build engine settings
// "builder": "traditional",// 此行指定编译器，修改为xelatex
"builder": "xelatex",		// line 380
// 
// 
// 编辑器可根据文档格式识别 .tex 文件，使用 Ctrl+B 调用编译器即可。
