# Debian环境快速搭建

- 快速构建可重复的Debian虚拟机环境
- 实体机也可以参考，但部分软件可能需要替换

## 1.系统
1.系统安装（KDE -> **Gnome** -> Xfce -> LXDE）；

## 2. 将普通用户oc加入sudo组
``` sh
su                      需要密码
chmod +w /etc/sudoers   改为可写
gedit /etc/sudoers      编辑sudoers列表
chmod -w /etc/sudoers   改为只读
```

## 2.x 编辑sudoers列表的内容
``` sh
root ALL=(ALL:ALL) ALL
oc   ALL=(ALL:ALL) ALL
```

## 3. 修改软件源
`sudo gedit /etc/apt/sources.list`  打开源列表

## 3.x sources.list列表内容
``` sh
deb https://mirrors.ustc.edu.cn/debian/ buster main contrib non-free
deb https://mirrors.ustc.edu.cn/debian/ buster-updates main contrib non-free
deb https://mirrors.ustc.edu.cn/debian/ buster-proposed-updates main contrib non-free
deb https://mirrors.ustc.edu.cn/debian-security/ buster/updates main contrib non-free
```
