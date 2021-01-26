## 问题描述：
Vim不支持删除本次回话以外的文本  
原因：https://www.smslit.top/2016/11/27/vim-backspace-invalid/  
原因描述：VIM使用了VI兼容模式，删除键没有被定义或被定义为“0模式”  
### 删除键一共三种模式：  
0 same as “:set backspace=” (Vi compatible)  
1 same as “:set backspace=indent,eol”  
2 same as “:set backspace=indent,eol,start”  
## 解决方法：
``` vim
" 解决插入模式下delete/backspce键失效问题
set backspace=2
```
