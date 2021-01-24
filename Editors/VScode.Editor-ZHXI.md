# VScode Editor 开发环境 - ZHXI

## 1. VScode 基础
### 1.1 平台差异
- Linux 平台 PATH 管理更方便，Windows 平台较复杂，同时增加了 WSL 配置的问题；  
- 两者均支持 Conda 环境配置。
- 安装推荐离线安装包，使用远程仓库较慢。  

### 1.2 使用逻辑
- VScode 本身支持大多数语言的语法，语法高亮默认支持；
- 安装相关语言插件，以支持语法检查和自动补全；
- 安装 Kite 工具（与平台对应），以支持智能补全；
- `Ctrl + Shift + p`, 选择`JSON`，编辑配置文件；
- 配置"全局配置，Code-Runner，解释器，调试工具"等；

## 2. 常用插件
### 2.1 语言无关的必装插件
- `Bracket Pair Colorizer`, 配对括号彩虹色高亮
- `Code Runner`, 代码测试运行
- `Kite AI Code AutoComplete`, 人工智能代码不全（需Kite工具支持）
- `Live Share Extension Pack`, 协作开发（Audio报错可删除）
- `VScode-icons`, 编辑器图标包

### 2.2 语言相关插件
#### Markdown
- Markdown All in One (Yu Zhang)
#### C/C++
- C/C++               (Microsoft)
#### Python/Perl/R
- Jupyter             (Microsoft)
- Python              (Microsoft)
- Perl                (Gerald Richer)
- R                   (Yuki Ueda)
#### Html/CSS/JS
- ESLint              (Dirk Baeumer)
- HTML CSS Support    (ecmel)

## 3. JSON 配置
``` json
{
    "workbench.iconTheme": "vscode-icons",            // 图标主题
    "update.mode": "manual",                          // 手动更新
    "terminal.integrated.inheritEnv": false,
    "explorer.confirmDelete": false,
    "kite.showWelcomeNotificationOnStartup": false,   // 不显示 Kite 弹窗
    "vsicons.dontShowNewVersionMessage": true,        // 图标插件不检查更新
    "workbench.activityBar.visible": false,           // 侧边栏隐藏
    "python.pythonPath": "/home/oca/bin/miniconda3/envs/mindspore/bin/python"   // Python 解释器路径
    "code-runner.executorMap": {                      // Code Runner 相关解释器或调试器路径
        "html": "google-chrome",
    }

    // Code-runner 设置
    "code-runner.defaultLanguage": "python"           // 默认 Code Runner 编程语言为 Python
    "code-runner.runInTerminal": true,                // 调用终端运行 Code Runner 命令
    // "code-runner.terminalRoot": "/mnt/",           // 终端的默认起始位置
    // 设置 wsl 解释器
    // "terminal.integrated.shell.windows": "C:\\Windows\\System32\\wsl.exe",   // when use wsl as terminal
    // "python.pythonPath": "D:\\Programs\\Miniconda3\\envs\\tf1\\python.exe",  // tf1 环境中的解释器
    // 设置为 Conda env 中的解释器
    "terminal.integrated.shell.windows": "C:\\Windows\\System32\\cmd.exe",
    "python.pythonPath": "D:\\ProgramData\\Anaconda3\\envs\\fortrain\\python.exe",
    "terminal.integrated.shellArgs.windows": ["/K",
    "D:\\Programs\\miniconda3\\Scripts\\activate.bat D:\\Programs\\miniconda3\\envs\\tf1"]
}
```
