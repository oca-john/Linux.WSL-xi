# make usb useful in Vbox
## mount your usb under linux
`mount /dev/sdbx /run/meida/users/`  
or you hava make your linux auto-mount this media  

## configure a share area of your vbox machine
under linux, configure your vbox machine a shared directory between linux and vbox  

## make a soft link under linux
`ln -s /run/media/users/usb /home/users/share-area-of-vbox`  

## run your vbox-machine (maybe it's win7, like mine)
go into your share dir, and the usb shared directory is there.

## I use the zotero as my paper management software, which need a paper database directory
build my zotero paper-dir in zotero, when the data dir is under the usb;  
move into a new env, no matter it's windows or linux, even a vbox, install the zotero, and setup your zotero paper data-dir at it's setting menu;  
then, it will ask for restart the software; do that, and you get your mobile database at a totally new env.  
