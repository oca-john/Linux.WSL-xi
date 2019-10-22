# 1. CMD自定义默认路径
## 1.1 注册表
- 开始中选择运行，键入`regedit` 进入注册表编辑器。
## 1.2 Command Processor
- 定位至 `HKEY_CURRENT_USER\Software\Microsoft\Command Processor` 
## 1.3 新建字符串值/String Value
- 新建字串值，重命名为`autorun`，值为`cd /d D:\path\to\your\directory` 
## 1.4 重开CMD

# 2. CMD自定义命令
- 类似于Linux `alias yourcmd=oldcmd`  
- Win-CMD中键入 `doskey yourcmd=oldcmd` 即可创建自定义的命令。  
