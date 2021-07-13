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
