# MailSpring on Linux
> 使用 Mailspring 作为全平台邮件管理客户端  
> Mailspring 支持主流邮箱账号、本地管理邮箱密码、界面简洁合理、基于C编写同步速度快  
> 下载地址（Github）：https://github.com/Foundry376/Mailspring/releases  

## 在 Linux 下安装
1. 从 Github 下载安装包（.rpm, .deb）并用 `zypper` 或 `apt` 安装，ArchLinux 使用 `pacman` 安装
2. 忽略管理器提示的依赖缺失（证实无影响）
3. 安装 `gnome-keyring` 钥匙环程序
4. 首次从命令行运行 `mailspring`，测试依赖缺失问题
5. 使用 `oca-john` 账号登录 mailspringID 系统，`keyring` 钥匙环可以留空（即空密码）
6. 配置邮箱账号信息，配置邮件管理器视图
7. 进入软件界面后，调整视图，配置开机自启选项、配置界面配色

## 在 Windows 下安装
1. 从Github下载安装包（.exe）并安装
2. 使用 `oca-john` 账号登录 mailspringID 系统
3. 配置邮箱账号信息，配置邮件管理器视图
4. 进入软件界面后，调整视图，配置开机自启选项、配置界面配色

## 注意 `钥匙环`
> openSUSE/ArchLinux 上需要安装 `gnome-keyring` 钥匙环用于本地密码管理（可以配置空密码）  
> Win 平台不需要钥匙环应用  
