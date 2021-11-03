" VIM 配置文件积累
" By Oca_John <oca-john@hotmail.com>
" 常用格式化显示和高亮
colorscheme slate               " 设置主题配色为 slate (dark)
set autoindent                  " 自动缩进
set backspace=2                 " 启用退格键 (删除键不可用问题)
set cindent                     " 使用 C 语法缩进
set cursorline                  " 突出当前行
set guifont=Consolas:h12        " 字体和字号 (字号可能引起显示混乱)
set hlsearch                    " 高亮搜索结果
set matchtime=25                " 括号匹配高亮时间 (毫秒)
set mouse=a                     " 启用鼠标
set nocompatible                " 关闭兼容模式
set noeb                        " 去掉输入错误的提示声音
set nu                          " 显示行号
syn on                          " 语法高亮
set ruler                       " 状态栏标尺
set showmatch                   " 高亮显示匹配的括号
set sm                          " 短暂高亮显示括号匹配
set smartindent                 " 智能自动缩进
set softtabstop=4               " 软制表符设为 4 格
set tabstop=4                   " 制表符设为 4 格
set vb t_vb=                    " 关闭提示音


" gvim 设置默认工作路径
exec 'cd ' . fnameescape('D:\Users\oca\Documents')


" 运行和调试 Python
nnoremap <F5> :!python %:p<cr>			" F5 运行脚本
nnoremap <F6> :!python -m pdb %:p<cr>	" F6 调试代码


" gvim 在 Win 系统下中文显示和中文菜单乱码解决
set encoding=utf-8
set fileencodings=utf-8,chinese,latin-1
if has("win32")
 set fileencoding=chinese
else
 set fileencoding=utf-8
endif
" 解决菜单乱码
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim
" 解决 consle 输出乱码
language messages zh_CN.utf-8

