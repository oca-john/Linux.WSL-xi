## 0.基础环境
可以是KDE等安装好的集成桌面环境，也可以是icewm等基本的窗口化桌面环境，或者nonedesktop模式；

## 1.增加源
zypper ar -r http://download.opensuse.org/repositories/X11:/MATE:/Current/openSUSE_Leap_15.0/X11:MATE:Current.repo (需要sudo)

## 2.安装Mate环境
sudo zypper in patterns-mate-mate

## 3.创建.xinitrc（以startx启动mate）
echo "exec /usr/bin/mate-session" >> ~/.xinitrc     # 
