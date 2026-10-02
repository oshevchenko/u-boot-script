# u-boot-script
Create and copy the script to the USB flash stick:
```
make all
sudo cp boot.scr /media/oshevchenko/writable
sudo umount /media/oshevchenko/writable
```
Run on the box:
```
usb start
ext4load usb 0:4 0xa0000000 boot.scr
source 0xa0000000
```
