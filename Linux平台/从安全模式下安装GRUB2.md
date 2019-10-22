## 0.使用材料
suse或gecko启动盘中的rescue-mode

## 1.挂载分区
### 1.1 查看所有分区
fdisk -l

### 1.2 挂载根分区等
mount /dev/sda8 /mnt            # 根分区，必须挂载  
mount /dev/sda6 /mnt/boot       # 若非单独分区，不必单独挂载  
mount /dev/sda9 /mnt/home       # 若非单独分区，不必单独挂载  

### 1.3 挂载GRUB2相关分区
mount -t proc proc /mnt/proc  
mount --rbind /sys /mnt/sys  
mount --rbind /dev /mnt/dev  

## 2.chroot切换
chroot /mnt /bin/bash  

## 3.安装grub2到引导分区
### 3.1 生成grub.cfg
grub2-mkconfig -o /boot/grub2/grub.cfg  

### 3.2 安装grub2到sda
grub2-install /dev/sda  

### 3.3 退出急救系统
exit  
reboot  
