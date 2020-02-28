# Linux开机检查1min30s问题

## 1. 查询UUID

`sudo blkid` 查询所有磁盘的UUID，根据大小定位Linux引导盘标签，复制相应的UUID。

### 1.1 辅助定位Linux引导盘

若无法通过大小、顺序、引导盘标签确定哪个分区是引导分区，适应`sudo fdisk -l` 查询所有分区的详细信息列表。

### 1.2 结合上述信息确定引导分区和UUID



## 2. 修改启动文件中错误的UUID

开机检查1min30s问题，一般是由于UUID不一致导致的。

`sudo vi /etc/fstab` 修改启动文件中引导盘的UUID，使之与上述`blkid` 命令获得的ID相同。
