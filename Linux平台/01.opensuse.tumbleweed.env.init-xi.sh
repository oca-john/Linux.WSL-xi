#!/usr/bin/sh
# opensuse.tumbleweed.env.init-xi

# all files are included in suse.leap.preset folder
# just execute the bash script, and everything will be done
# openSUSE命令中若直接带-y参数，只能跟在zypper的具体命令之后，不能放在最后
# 如，`sudo zypper in -y emacs-nox`
# 而Debian和CentOS中可以放在命令后，也可以放在对象列表的最后
# 需写作，`sudo apt/dnf install -y emacs-nox`或`sudo apt/dnf install emacs-nox -y`

# install from repos
printf "softwares are being installed by repos\n"
sudo zypper in -y dia goldendict imagewriter kcolorchooser lyx marble plasma5-desktop-emojier scribus texstudio virtualbox cmake git patterns-kde-devel_qt5  libqt5-creator python3-numpy python3-scipy python3-matplotlib python3-seaborn python3-pyside2 java-1_8_0-openjdk-devel amarok audacity darktable gimp imagej imagemagick inkscape kdenlive krita rawtherapee smplayer vlc chromium filezilla teams teamviewer-suse
printf "repos' softwares are installed\n"

# configure the python3 and pip3
cd /usr/bin/
sudo rm python
sudo ln -s python3.* /usr/bin/python
sudo rm pip
sudo ln -s pip3 /usr/bin/pip
cd
# use `-i https://pypi.tuna.tsinghua.edu.cn/simple` to speed up the installation
sudo pip install torch==1.5.1+cpu torchvision==0.6.1+cpu -i https://pypi.tuna.tsinghua.edu.cn/simple
printf "python3, pip3, pytorch are installed well\n"

# install from rpms
printf "system are installing rpms\n"
cd rpms
sudo zypper in -y ./*.rpm
printf "rpms are installed\n"
cd ../

# install from tar_pkgs
printf "softwares from tar packages are being installed by repos\n"
cd tarpkgs
tar -zxvf ./*.tar.gz /home/oca/bin/bin-xi/
tar -zxvf ./*.tar.xz /home/oca/bin/bin-xi/
tar -zxvf ./*.tar.bz2 /home/oca/bin/bin-xi/
printf "softwares from tar packages are installed\n"
cd ../

# install from appimages
printf "appimages are being installed by repos\n"
cd appimage
cp ./*.AppImage /home/oca/bin/appimages
sudo chmod a+x /home/oca/bin/appimages/*.AppImage
printf "appimages are installed\n"
cd ../

# install fonts
cd font_script
printf "your curent dir is: "
pwd
printf "changing dir into fonts\n"
cd fonts
printf "copying fonts into system folder\n"
sudo cp *.ttf *.TTF *.ttc /usr/share/fonts/truetype/
printf "fonts are ok!\n"
cd ../

# multimedia codecs
sudo zypper ar -cfp 90 http://ftp.gwdg.de/pub/linux/misc/packman/suse/openSUSE_Tumbleweed/ packman
sudo zypper in -y --allow-vendor-change ffmpeg lame gstreamer-plugins-bad gstreamer-plugins-ugly gstreamer-plugins-ugly-orig-addon gstreamer-plugins-libav libavdevice56 libavdevice58 libdvdcss2 vlc-codecs
sudo zypper up --from packman --allow-vendor-change
printf "multimedia codecs are installed\n"

# other pkgs is in baks
# here is goldendict dicts, need to set it mannully.
printf "dict of goldendict are being installed by repos\n"
cd baks
unzip -n ./*.zip -d /home/oca/bin/bin-xi/
printf "dict of goldendict are installed\n"
cd ../

printf "everything's ok!\n"
