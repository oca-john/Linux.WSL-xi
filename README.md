# Linux.WSL-xi
本项目用于记录类Linux计算环境搭建的过程，常用Linux命令，常见Linux工具用法，和其他工具软件的学习笔记。

## 1. Linux 运行环境
#### 从安全模式下安装GRUB2
先进入急救模式，检查并挂载Linux相关的分区，挂载GRUB2相关的分区；  
生成grub.cfg文件，安装grub2到/dev/sda；  

#### 修改系统启动方式(级别)
键入`systemctl set-default multi-user.target`将启动方式修改为文本界面启动；  

## 2. Windows环境下的类Linux环境
#### CMD是Windows下默认的命令工具，通过PATH变量配置实现对命令行工具的调用
通过windows的PATH变量的配置，即可实现对perl, python, r语言的调用，可以实现大部分近似于linux的操作，当然dir取ls而代之的查看方式会不习惯。

#### 用GitBash作为Windows环境下的类Linux环境
GitBash在安装好perl之后可以自动初始化perl环境，因为perl不需要交互环境；而python和r语言需要使用交互方式，需要额外配置，即增加详细的参数来实现。  
通过Git安装目录下etc目录的bash.bashrc文件进行运行环境配置，主要是增加别名，方法与linux环境完全一致，但赋值的运行方式需要特别注意。  

## 3. vscode.code-runner.wsl-linux
### 软件环境
控制面板中开启wsl功能，微软商店安装openSUSE或Ubuntu发行版。  
安装vscode软件以及remote-wsl, code-runner插件。  

### 工具连接
#### 发行版和默认终端解释器
打开vscode，在remote-wsl插件中选择默认的发行版，在terminal中选择默认解释器为wsl（即指向特定发行版的bash）。  

#### 编辑器运行和终端解释器
编辑器部分默认采用cmd，搜寻windows下的语言环境。  
F1打开设置搜索框-搜索setting.json （文件-预设-设置-搜索setting.json-edit.in.setting.json）。  

#### setting-json编辑
``` json
    "code-runner.defaultLanguage": "python"		# 插件使用的默认语言
    "code-runner.runInTerminal": true,			# 编辑器代码是否用终端解释
    "code-runner.terminalRoot": "/mnt/",		# 终端解释器的root目录
```
