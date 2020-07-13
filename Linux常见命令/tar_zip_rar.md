## tar -zxvf/-zcvf (压缩只用tar.gz)

摘自：https://man.linuxde.net/tar

要点：除了c表示压缩，x表示解压缩之外；压缩时需要**先跟压缩后的包名，再跟待压缩的文件列表（文件夹）**；解压时**只跟待解压的包名**。

tar.gz打包`tar -zcvf tar_pkg_name origin_folder`, 如`tar -zcvf tst.tar.gz ./tst/`

tar.gz解压`tar -zxvf tar_pkg_name`, 如`tar -zxvf tst.tar.gz`

tar.xz解压`tar xvJf tar_pkg_name`, 如`tar xvJf tst.tar.xz`   # 因为tar外层的压缩方式不同，与上述解压方式也不同。

## unzip

`unzip -n tst.zip -d ./`, 非覆盖方式，解压tst包，指定当前目录。

## rar x

`rar x tst.rar`, 或`unrar -e tst.rar`, 直接解压tst包。
