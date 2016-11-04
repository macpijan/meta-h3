setenv bootargs earlyprintk=ttyS0,115200 loglevel=8 root=/dev/mmcblk0p2 rootwait rootfstype=ext4 video=HDMI-A-1:1920x1080-32@60 console=tty1 console=ttyS0,115200
load mmc 0:1 ${fdt_addr_r} ${fdtfile}
load mmc 0:1 ${kernel_addr_r} uImage
bootm ${kernel_addr_r} - ${fdt_addr_r}
