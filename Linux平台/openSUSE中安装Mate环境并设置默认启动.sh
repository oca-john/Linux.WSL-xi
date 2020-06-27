## 0.基础环境
# 可以是KDE等安装好的集成桌面环境，也可以是icewm等基本的窗口化桌面环境，或者nonedesktop模式；

## 1.增加源
zypper ar -r http://download.opensuse.org/repositories/X11:/MATE:/Current/openSUSE_Leap_15.0/X11:MATE:Current.repo (需要sudo)

## 2.安装Mate环境
sudo zypper in patterns-mate-mate

## 3.创建.xinitrc（以startx启动mate）
echo "exec /usr/bin/mate-session" >> ~/.xinitrc             # 将执行指定DE的命令打印出来，并追加到`.xinitrc`文件末尾

## 4.修改启动方式
systemctl set-default graphical.target/multi-user.target    # 设置默认的启动方式为图形/命令行模式

# ```
# 同类的模块还有：
# - patterns-gnome-gnome
# - patterns-kde-kde
# - patterns-lxde-lxde
# - patterns-lxqt-lxqt      # 尚不完善，慎用
# - patterns-mate-mate      # suse中目前最看好
# - patterns-xfce-xfce      # 其他发行版使用新版本尚可，suse中版本过低
# - zypper in cinnamon      # cinnamon只能直接zypper安装
# ```
