# openSUSE 下 conda 虚拟环境部署

> Python 3.7 以上，支持使用 pip 直接安装（建议修改 USTC 源）
> 
> 当前已更新为 Mindspore 1.2.1

- 以 MindSpore 1.0.1 部署为例

## 1. MiniConda 部署
从官网、科大源或清华源下载 MiniConda 文件，sh 安装，一般装到用户目录下 bin 目录。  

## 2. 创建虚拟环境
`conda create -n mindspore python=3.7.5`，创建官方要求的虚拟环境。  

## 3. MindSpore 安装
`pip install https://ms-release.obs.cn-north-4.myhuaweicloud.com/1.0.1/MindSpore/cpu/ubuntu_x86/mindspore-1.0.1-cp37-cp37m-linux_x86_64.whl --trusted-host ms-release.obs.cn-north-4.myhuaweicloud.com -i https://mirrors.ustc.edu.cn/pypi/web/simple`，安装。  
此时，装完了库，但由于运行环境问题，无法正确调用。  

## 4. numpy 库降级
mindspore 需要旧版 numpy，`pip install numpy==1.19.3 -i https://mirrors.ustc.edu.cn/pypi/web/simple`，安装。  

## 5. glibc 2.27 库安装
openSUSE 152 的 glibc 库最新的版本为 2.25， 需要使用 OBS 上的用户库来安装。  
`sudo zypper ar -f https://download.opensuse.org/repositories/home:/cabelo:/intel/openSUSE_Leap_15.2/ home:cabelo:intel`，增加 OBS 源。  
`sudo zypper install glibc-2.27-lp152.1.4.x86_64`，安装 glibc 2.27 库。  

至此，openSUSE 下 conda 虚拟环境部署 MindSpore 1.0.1 框架完成。  
(Ubuntu 系统未测试，但预计 glibc 部分应该直接满足，不需要单独装；如果不满足，不可参考此文，需摸索 Ubuntu 上的解决方案)
