#!/usr/bin/sh
# openSUSE中安装Gnome环境并设置默认启动

## 0.基础环境
# 可以是任何安装好的集成桌面环境，也可以是icewm等基本的窗口化桌面环境，或者nonedesktop模式；

## 1.使用官方源安装Gnome环境
sudo zypper in patterns-gnome-gnome

## 2.创建.xinitrc（以startx启动gnome）
echo "exec /usr/bin/gnome-session" >> ~/.xinitrc             # 将执行指定DE的命令打印出来，并追加到`.xinitrc`文件末尾

## 3.修改启动方式
systemctl set-default graphical.target/multi-user.target    # 设置默认的启动方式为图形/命令行模式

# ```
# 同类的模块还有：
# - patterns-gnome-gnome    (gnome-session)
# - patterns-kde-kde        (startkde)
# - patterns-lxde-lxde      (lxde-session)
# - patterns-lxqt-lxqt      # 尚不完善，慎用
# - patterns-mate-mate      # suse中目前最看好  (mate-session)
# - patterns-xfce-xfce      # 其他发行版使用新版本尚可，suse中版本过 (xfce-session)
# - zypper in cinnamon      # cinnamon只能直接zypper安装
# ```
