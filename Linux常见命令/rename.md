## rename

https://man.linuxde.net/rename

用字符串替换的方式批量命名文件，参数有：`原字符串、目标字符串、文件`。

`rename old.c new.c old.c`, 将old.c文件重命名为new.c文件。

`rename old new old*`, 将old开头的所有文件重命名为new开头。

支持正则式替换：

`rename "s/AA/aa/" *`, 把所有文件的AA换成aa

`rename "s//.txt//.md/" *`, 把txt文档改为md文档

`rename "s//.txt//" *`, 把txt文档扩展名删掉

`rename "s/$//.txt/" *`, 把所有文件都以txt结尾

`# 单/跟字符替换，双//跟扩展名操作，$表示结尾，正则式必须在“”之内完成识别和操作`

