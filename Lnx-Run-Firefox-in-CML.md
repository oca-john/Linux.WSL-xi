# Put The Firefox Into CML
> 为火狐建立命令行启动方式
> 火狐的命令行启动方式，由PATH中的参数决定；
# PATH中设定命令行中启动应用时，默认会在/usr/bin目录中查找，所以为Firefox向/usr/bin目录中添加软链接即可;
1. /usr/bin目录下通常存在Linux默认安装的Firefox版本的软链接，`sudo rm /usr/bin/firefox`删除即可;
2. 定位到tar.xz包解压版本的Firefox目录中`cd /usr/lib64/firefox/`;
3. 为firefox-bin建立软链接`sudo ln -s /usr/lib64/firefox/firefox-bin /usr/bin/firefox`;
4. 之后检查/usr/bin目录下的firefox链接的详细属性，会发现`firefox -> /usr/lib64/firefox/firefox-bin`;
