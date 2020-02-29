## cut

https://man.linuxde.net/cut

 **cut命令**用来显示行中的指定部分，删除文件中指定字段。cut经常用来显示文件的内容，类似于下的[type](http://man.linuxde.net/type)命令。 

```
-c：仅显示行中指定范围的字符；
-d：指定字段的分隔符，默认的字段分隔符为“TAB”；
-f：显示指定字段的内容；
```

### source 表格1

```
# cat test.txt 
No Name Mark Percent
01 tom 69 91
02 jack 71 87
03 alex 68 98
```

### -f	按字段提取

```
# cut -f 1 test.txt # 提取test文本的第1列数据(-f 1)
No
01
02
03
```

```
# cut -f2,3 test.txt # 提取test文本的第2,3列数据(-f2,3)
Name Mark
tom 69
jack 71
alex 68
```

```
# cut -f2 --complement test.txt # 除2之外的列(--complement表示取反)
No Mark Percent
01 69 91
02 71 87
03 68 98
```

### -d	指定分隔符

```
# cut -f2 -d";" test2.txt # 指定；为分隔符(-d";")，取第2列数据(-f2)
Name
tom
jack
alex
```

### -c	指定字符

- **n-**：n位到结尾所有字符；
- **n-m**：n位到m位字符；
- **-m**：开始到m位字符。

### source 表格2

```
# cat test.txt 
abcdefghijklmnopqrstuvwxyz
abcdefghijklmnopqrstuvwxyz
abcdefghijklmnopqrstuvwxyz
```

```
# cut -c1-3 test.txt # 1到3位
abc
abc
abc
```

```
# cut -c-2 test.txt # 开始到2位
ab
ab
ab
```

```
cut -c5- test.txt # 5位到结尾
efghijklmnopqrstuvwxyz
efghijklmnopqrstuvwxyz
efghijklmnopqrstuvwxyz
```

