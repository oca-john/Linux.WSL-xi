# VIM 配置文件积累

## 常用格式化显示和高亮
```
set nu                          " 显示行号
syn on                          " 语法高亮
set hlsearch                    " 高亮搜索结果
set sm                          " 短暂高亮显示括号匹配
set matchtime=25                " 括号匹配高亮时间（毫秒）
set autoindent                  " 自动缩进
set cindent                     " 使用C语法缩进
set tabstop=4                   " 制表符设为4格
set softtabstop=4               " 软制表符设为4格
set cursorline                  " 突出当前行
set ruler                       " 状态栏标尺
```

## 绑定运行程序快捷键
```
filetype plugin on
" 按 F5 执行当前 Python 代码"
map <F5> :call PRUN()<CR>
func! PRUN()
    exec "w" 
    if &filetype == 'python'
        exec "!python %"
    endif
endfunc
```
