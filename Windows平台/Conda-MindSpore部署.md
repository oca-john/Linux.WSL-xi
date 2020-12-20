# Conda 虚拟环境部署 MindSpore
- 以 MindSpore 1.0.1 部署为例

## 1. MiniConda 部署
从官网或清华源下载 MiniConda exe 文件，安装。  

## 2. 创建虚拟环境
`conda create -n mindspore python=3.7.5`，创建官方要求的虚拟环境。  
注意，自行修改启动器属性中的“启动命令”(指定默认进入的虚拟环境)和“启动位置”(决定默认打开的目录)，方面直接调用。  
终端可考虑使用 Windows Terminal。

## 3. MindSpore 安装
`pip install https://ms-release.obs.cn-north-4.myhuaweicloud.com/1.0.1/MindSpore/cpu/ubuntu_x86/mindspore-1.0.1-cp37-cp37m-linux_x86_64.whl --trusted-host ms-release.obs.cn-north-4.myhuaweicloud.com -i https://pypi.tuna.tsinghua.edu.cn/simple`，安装。  
此时，装完了库，但由于运行环境问题，无法正确调用。  

## 4. numpy 库降级
mindspore 需要旧版 numpy，`pip install numpy==1.19.3 -i https://pypi.tuna.tsinghua.edu.cn/simple`，安装。  

至此，Windows 下 conda 虚拟环境部署 MindSpore 1.0.1 框架完成。  
