#!/bin/bash
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#
# Copyright (c) 2019-2024 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#

sed -i 's/Os/O2/g' include/target.mk
sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/luci/Makefile
sed -i 's/ImmortalWrt-2.4G/WYH-WIFI2.4G/g' package/mtk/applications/mtwifi-cfg/files/mtwifi.sh
sed -i 's/ImmortalWrt-5G/WYH-WIFI/g' package/mtk/applications/mtwifi-cfg/files/mtwifi.sh
sed -i 's/MT7981_AX3000_2.4G/WYH-WIFI2.4G/g' package/mtk/drivers/wifi-profile/files/mt7981/mt7981.dbdc.b0.dat
sed -i 's/MT7981_AX3000_5G/WYH-WIFI/g' package/mtk/drivers/wifi-profile/files/mt7981/mt7981.dbdc.b1.dat
sed -i 's/$(VERSION_DIST_SANITIZED)-$(IMG_PREFIX_VERNUM)$(IMG_PREFIX_VERCODE)$(IMG_PREFIX_EXTRA)$(BOARD)$(if $(SUBTARGET),-$(SUBTARGET))/$(shell date +%Y-%m-%d)/g' include/image.mk
# sed -i 's/$(VERSION_DIST_SANITIZED)-$(IMG_PREFIX_VERNUM)$(IMG_PREFIX_VERCODE)$(IMG_PREFIX_EXTRA)$(BOARD)$(if $(SUBTARGET),-$(SUBTARGET))/$(shell date +%Y-%m-%d)-$(BOARD)$(if $(SUBTARGET),-$(SUBTARGET))/g' include/image.mk
