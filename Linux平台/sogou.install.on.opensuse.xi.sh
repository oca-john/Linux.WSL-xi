#!/usr/bin/sh

# This script is used to install sogou-2.4 into openSUSE Leap 15.3 x86_64
# Script creat time: 2021.06.22, by Oca John <zhangxiyh@yahoo.com>

# Download pkg of the latest release of sogoupinyin(now 2.4)
wget https://ime.sogouimecdn.com/202106221047/f498062e8b966a3a1875d564dadf2f43/dl/index/1612260778/sogoupinyin_2.4.0.3469_amd64.deb ~/Downloads/
cd Downloads
# uncompress the deb pkg, and the data file.
ar -x sogoupinyin_2.4.0.3469_amd64.deb
tar -xf data.tar.xz

# Test if sogou-qimpanel is running, by Marguerite Su <marguerite@opensuse.org>
if test $( pgrep -f sogou-qimpanel | wc -l ) -ne 0 ; then
	echo "Killing running Sogou Pinyin...";
	killall sogou-qimpanel;
	echo "Killing running fcitx...";
	killall fcitx;
	echo "Waiting 30s for sogou-qimpanel-watchdog to fully quit...";
	sleep 30s;
else
	echo "Sogou & fcitx are not running, safe to go.";
fi

# Installation, File copy
# /etc files
sudo cp -r etc/X11/Xsession.d/72sogoupinyin /etc/X11/xdm/
sudo cp -r etc/xdg/autostart/* /etc/xdg/autostart/
# /opt files
sudo cp -r opt/* /opt/
# /usr files
chmod +x usr/lib/x86_64-linux-gnu/fcitx/*.so
sudo cp -r usr/lib/x86_64-linux-gnu/fcitx/*.so /usr/lib64/fcitx/
sudo cp -r usr/share/applications/*.desktop /usr/share/applications/
sudo cp -r usr/share/doc/sogoupinyin /usr/share/doc/
sudo cp -r usr/share/fcitx/addon/*.conf /usr/share/fcitx/addon/
sudo cp -r usr/share/fcitx/imicon/*.png /usr/share/fcitx/imicon/
sudo cp -r usr/share/fcitx/inputmethod/*.conf /usr/share/fcitx/inputmethod/
sudo cp -ru usr/share/icons/hicolor /usr/share/icons/

# Afterwork, by Marguerite Su <marguerite@opensuse.org>
/usr/bin/update-mime-database /usr/share/mime/packages &> /dev/null
/usr/bin/update-desktop-database -q /usr/share/applications 
/usr/bin/gtk-update-icon-cache -fq /usr/share/icons/hicolor
/sbin/ldconfig

# Success
echo "Sogou Pinyin Linux is now installed."
echo "Please start 1) fcitx 2) sogou-qimpanel again."
exit 0
