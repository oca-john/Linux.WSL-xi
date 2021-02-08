" VIM 配置文件积累
" 常用格式化显示和高亮
set nu                          " 显示行号
syn on                          " 语法高亮
set hlsearch                    " 高亮搜索结果
set sm                          " 短暂高亮显示括号匹配
set matchtime=25                " 括号匹配高亮时间（毫秒）
set autoindent                  " 自动缩进
set cindent                     " 使用 C 语法缩进
set tabstop=4                   " 制表符设为 4 格
set softtabstop=4               " 软制表符设为 4 格
set cursorline                  " 突出当前行
set ruler                       " 状态栏标尺
set backspace=2                 " 删除键失效，不能删除本次以外输入的文本


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

