## windows更新.grub失效.进入rescue模式.md

- 起因：windows更新后重启，进入rescue模式，无法正常引导grub2以及调用linux引导管理器

### 1.查看当前grub指向哪个分区
- `set`命令，显示当前grub指向的分区
- `root`和`prefix`是引导相关的参数，看到当前分区的格式为`(hd0,msdos7)`或`(hd0,gtp10)`表示不同的磁盘类型(hp_probook是msdos类型)

### 2.查找linux系统分区
- `ls (hd0,msdos1)`命令测试hd0,msdos1分区下的文件目录或磁盘格式，依次查看所有分区
- 若出现grub路径说明是linux分区，记住该分区编号
- 本次hp_probook中出现brfs文件格式，判断分区是linux分区，成功引导

### 3.重新设置root分区和prefix参数
- `set root=hd0,msdos6`设置root目录
- `set prefix=(hd0,msdos6)/boot/grub2`设置grub启动参数

### 4.修改模式并尝试启动
- `insmod normal`将修改写入启动文件
- `normal`以正常模式启动grub
