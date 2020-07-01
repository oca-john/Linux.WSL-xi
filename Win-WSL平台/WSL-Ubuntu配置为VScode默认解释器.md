# WSL-Ubuntu配置为VScode默认解释器

## 1. 安装VScode并初始化各类插件；
- 安装VScode编辑器，并安装所需语言的相关扩展，主要包括语法高亮、代码运行、版本管理工具即可；
- 安装Remote-WSL扩展，以便实现“模拟的”远程开发；

## 2. 安装WSL-Ubuntu系统；
- 在Microsoft Store搜索Ubuntu，选最新版即可；
- 安装完创建普通用户并设置密码；
- 安装基本的开发工具（Linux端）；

## 3. 设置WSL-Remote的默认系统；
- 在Remote-WSL的扩展中，右击设置Ubuntu为默认发行版；

## 4. 设置VScode的默认解释器；
- 在VScode底栏的Problems面板中切出Terminal，在默认Shell的下拉菜单中选择“Select Default Shell”；
- 在弹出的顶栏中选择“WSL Bash”；
- （此时只能选择WSL，但因为之前设置过默认的WSL是Ubuntu，所以打开VScode会默认开启Ubuntu发行版作为Bash解释器）；
