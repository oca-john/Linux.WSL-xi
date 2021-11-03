# VScode编辑器-ZHXI
- By Oca_John <oca-john@hotmail.com>
> `Ctrl + /`, 可快速单行注释（可对多行进行行注释）  
> `Ctrl + Shift + a`, 可快速多行注释 / 块注释  
> 块注释需要目标语言支持，某些代码只支持行注释  

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
- `Markdown All in One` (Yu Zhang)
#### C/C++
- `C/C++`               (Microsoft)
#### Python/Perl/R
- `Jupyter`             (Microsoft)
- `Python`              (Microsoft)
- `Perl`                (Gerald Richer)
- `R`                   (Yuki Ueda)
#### Html/CSS/JS
- `ESLint`              (Dirk Baeumer)
- `HTML CSS Support`    (ecmel)

### 2.3 WSL 特有插件
- `Remote WSL`, `Remote SSH`, 相关插件用于使用 WSL 模拟远程开发，也可用于实际的远程开发工作

## 3. JSON 配置
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
