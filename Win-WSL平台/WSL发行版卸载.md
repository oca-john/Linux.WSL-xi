# WSL发行版卸载

- 某个wsl发行版非正常卸载，导致选项中存在空白发行版选项，如何卸载或去掉不想要的wsl发行版？

## 主要工具：
cmd中使用wslconfig命令管理wsl子系统

若进入wsl也可通过wslconfig.exe直接调用


## 命令参数：
`/l, /list [/all]`                列出已注册的发行版
`/s, /setdefault <DistroName>`    将该发行版设为默认
`/t, /terminate <DistroName>`     终止该发行版
`/u, /unregister <DistroName>`    取消注册该发行版


## 卸载发行版：
1. 列出所有已注册发行版
`wslconfig /l`

2. 卸载指定发行版
`wslconfig /u debian`             # debian为需要卸载的发行版名
