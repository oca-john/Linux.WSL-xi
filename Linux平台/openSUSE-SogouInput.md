# openSUSE Leap 152 安装搜狗输入法
## 1. 安装主文件和主要依赖库
从software.opensuse.org下载一键安装脚本，自动添加软件源和相关基础库

## 2. 补充缺失库
增加openSUSE的社区源，之后可以安装libQtWebKit4  
运行sogou.qimpanel时，报错提示缺少库，不能渲染候选词面板  
依次安装下列库：  
- libfcitx-4_2_9
- libQtWebKit4
- fcitx-qt4
