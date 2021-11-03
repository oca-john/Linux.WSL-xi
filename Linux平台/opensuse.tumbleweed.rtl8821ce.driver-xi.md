# opensuse.tumbleweed.rtl8821ce.driver-xi
- By Oca_John <oca-john@hotmail.com>

## 问题背景：

rtl8821ce芯片组是AMD旗下处理器芯片，在Linux领域驱动支持不如Intel。在opensuse上有明显的滞后支持的现象。Leap 15.1版本官方内核较老，不支持该芯片组（社区支持的版本有向后支持的可尝试，方法与tw版一样）。Leap 15.2版本未发布，但和Tumbleweed一样支持该芯片组，不过同样是社区支持，官方仓库没有对该芯片组的支持。

## 临时网络：

- 通过网线连接，建立DSL拨号网络，需要帐号和密码。
- 通过USB共享手机网络，新建Wired Ethernet类型的网络。

## 解决方案：

1. 在software.opensuse.org搜索rtl8821ce，结果页面中Tumbleweed下有社区贡献的驱动包列表。
2. 该列表无法直接观察到特定的内核版本，需要逐个在社区源名称中打开构建页面，右侧的构建结果列表中有Tumbleweed构建成功的从名称中打开，可看见构建成功的包列表，包名称中能看见打包平台的内核版本。（内核版本通过信息中心或neofetch来查看）
3. 选择和自己平台的内核匹配的源，在驱动包列表中在右侧打开Expert Download。
4. 结果中通过“增加源并手动安装”来安装驱动。增加源，刷新源，安装rtl8821ce。安装时注意不是官方所示的rtl8821ce，用Tab键探查一下该源中驱动包的具体名字，再安装。
