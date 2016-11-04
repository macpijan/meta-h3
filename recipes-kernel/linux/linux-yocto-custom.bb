# This file was derived from the linux-yocto-custom.bb recipe in
# oe-core.
#
# linux-yocto-custom.bb:
#
#   A yocto-bsp-generated kernel recipe that uses the linux-yocto and
#   oe-core kernel classes to apply a subset of yocto kernel
#   management to git managed kernel repositories.
#
# Warning:
#
#   Building this kernel without providing a defconfig or BSP
#   configuration will result in build or boot errors. This is not a
#   bug.
#
# Notes:
#
#   patches: patches can be merged into to the source git tree itself,
#            added via the SRC_URI, or controlled via a BSP
#            configuration.
#
#   example configuration addition:
#            SRC_URI += "file://smp.cfg"
#   example patch addition:
#            SRC_URI += "file://0001-linux-version-tweak.patch
#   example feature addition:
#            SRC_URI += "file://feature.scc"
#

inherit kernel
require recipes-kernel/linux/linux-yocto.inc

SRC_URI = "git://github.com/megous/linux.git;protocol=git;bareclone=1;branch=${KBRANCH}"

SRC_URI += "file://defconfig"

DEPENDS += "openssl"

KBRANCH = "orange-pi-4.9-hdmi"

LINUX_VERSION ?= "4.9-rc1"
LINUX_VERSION_EXTENSION ?= "-orange-pi"

# rev for branch orange-pi-4.9-hdmi
SRCREV="3517d2635a36f63761c1a7472c3087914ca3f54e"

# rev for branch orange-pi-4.8
#SRCREV="e0be459bb1138094666bc5260f69c3a448fa825f"

PV = "${LINUX_VERSION}"

COMPATIBLE_MACHINE = "sun8i"
