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

dir="package/network/services/dnsmasq/files/dhcp.conf"
sed -i 's/Os/O2/g' include/target.mk
sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/luci/Makefile
sed -i 's/ImmortalWrt-2.4G/WYH-WIFI2.4G/g' package/mtk/applications/mtwifi-cfg/files/mtwifi.sh
sed -i 's/ImmortalWrt-5G/WYH-WIFI/g' package/mtk/applications/mtwifi-cfg/files/mtwifi.sh
sed -i 's/MT7981_AX3000_2.4G/WYH-WIFI2.4G/g' package/mtk/drivers/wifi-profile/files/mt7981/mt7981.dbdc.b0.dat
sed -i 's/MT7981_AX3000_5G/WYH-WIFI/g' package/mtk/drivers/wifi-profile/files/mt7981/mt7981.dbdc.b1.dat
sed -i 's/$(VERSION_DIST_SANITIZED)-$(IMG_PREFIX_VERNUM)$(IMG_PREFIX_VERCODE)$(IMG_PREFIX_EXTRA)$(BOARD)$(if $(SUBTARGET),-$(SUBTARGET))/$(shell date +%Y-%m-%d)/g' include/image.mk
sed -i "14a\option sequential_ip 1" >> $dir $dir
sed -i 's/3600/0/g' $dir
sed -i 's/8000/0/g' $dir
sed -i 's/100/2/g' $dir
sed -i 's/150/48/g' $dir
sed -i 's/12h/6h/g' $dir
rm -rf feeds/luci/applications/luci-app-smartdns
rm -rf feeds/packages/net/smartdns
git clone https://github.com/sirpdboy/luci-app-ddns-go.git  package/new/ddns-go
git clone https://github.com/pymumu/luci-app-smartdns.git feeds/luci/applications/luci-app-smartdns
git clone https://github.com/pymumu/openwrt-smartdns.git feeds/packages/net/smartdns
