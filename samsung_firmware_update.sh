#!/bin/bash

# thanks to https://www.reddit.com/r/zfs/comments/fuqgoi/script_to_update_samsung_ssd_firmware/
# get the samsung firmware at https://semiconductor.samsung.com/us/consumer-storage/support/tools/

iso_url="https://semiconductor.samsung.com/resources/software-resources/Samsung_SSD_860_EVO_RVT04B6Q_Win.iso"

apt-get -y install gzip unzip wget cpio
mkdir -p /tmp/samsung/rootfs/mnt
wget -O /tmp/samsung/file.iso $iso_url
mount /tmp/samsung/file.iso /tmp/samsung/rootfs/mnt/
cd /tmp/samsung/rootfs
gzip -dc /tmp/samsung/rootfs/mnt/initrd | cpio -idv --no-absolute-filenames 
cp -r /tmp/samsung/rootfs/root/fumagician/* /tmp/samsung/
umount /tmp/samsung/rootfs/mnt 
rm -rf /tmp/samsung/rootfs
rm /tmp/samsung/file.iso
cd /tmp/samsung
./fumagician  
