# VMware安装卸载

## VMware安装
- 用zypper或yast安装`kernel-devel`，以获得内核开发组件
- 为VMware安装包赋予执行属性`chmod u+x VMware...`，以获得可执行的属性
- 安装VMware
- 打开VMware，编译相应内核工具（仅首次）
- 输入序列号，以获得许可

## VMware卸载
- `vmware-installer -u vmware-workstation`，以卸载相关组件
