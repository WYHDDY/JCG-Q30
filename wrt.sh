#!/bin/bash
curl -sSL https://raw.githubusercontent.com/chenmozhijin/turboacc/luci/add_turboacc.sh -o add_turboacc.sh && bash add_turboacc.sh

dir="package/network/services/dnsmasq/files/dhcp.conf"
dir1="package/base-files/files/bin/config_generate"

git clone https://github.com/sirpdboy/luci-app-ddns-go.git  package/new/ddns-go
git clone https://github.com/immortalwrt/homeproxy.git package/new/homeproxy
git clone https://github.com/pexcn/openwrt-chinadns-ng.git package/new/chinadns-ng

sed -i 's/192.168.15.1/10.0.0.1/g' $dir1

sed -i 's/3600/0/g'  $dir
sed -i 's/8000/0/g'  $dir
sed -i 's/100/2/g'   $dir
sed -i 's/150/88/g'  $dir
sed -i 's/12h/6h/g'  $dir
sed -i "14a\option sequential_ip 1" $dir
