#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
#sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default
git clone https://github.com/jerrykuku/luci-app-vssr.git  package/luci-app-vssr
git clone https://github.com/jerrykuku/lua-maxminddb.git package/lua-maxminddb
git clone https://github.com/project-lede/luci-app-godproxy.git package/luci-app-godproxy
#git clone https://github.com/garypang13/luci-app-bypass.git package/luci-app-bypass
#git clone https://github.com/garypang13/smartdns-le package/smartdns-le
rm -rf package/lean/luci-theme-argon
git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git package/luci-theme-argon
git clone https://github.com/jerrykuku/luci-app-argon-config.git package/luci-app-argon-config
svn co https://github.com/Lienol/openwrt-package/trunk/luci-app-filebrowser package/luci-app-filebrowser
svn co https://github.com/Lienol/openwrt-package/trunk/luci-app-fileassistant package/luci-app-fileassistant
#git clone https://github.com/garypang13/luci-app-eqos package/luci-app-eqos
git clone https://github.com/frainzy1477/luci-app-clash.git package/luci-app-clash
git clone -b master https://github.com/vernesong/OpenClash.git package/OpenClash
git clone -b 18.06 https://github.com/garypang13/luci-theme-edge.git package/luci-theme-edge
git clone https://github.com/MXJNZ6/diy-ziyong package/diy-ziyong
git clone https://github.com/sirpdboy/luci-theme-opentopd package/luci-theme-opentopd
rm -rf package/lean/luci-app-samba4
svn co https://github.com/lw9726/hiwifi1/trunk/package/lean/luci-app-samba4 package/luci-app-samba4
