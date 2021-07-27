#!/usr/bin/sh

# CentOS 系列已`完全弃用`
# CentOS 新版本与旧版又较大区别，在更新上具有了进步性意义
# 但同时，Stream 的存在目前是比较尴尬的（事实上是滚动的 CentOS_8，而非滚动的 CentOS，大版本更新依然需要重新安装）

# 检查网络
# 实体机时，主要是检查驱动和网络开关，若 gnome 插件不工作，可通过 nm-connection-editor 编辑网络练级；
# 虚拟机时，主要是检查网络开关和 VM 插件有没有安装；

# 开启EPEL-方法1
sudo dnf install epel-release-8-8.el8.noarch    # 通过dnf安装epel配置软件包，自动开启epel源

# 开启EPEL-方法2
# 配置EPEL 8软件源
sudo dnf install https://dl.fedoraproject.org/pub/epel/epel-release-latest-8.noarch.rpm
# 升级，这与Debian一样，但不如openSUSE的up/dup
sudo dnf update   # 软件列表升级
sudo dnf upgrade  # 系统版本升级

# 测试安装软件
# 默认库中，Debian和openSUSE都能安装的neofetch，CentOS安装不了，安装了EPEL源之后则可以
sudo dnf install neofetch -y

# 基本的编程环境
# c相关（测试）
sudo dnf install gcc gcc-c++
# python3相关（测试）
sudo dnf install python3-pip python3-numpy python3-scipy python3-pandas python3-matplotlib python3-seaborn
