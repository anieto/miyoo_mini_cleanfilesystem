#!/bin/sh
echo $0 $*
cd $(dirname "$0")
HOME=/mnt/SDCARD
if [ -d /mnt/SDCARD/Roms ] ; then

    cd /mnt/SDCARD/Roms
    find . -type f -name '._*' -exec rm -f {} \;
    find . -type f -name '.DS_*' -exec rm -f {} \;
    find . -type f -name "*.db" -exec rm -f {} \;
    cd /mnt/SDCARD/APP/CleanFileSystem
    ./printstr "File system has been cleaned."
    
fi