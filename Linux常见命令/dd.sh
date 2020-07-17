#!/usr/bin/sh
# dd
# 摘自：https://man.linuxde.net/dd

dd if=/path/to/iso of=/dev/sdbx bs=1M   # 可将iso镜像刻录到sdb设备
# if表示输入的镜像，of表示输出的磁盘设备，bs表示写入文件块的大小
