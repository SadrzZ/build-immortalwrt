# Modify default IP
#sed -i 's/192.168.1.1/192.168.2.1/g' package/base-files/files/bin/config_generate
#sed -i 's/192.168.6.1/192.168.2.1/g' package/base-files/files/bin/config_generate

# update feed
rm -rf feeds/packages/net/xray-core && svn co https://github.com/immortalwrt/packages/branches/openwrt-21.02/net/xray-core feeds/packages/net/xray-core
rm -rf feeds/luci/applications/luci-app-openclash && svn co https://github.com/immortalwrt/luci/branches/openwrt-21.02/applications/luci-app-openclash feeds/luci/applications/luci-app-openclash
rm -rf feeds/packages/lang/golang
git clone https://github.com/sbwml/packages_lang_golang -b 20.x feeds/packages/lang/golang
