## dos文本转unix文本

主要是dos文本（win）的行尾为^M$(\r\n)，而unix文本结尾为$(\n)。

可用dos2unix命令转换：

`dos2unix –n dos.txt unix.txt `

一种sed的替代命令是：

`sed ‘s/\r//’ dos.txt > unix.txt`

unix2dos可实现逆向转换：

`unix2dos unix.txt dos.txt`

## 批量删除某个目录及其子目录的txt文本文件

查找path及子目录的所有txt文件，对所有项目执行rm命令。

`find path/ -name *.txt -exec rm {} \;`

