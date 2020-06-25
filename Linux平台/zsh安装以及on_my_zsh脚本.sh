## 安装zsh
sudo zypper in zsh

## 安装oh my zsh
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

## 修改默认shell
chsh -s /bin/zsh

## 将主体修改为agnoster
vi .zshrc

## 配色方案
# 模拟终端颜色修改使得所有内容能看清
