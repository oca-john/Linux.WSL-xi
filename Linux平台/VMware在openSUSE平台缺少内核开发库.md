## 问题描述
openSUSE缺少vmware必须的内核开发库，会导致运行时报错，无法使用

## 解决方案
1. 通过YaST工具中的Pattern模块，选择开发模块中的base, c++, perl, python3开发套件；  
2. 在YaST中搜索kernel-devel，安装内核开发库；  
3. 安装vmware的bundle包，直接`./`执行该文件即可；  
