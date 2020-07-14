#!/usr/bin/sh

# CentOS新版本与旧版又较大区别，在更新上具有了进步性意义
# 但同时，Stream的存在目前是比较尴尬的（事实上是滚动的CentOS_8，而非滚动的CentOS）

# 检查网络
# 实体机时，主要是检查驱动和网络开关，若gnome插件不工作，可通过nm-connection-editor编辑网络练级；
# 虚拟机时，主要是检查网络开关和VM插件有没有安装；

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
