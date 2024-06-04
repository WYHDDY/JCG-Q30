#!/bin/sh

curl -sSL https://raw.githubusercontent.com/chenmozhijin/turboacc/luci/add_turboacc.sh -o add_turboacc.sh && bash add_turboacc.sh
dir="package/network/services/dnsmasq/files/dhcp.conf"
dir1="package/base-files/files/bin/config_generate"

sed -i 's/Os/O2/g' include/target.mk
sed -i 's/192.168.1.1/10.0.0.1/g' $dir1
sed -i 's/ImmortalWrt/OpenWrt/g' $dir1
sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/luci-ssl-nginx/Makefile

sed -i 's/3600/0/g'  $dir
sed -i 's/8000/0/g'  $dir
sed -i 's/100/2/g'   $dir
sed -i 's/150/88/g'  $dir
sed -i 's/12h/6h/g'  $dir
sed -i "14a\option sequential_ip 1" $dir

rm -rf feeds/luci/applications/luci-app-smartdns
rm -rf feeds/luci/applications/luci-app-ddns-go
rm -rf feeds/packages/net/smartdns

git clone https://github.com/sirpdboy/luci-app-ddns-go.git  package/new/ddns-go
git clone https://github.com/jerrykuku/luci-theme-argon.git package/new/luci-theme-argon
git clone https://github.com/pymumu/luci-app-smartdns.git feeds/luci/applications/luci-app-smartdns
git clone https://github.com/pymumu/openwrt-smartdns.git feeds/packages/net/smartdns
