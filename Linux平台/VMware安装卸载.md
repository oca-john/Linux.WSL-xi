# VMware安装卸载

## VMware安装
- 用zypper或yast安装`kernel-devel`，以获得内核开发组件
- 为VMware安装包赋予执行属性`chmod u+x VMware...`，以获得可执行的属性
- 安装VMware
- 打开VMware，编译相应内核工具（仅首次）
- 输入序列号，以获得许可

## VMware卸载
- `sudo vmware-installer -u vmware-workstation`，以卸载相关组件
- 卸载时需要确认是否保留配置文件，输入`no`以删除所有配置文件
