#!/bin/bash
rm -rf feeds/packages/net/smartdns

git clone https://github.com/sirpdboy/luci-app-ddns-go.git  package/new/ddns-go
git clone https://github.com/pymumu/luci-app-smartdns.git feeds/luci/applications/luci-app-smartdns
git clone https://github.com/pymumu/openwrt-smartdns.git feeds/packages/net/smartdns
