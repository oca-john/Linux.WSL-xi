# LinuxRuntime搭建
本页面用于记录计算环境搭建的过程。

## 1. Linux 运行环境
### 从安全模式下安装GRUB2
- 先进入急救模式；  
- 检查并挂载Linux相关的分区；  
- 挂载GRUB2相关的分区；  
- 生成grub.cfg文件；  
- 安装grub2到/dev/sda；  

### 修改系统启动方式(级别)
- 直接在终端键入`systemctl get-default`来查询当前启动方式；
- 键入`systemctl set-default multi-user.target`将启动方式修改为文本界面启动；  

## 2. Windows环境下的类Linux环境
### CMD是Windows下默认的命令工具，通过PATH变量配置实现对命令行工具的调用
- 通过windows的PATH变量的配置，即可实现对perl, python, r语言的调用，可以实现大部分近似于linux的操作，当然dir取ls而代之的查看方式会不习惯。

### 用GitBash作为Windows环境下的类Linux环境
- GitBash在安装好perl之后可以自动初始化perl环境，因为perl不需要交互环境；而python和r语言需要使用交互方式，需要额外配置，即增加详细的参数来实现。
- 通过Git安装目录下etc目录的bash.bashrc文件进行运行环境配置，主要是增加别名，方法与linux环境完全一致，但赋值的运行方式需要特别注意。

## 3. win10的openSUSE子系统
### win10中建立openSUSE子系统是不错的融合方式
- openSUSE子系统保留了简化的YaST工具，因此在管理上完胜Fedora和Ubuntu之类的发行版。 
- win10和openSUSE子系统实现了文件管理融合，命令行尚未互通（但从cmd中可以切换至openSUSE的bash）
- 两系统之间可以使用软链接建立联系
