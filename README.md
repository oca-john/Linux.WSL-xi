# Computing Environment Building
> Build my own computing environment, there is some records.
## 1. Linux Environment
### Change-Boot-Mode.md
- Set text mode as the default mode to enter you opensuse. 
- As openSUSE use the systemd to control it, that is different as the init levels, which confused me such a long time. 
- Just the `systemctl` tool.
- Now, it's ok.

### Openbox-Setup
- Docky as dock, Tint2 as the panel, Feh to set wallpaper.

### Run-Firefox-in-CML
- Make a shortcut of Firefox, and also for other application, for you can run an application quickly in command line, like konsole. 

### Window-Maker-Setup
- Setting the system dock, Define the menu, Control the Color of window.

## 2. Windows Environment
### CMD Default Path & Make your Command
- cmd是windows下对标终端模拟器的工具，继承自自家的Dos，在与windows进行交互时，是一个基础但非常好用的工具。
- 通过windows的PATH变量的配置，即可实现对perl, python, r语言的调用，可以实现大部分近似于linux的操作，当然dir取ls而代之的查看方式会不习惯。

### GitBash as your Environment
- GitBash是Git在windows下的命令行模式，但是集成了大量的命令行工具，功能十分强大，且由于工作模式与linux下类似，更加友好。通过配置将GitBash作为默认的Shell将有利于平台的统一操作。
- GitBash在安装好perl之后可以自动初始化perl环境，因为perl不需要交互环境；而python和r语言需要使用交互方式，需要额外配置，即增加详细的参数来实现。
- 通过Git安装目录下etc目录的bash.bashrc文件进行运行环境配置，主要是增加别名，方法与linux环境完全一致，但赋值的运行方式需要特别注意。
