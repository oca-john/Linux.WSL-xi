#!/usr/bin/sh
# wsl.opensuse.init-xi
# WSL 已支持与 Win 环境中的 exe 应用相互调用
# 不需要在 WSL 内部安装与 Win 中重复的应用

# openSUSE命令中若直接带-y参数，只能跟在zypper的具体命令之后，不能放在最后
# 如，`sudo zypper in -y emacs-nox`
# 而Debian和CentOS中可以放在命令后，也可以放在对象列表的最后
# 需写作，`sudo apt/dnf install -y emacs-nox`或`sudo apt/dnf install emacs-nox -y`

printf "softwares are being installed by repos\n"
sudo zypper in -y cmake gcc gcc-c++ git python3-matplotlib python3-numpy python3-ipython python3-jupyterlab python3-pyside2 python3-seaborn python3-scipy java-1_8_0-openjdk-devel
printf "repos' softwares are installed\n"

# configure the python3 and pip3
cd /usr/bin/
sudo rm python
sudo ln -s python3.6 /usr/bin/python
sudo rm pip
sudo ln -s pip3 /usr/bin/pip
cd
sudo pip install pylint
# use `-i https://mirrors.ustc.edu.cn/pypi/web/simple` to speed up the installation
sudo pip install onnx tensorflow torch -i https://mirrors.ustc.edu.cn/pypi/web/simple
printf "python3, pip3, pytorch are installed well\n"

printf "everything's ok!\n"
