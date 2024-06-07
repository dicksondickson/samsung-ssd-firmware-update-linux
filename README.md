# samsung-ssd-firmware-update-linux
Update Samsung SSD firmware in Linux

Thanks to https://www.reddit.com/r/zfs/comments/fuqgoi/script_to_update_samsung_ssd_firmware/

Get the firmware iso link for your SSD from Samsung at https://semiconductor.samsung.com/us/consumer-storage/support/tools/

To verify it worked, just run it again and it should tell you it's already updated or check the firmware version with a ```smartctl -a /dev/disk/by-id/yourdisk | grep Firmware``` 

POWER CYCLE YOUR SYSTEM AFTER THE UPDATE!

Tested in PopOS 20.04
