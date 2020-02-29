## egrep = grep -E

 **egrep命令**用于在文件内查找指定的字符串。egrep执行效果与`grep -E`相似，使用的语法及参数可参照grep指令，与grep的不同点在于解读字符串的方法。egrep是用extended regular expression语法来解读的，而grep则用basic regular expression 语法解读，extended regular expression比basic regular expression的表达更规范。 

```
egrep Linux ./* # 查找当前目录下包含Linux字符串的文件
grep -F pattern tst.txt	# 匹配固定字符串
grep pattern tst.txt 	# 输出匹配字符串
grep -v pattern tst.txt	# 输出未匹配的行

grep -n pattern tst.txt	# 输出匹配字符串的行号
grep -e pattern1 -e pattern2	# 匹配多个字符串，指定多个匹配样式
grep pattern file_1 file_2 file_3 ...	# 在多文件中匹配
```

