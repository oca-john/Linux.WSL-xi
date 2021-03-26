# Linux.WSL-xi
本项目用于记录类Linux计算环境搭建的过程，常用Linux命令，常见Linux工具用法，和其他工具软件的学习笔记。

## 1. Linux 运行环境
### 从安全模式下安装GRUB2
先进入急救模式，检查并挂载Linux相关的分区，挂载GRUB2相关的分区；  
生成grub.cfg文件，安装grub2到/dev/sda；  

### 修改系统启动方式(级别)
键入`systemctl set-default multi-user.target`将启动方式修改为文本界面启动；  

## 2. Windows环境下的类Linux环境
### Windows Terminal中配置WSL（openSUSE）
Windows Terminal中配置WSL（openSUSE）用于默认的开发环境，与可视化相关的则用Conda进行配置，可调用Windows原生库进行绘图。

## 3. vscode.code-runner.wsl-linux
### 软件环境
控制面板中开启wsl功能，微软商店安装openSUSE行版。  
安装vscode软件以及remote-wsl, code-runner插件。  

### 工具连接
#### 发行版和默认终端解释器
打开vscode，在remote-wsl插件中选择默认的发行版，在terminal中选择默认解释器为wsl（即指向特定发行版的bash）。  

#### 编辑器运行和终端解释器
编辑器部分默认采用cmd，搜寻windows下的语言环境。  
F1打开设置搜索框-搜索setting.json （文件-预设-设置-搜索setting.json-edit.in.setting.json）。  

#### setting-json编辑
``` js
// 实际应为json，由于json不支持注释，此处用js语法渲染。
{
    // VScode 设置
    "workbench.iconTheme": "vscode-icons",    
    // ====================================================================================
    // Code-runner 设置
    "code-runner.defaultLanguage": "python",            // 默认 code-runner 编程语言为 Python
    "code-runner.runInTerminal": true,                  // 调用终端运行 code-runner 命令
    // "code-runner.terminalRoot": "/mnt/",             // 终端的默认起始位置
    "python.languageServer": "Pylance",                 // 设置语言服务器
    "kite.showWelcomeNotificationOnStartup": false,     // 不显示 Kite 弹窗
    "workbench.editorAssociations": [
        {
            "viewType": "jupyter.notebook.ipynb",       // jupyter格式关联
            "filenamePattern": "*.ipynb"
        }
    ],
    "code-runner.executorMap": {                        // Code Runner 相关解释器或调试器路径
        "perl": "perl",
        "html": "google-chrome",                        // 其他语言支持参见 Code Runner 插件详情页示例代码
    },
    // ====================================================================================
    // 设置为 wsl 发行版的解释器
    // "terminal.integrated.shell.windows": "C:\\Windows\\System32\\wsl.exe",       // when use wsl as terminal
    // 设置为 Conda env 中的解释器
    "terminal.integrated.shell.windows": "C:\\Windows\\System32\\cmd.exe",
    // "python.pythonPath": "/home/oca/bin/miniconda3/envs/mindspore/bin/python"    // Python 解释器路径
    // "code-runner.terminalRoot": "/mnt/d/Users/oca/",                             // 终端的默认起始位置
    // "python.pythonPath": "D:\\Programs\\miniconda3\\envs\\mindspore\\python.exe",// mindspore 环境中的解释器
    "python.pythonPath": "D:\\Programs\\Miniconda3\\envs\\tf1\\python.exe",         // tf1 环境中的解释器
    "terminal.integrated.shellArgs.windows": ["/K",
    "D:\\Programs\\miniconda3\\Scripts\\activate.bat D:\\Programs\\miniconda3\\envs\\tf1"],  // 激活 tf1 环境

}
```
