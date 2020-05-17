# WSL-openSUSE借VNC配置图形界面

## 1. WSL系统和VNCserver端
- Windows控制面板中打开WSL选项，在微软商店中安装openSUSE发行版，进行基本初始化安装和配置；
- 安装`TigerVNC`和`vncmanager`，重启WSL；
- `vncserver :0`初始化vnc服务端，设置访问密码，生成`.vnc/xstartup`文件，`vncserver -kill :0`关闭vnc服务端；
- `vi .vnc/xstartup`编辑配置文件，在配置文件末尾增加"startxfce&"或"startlxde&"；

## 2. Windows端VNCviewer
- 下载tigervncviewer或vncviewer，并安装；
- 打开vncviewer，地址和端口为`127.0.0.1:5900`（与前面server开启的端口对应）；
- 输入访问密码，即可打开图形界面；
