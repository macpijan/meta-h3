FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

SRC_URI += " \
           file://4kfix-limit-screen-to-full-hd.patch \
           file://a10-a20-lower-dram-clk.patch \
           file://add-awsom-defconfig.patch \
           file://add-bpi-m2plus.patch \
           file://add-lime2-emmc.patch \
           file://add-nanopi-air.patch \
           file://add-nanopi-m1.patch \
           file://add-nanopi-m1plus.patch \
           file://add-nanopi-neo.patch \
           file://add-orangepi-plus2.patch \
           file://add-orangepi-zero.patch \
           file://disable-usb-keyboards.patch \
           file://enable-DT-overlays-support.patch \
           file://fix-cubieboard1-defconfig.patch \
           file://fix-h3-spi-spl-compilation.patch \
           file://h3-add-disp2-video-driver-configs.patch \
           file://h3-add-disp2-video-driver-jernej.patch \
           file://h3-adjust-dram-frequency.patch \
           file://h3-enable-power-led.patch \
           file://h3-Fix-PLL1-setup-to-never-use-dividers.patch \
           file://h3-set-safe-axi_apb-clock-dividers.patch \
           file://Merrii_Hummingbird_A20.patch \
           file://sun8i-set-machid.patch \
           file://sunxi-boot-splash.patch \
           "
