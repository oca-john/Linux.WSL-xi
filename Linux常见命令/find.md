## find

#### 根据文件或者正则表达式进行匹配

在`/home`目录下查找以.txt结尾的文件名，忽略大小写

```
find /home -i name "*.txt"
```

当前目录及子目录下查找所有以.txt和.pdf结尾的文件

```
find . -name "*.txt" -o -name "*.pdf"
```

基于正则表达式匹配文件路径，忽略大小写

```
find . -i regex ".*\(\.txt\|\.pdf\)$"
```

#### 否定参数

找出/home下不是以.txt结尾的文件

```
find /home ! -name "*.txt"
```

#### 根据文件类型进行搜索

```
find . -type 类型参数
```

类型参数列表：

- **f** 普通文件
- **l** 符号连接
- **d** 目录
- **c** 字符设备
- **b** 块设备
- **s** 套接字
- **p** Fifo

#### 基于目录深度搜索

向下最大深度限制为3

```
find . -maxdepth 3 -type f
```

搜索最近七天内被访问过的所有文件

```
find . -type f -atime -7
```

搜索超过七天内被访问过的所有文件

```
find . -type f -atime +7
```

搜索访问时间超过10分钟的所有文件

```
find . -type f -amin +10
```

#### 根据文件大小进行匹配

```
find . -type f -size 文件大小单元
```

文件大小单元：

- **k** —— 千字节
- **M** —— 兆字节
- **G** —— 吉字节

搜索大于10KB的文件

```
find . -type f -size +10k
```

搜索小于10KB的文件

```
find . -type f -size -10k
```

#### 删除匹配文件

删除当前目录下所有.txt文件

```
find . -type f -name "*.txt" -delete
```

#### 根据文件权限/所有权进行匹配

当前目录下搜索出权限为777的文件

```
find . -type f -perm 777
```

找出当前目录下权限不是644的[php](http://man.linuxde.net/php)文件

```
find . -type f -name "*.php" ! -perm 644
```

找出当前目录用户tom拥有的所有文件

```
find . -type f -user tom
```

#### 借助`-exec`选项与其他命令结合使用

找出当前目录下所有root的文件，并把所有权更改为用户tom

```
find .-type f -user root -exec chown tom {} \;
```

上例中，**{}** 用于与**-exec**选项结合使用来匹配所有文件，然后会被替换为相应的文件名。

找出自己家目录下所有的.txt文件并删除

```
find $HOME/. -name "*.txt" -ok rm {} \;
```

上例中，**-ok**和**-exec**行为一样，不过它会给出提示，是否执行相应的操作。

查找当前目录下所有.txt文件并把他们拼接起来写入到all.txt文件中

```
find . -type f -name "*.txt" -exec cat {} \;> all.txt
```

找出当前目录下所有.txt文件并以“File:文件名”的形式打印出来

```
find . -type f -name "*.txt" -exec printf "File: %s\n" {} \;
```

因为单行命令中-exec参数中无法使用多个命令，以下方法可以实现在-exec之后接受多条命令

```
-exec ./text.sh {} \;
```

