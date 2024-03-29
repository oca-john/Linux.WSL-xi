#!/usr/bin/sh
# wsl.ubuntu.init-xi
# 直接引用自openSUSE，使用时灵活更换Ubuntu相关的命令行习惯
# WSL 已支持与 Win 环境中的 exe 应用相互调用
# 不需要在 WSL 内部安装与 Win 中重复的应用

# openSUSE命令中若直接带-y参数，只能跟在zypper的具体命令之后，不能放在最后
# 如，`sudo zypper in -y emacs-nox`
# 而Debian和CentOS中可以放在命令后，也可以放在对象列表的最后
# 需写作，`sudo apt/dnf install -y emacs-nox`或`sudo apt/dnf install emacs-nox -y`

printf "softwares are being installed by repos\n"
sudo zypper in -y cmake gcc gcc-c++ git htop python3-matplotlib python3-numpy python3-ipython python3-jupyterlab python3-pyside2 python3-seaborn python3-scipy
printf "repos' softwares are installed\n"
# java 1.8 暂不支持apt直接安装

# configure the python3 and pip3
cd /usr/bin/
sudo rm python
sudo ln -s python3.* /usr/bin/python
sudo rm pip
sudo ln -s pip3 /usr/bin/pip
cd
sudo pip install pylint
# use `-i https://mirrors.ustc.edu.cn/pypi/web/simple` or `-i https://pypi.tuna.tsinghua.edu.cn/simple` to speed up the installation
sudo pip install torch==1.5.1+cpu torchvision==0.6.1+cpu -i https://mirrors.ustc.edu.cn/pypi/web/simple
printf "python3, pip3, pytorch are installed well\n"

printf "everything's ok!\n"
