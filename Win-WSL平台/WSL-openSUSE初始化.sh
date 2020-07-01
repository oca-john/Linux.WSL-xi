#!/usr/bin/sh
# WSL-openSUSE初始化

printf "softwares are being installed by repos\n"
sudo zypper in cmake git python3-numpy python3-scipy python3-matplotlib python3-seaborn java-1_8_0-openjdk-devel
printf "repos' softwares are installed\n"

printf "everything's ok!\n"
