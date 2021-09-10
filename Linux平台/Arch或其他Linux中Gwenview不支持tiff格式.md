# Arch或其他Linux中Gwenview不支持tiff格式

## 1. 检查tiff库

- `sudo pacman -Ss libtiff`, 检查是否安装了`libtiff4/5`包
- 若没有安装，则先安装该库，完善系统对TIFF格式的支持

## 2. 检查桌面框架支持

- `sudo pacman -Ss imageformats`, 检查`qt5/6-imageformats`包
- 若没有安装，则补充该工具包，完善桌面环境对扩展图像格式的支持

