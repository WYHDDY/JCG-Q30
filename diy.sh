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

# rm -rf feeds/packages/lang/golang
# git clone https://github.com/sbwml/packages_lang_golang -b 20.x feeds/packages/lang/golang
# rm -rf feeds/packages/net/v2ray-geodata
# git clone https://github.com/wyhdag/dns -b v5 package/emortal/mosdns
# git clone https://github.com/sbwml/v2ray-geodata package/v2ray-geodata
# git clone https://github.com/derisamedia/luci-theme-alpha-alk-net.git package/emortal/luci-theme-alpha-alk
sed -i 's/Os/O2/g' include/target.mk
sed -i 's/192.168.2.1/10.0.0.1/g' package/base-files/files/bin/config_generate
sed -i 's/ImmortalWrt-2.4G/WYH-WIFI2.4G/g' package/mtk/applications/mtwifi-cfg/files/mtwifi.sh
sed -i 's/ImmortalWrt-5G/WYH-WIFI/g' package/mtk/applications/mtwifi-cfg/files/mtwifi.sh
sed -i 's/MT7981_AX3000_2.4G/WYH-WIFI2.4G/g' package/mtk/drivers/wifi-profile/files/mt7981/mt7981.dbdc.b0.dat
sed -i 's/MT7981_AX3000_5G/WYH-WIFI/g' package/mtk/drivers/wifi-profile/files/mt7981/mt7981.dbdc.b1.dat
# sed -i 's/luci-theme-bootstrap/luci-theme-alphaproto/g' feeds/luci/collections/luci/Makefile
# sed -i "27a\echo \"DISTRIB_DESCRIPTION=\'$(TZ=UTC-8 date "+%Y-%m-%d") By:ImmortalWRT\'\" >> /etc/openwrt_release" package/emortal/default-settings/files/99-default-settings
# sed -i 's/$(VERSION_DIST_SANITIZED)-$(IMG_PREFIX_VERNUM)$(IMG_PREFIX_VERCODE)$(IMG_PREFIX_EXTRA)$(BOARD)$(if $(SUBTARGET),-$(SUBTARGET))/$(shell date +%y-%m-%d)-$(BOARD)$(if $(SUBTARGET),-$(SUBTARGET))/g' include/image.mk
