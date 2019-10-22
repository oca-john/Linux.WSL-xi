# 计算环境搭建
> 本页面用于记录计算环境搭建的过程。
## 1. Linux 运行环境
### 从安全模式下安装GRUB2
- 在系统出现问题时，openSUSE可以利用“启动本地Linux”功能实现修复，但部分情况下，此功能无法正确识别本地Linux，需要手动重装GRUB2；  
- 需要Host操作系统为openSUSE，或基于openSUSE的系统，如Gecko Linux；  
- 先进入急救模式；  
- 检查并挂载Linux相关的分区；  
- 挂载GRUB2相关的分区；  
- 生成grub.cfg文件；  
- 安装grub2到/dev/sda；  

### 修改系统启动方式（级别）
- 设置openSUSE默认以文本界面登录；  
- 由于openSUSE采用systemd控制启动过程，使用systemctl修改即可；  
- 直接在终端键入`systemctl get-default`来查询当前启动方式；
- 键入`systemctl set-default multi-user.target`将启动方式修改为文本界面启动；  

### 用命令行打开Firefox
- 为Firefox制作命令行链接（/usr/bin/...），同时适用于其他应用；  
- 可以适用命令行从任何终端启动该应用；  
- 本质是软链接`ln -s /home/xx/bin/apps/firefox /usr/bin/firefox`；

### Openbox窗口管理器配置
- 使用Docky作为泊槽，Tint2作为面板，Feh来管理桌面壁纸；  

### Window-Maker窗口管理器配置
- WM环境需要自己定义泊槽位置以及应用；
- 从设置中心定义界面颜色；
- 从设置中心自定义桌面菜单；

## 2. Windows环境下的类Linux环境
### CMD是Windows下默认的命令工具，通过PATH变量配置实现对命令行工具的调用
- cmd是windows下对标终端模拟器的工具，继承自自家的Dos，在与windows进行交互时，是一个基础但非常好用的工具。
- 通过windows的PATH变量的配置，即可实现对perl, python, r语言的调用，可以实现大部分近似于linux的操作，当然dir取ls而代之的查看方式会不习惯。

### 用GitBash作为Windows环境下的类Linux环境
- GitBash是Git在windows下的命令行模式，但是集成了大量的命令行工具，功能十分强大，且由于工作模式与linux下类似，更加友好。通过配置将GitBash作为默认的Shell将有利于平台的统一操作。
- GitBash在安装好perl之后可以自动初始化perl环境，因为perl不需要交互环境；而python和r语言需要使用交互方式，需要额外配置，即增加详细的参数来实现。
- 通过Git安装目录下etc目录的bash.bashrc文件进行运行环境配置，主要是增加别名，方法与linux环境完全一致，但赋值的运行方式需要特别注意。
