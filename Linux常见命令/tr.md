## tr

 **tr命令**可以对来自标准输入的字符进行替换、压缩和删除。它可以将一组字符变成另一组字符，经常用来编写优美的单行命令，作用很强大。 

```
-c：取代所有不属于第一字符集的字符；
-d：删除，删除所有tr参数指定的字符；
-s：去重，把连续重复的字符以单独一个字符表示；
-t：先删除第一字符集较第二字符集多出的字符。
```

```
echo "HELLO WORLD" | tr 'A-Z' 'a-z' # 大写转小写
hello world
```

```
echo "hello 123 world 456" | tr -d '0-9' # 删除数字
hello  world 
```

```
cat text | tr '\t' ' ' # 制表符换为空格
```

```
echo "thissss is      a text linnnnnnne." | tr -s ' sn' # 去掉"空格sn"的重复
this is a text line.
```

