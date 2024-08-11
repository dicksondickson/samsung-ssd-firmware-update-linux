# samsung-ssd-firmware-update-linux   

Update Samsung SSD firmware in Linux   

Thanks to https://www.reddit.com/r/zfs/comments/fuqgoi/script_to_update_samsung_ssd_firmware/   

Get the firmware iso link for your SSD from Samsung at   
https://semiconductor.samsung.com/us/consumer-storage/support/tools/  

Then modify the script with the link to your respective firmware ISO file.  

Run the script:  

```chmod +x samsung_firmware_update.sh```   

```sudo ./samsung_firmware_update.sh```   

POWER CYCLE YOUR SYSTEM AFTER THE UPDATE!   

To verify it worked, just run it again and it should tell you it's already updated or check the firmware version with:   

```smartctl -a /dev/disk/by-id/yourdisk | grep Firmware```    

Tested in PopOS 22.04   
