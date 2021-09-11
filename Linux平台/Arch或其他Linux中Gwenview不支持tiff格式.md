# Arch或其他Linux中Gwenview不支持tiff格式

## 1. 检查tiff库

- Arch 系使用 `sudo pacman -Ss libtiff`, 检查是否安装了 `libtiff4/5` 包，可不加 `sudo`
- Debian 系使用 `sudo apt search libtiff` 检查，可不加 `sudo`
- Redhat 系使用 `sudo dnf/yum search libtiff` 检查，可不加 `sudo`
- SUSE 系使用 `sudo zypper se libtiff` 检查，可不加 `sudo`
- 若没有安装，则分别用 `pacman -S`, `apt install`, `dnf install`, `zypper in` 安装该库，完善系统对TIFF格式的支持

## 2. 检查桌面框架支持

- Arch 系使用 `sudo pacman -Ss imageformats`, 检查 `qt5/6-imageformats` 包
- Debian 系使用 `sudo apt search imageformats` 检查，可不加 `sudo`
- Redhat 系使用 `sudo dnf/yum search imageformats` 检查，可不加 `sudo`
- SUSE 系使用 `sudo zypper se imageformats` 检查，可不加 `sudo`
- 若没有安装，则分别用 `pacman -S`, `apt install`, `dnf install`, `zypper in` 补充该工具包，完善桌面环境对扩展图像格式的支持

