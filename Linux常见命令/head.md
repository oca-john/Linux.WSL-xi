## head

```
-n<行数>：指定显示的行数；
-c<字符数>：指定显示的字符数；
```

`head -n 5 tst.txt`, 显示tst文本的前5行

`tail -n 5 tst.txt`, 显示tst文本的最后5行

`sed 5q tst.txt`, sed查看前5行

`sed -n 2,5p tst.txt`, sed查看2-5行

`perl -lne 'print $_ if $. <=5' tst.txt`, perl单行命令查看前5行



`head -c 100 tst.txt`, 显示tst文本的前100字符

