# 快速搭建基于openSUSE的计算平台
- 快速构建可重复的虚拟机环境
- 实体机也可以参考，但部分软件需要替换

## 1.系统
1.系统安装；

## 2.微调
2.平面化K菜单，去除桌面管理器，添加快启栏，屏蔽部分泊槽工具，精简K菜单项目(Last)，调整Konsole主题行数限制和滚动柄；

## 3.默认源装包
3.YaST中，安装base,c/c++,kernel的devel包的patterns；git, neofetch, R-base, python3-juypter-notebook, pymol(py3)；

使用one-click安装sogoupinyin，或使用googleinput(yast)；

## 4.离线装包
4.其他包：anydesk, qqlinux, rstudio, sublime text3, xmindzen;

## 5.关闭冗余服务
5.关掉多余的服务(yast)，常见的有anydesk, bluetooth；开启sshd服务；


**通过此方式完成VM机器配置，大小为11.6GB，使用7Z压缩为Zip格式大小为2.65GB，解压后可直接导入VM(适配VM_15.5)运行。**
