#!/usr/bin/sh
# This script is used to install sogou-2.4 into openSUSE Leap 15.3 x86_64
# This script works well under KDE and Xfce. But you need to install fcitx by yourself, `sudo zypper in fcitx`.
# If you are working on Gnome3, you also need to install `TopIcons Plus` in the software center.
# Script creat time: 2021.06.22, and updated at 2021.06.26, by Oca_John <oca-john@hotmail.com>.

# Download pkg of sogoupinyin(now 2.4)
wget https://ime.sogoucdn.com/dl/index/1612260778/sogoupinyin_2.4.0.3469_amd64.deb
# Uncompress the deb pkg, and the data file.
ar -x sogoupinyin_2.4.0.3469_amd64.deb
tar -xf data.tar.xz
echo "1. Files are prepared ready."

# Test if sogou-qimpanel is running, by Marguerite Su <marguerite@opensuse.org>
if test $( pgrep -f sogou-qimpanel | wc -l ) -ne 0 ; then
	echo "Killing running Sogou Pinyin...";
	killall sogou-qimpanel;
	echo "Killing running fcitx...";
	killall fcitx;
	echo "Waiting 30s for sogou-qimpanel-watchdog to fully quit...";
	sleep 30s;
else
	echo "2. Sogou & fcitx are not running, safe to go.";
fi

# Installation, File copy
sudo cp -r etc/X11/Xsession.d/72sogoupinyin /etc/X11/xdm/
sudo cp -r etc/xdg/autostart/* /etc/xdg/autostart/
sudo cp -r opt/* /opt/
chmod +x usr/lib/x86_64-linux-gnu/fcitx/*.so
sudo cp -r usr/lib/x86_64-linux-gnu/fcitx/*.so /usr/lib64/fcitx/
sudo cp -r usr/share/applications/*.desktop /usr/share/applications/
sudo cp -r usr/share/doc/sogoupinyin /usr/share/doc/
sudo cp -r usr/share/fcitx/addon/*.conf /usr/share/fcitx/addon/
sudo cp -r usr/share/fcitx/imicon/*.png /usr/share/fcitx/imicon/
sudo cp -r usr/share/fcitx/inputmethod/*.conf /usr/share/fcitx/inputmethod/
sudo cp -ru usr/share/icons/hicolor /usr/share/icons/
echo "3. Installation files are all dealed."

# Afterwork, by Marguerite Su <marguerite@opensuse.org>
/usr/bin/update-mime-database /usr/share/mime/packages &> /dev/null
/usr/bin/update-desktop-database -q /usr/share/applications 
/usr/bin/gtk-update-icon-cache -fq /usr/share/icons/hicolor
/sbin/ldconfig
echo "4. Afterwork all done."

# File clean
sudo rm -rf etc/ opt/ usr/ control.tar.gz data.tar.xz debian-binary 
sudo rm sogoupinyin_2.4.0.3469_amd64.deb
echo "5. Installation files are all cleaned."

# Success
echo "Sogoupinyin for Linux is now installed."
echo "Please start 1) fcitx 2) sogou-qimpanel again."
exit 0
