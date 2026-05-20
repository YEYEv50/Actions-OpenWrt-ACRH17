#!/bin/bash
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#
# Copyright (c) 2019-2024 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#

# Modify default IP
sed -i 's/192.168.1.1/192.168.10.1/g' package/base-files/files/bin/config_generate

# Modify default theme
#sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/luci/Makefile

# Modify hostname
#sed -i 's/OpenWrt/P3TERX-Router/g' package/base-files/files/bin/config_generate
#rm -rf feeds/luci/themes/luci-theme-argon
#rm -rf feeds/luci/themes/luci-theme-argon-mod
#rm -rf feeds/luci/applications/luci-app-argon-config
#rm -rf feeds/luci/applications/luci-app-wol
rm -rf feeds/luci/applications/luci-app-passwall
#rm -rf feeds/packages/lang/golang

#git clone https://github.com/0x676e67/luci-theme-design.git  package/luci-theme-design
#git clone https://github.com/0x676e67/luci-app-design-config.git package/luci-app-design-config
git clone https://github.com/eamonxg/luci-theme-aurora package/luci-theme-aurora
git clone https://github.com/eamonxg/luci-app-aurora-config package/luci-app-aurora-config
#git clone https://github.com/jerrykuku/luci-theme-argon.git package/luci-theme-argon
#git clone https://github.com/jerrykuku/luci-app-argon-config.git package/luci-app-argon-config
#git clone https://github.com/sbwml/packages_lang_golang -b 26.x feeds/packages/lang/golang
git clone https://github.com/chenmozhijin/luci-app-socat package/luci-app-socat
git clone https://github.com/bfmen/luci-app-wolplus package/luci-app-wolplus
git clone https://github.com/EasyTier/luci-app-easytier.git package/luci-app-easytier
