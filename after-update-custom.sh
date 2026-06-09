#!/bin/sh

# 修改默认LAN地址
sed -i 's/192.168.1.1/192.168.6.1/g' package/base-files/files/bin/config_generate

# DHCP范围
sed -i "s/option start.*/option start \'2\'/g" package/network/services/dnsmasq/files/dhcp.conf
sed -i "s/option limit.*/option limit \'55\'/g" package/network/services/dnsmasq/files/dhcp.conf

# 设置argon为默认主题
sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/luci/Makefile 2>/dev/null || true

# 创建WiFi默认配置脚本
mkdir -p files/etc/uci-defaults
cat << 'WIFIEOF' > files/etc/uci-defaults/99-wireless-setup
#!/bin/sh
uci set wireless.radio0.disabled='0'
uci set wireless.radio0.htmode='HT40'
uci set wireless.default_radio0.ssid='OpenWrt_2.4G'
uci set wireless.default_radio0.encryption='psk2'
uci set wireless.default_radio0.key='password'

uci set wireless.radio1.disabled='0'
uci set wireless.radio1.htmode='HE160'
uci set wireless.default_radio1.ssid='OpenWrt_5G'
uci set wireless.default_radio1.encryption='psk2'
uci set wireless.default_radio1.key='password'

uci commit wireless
exit 0
WIFIEOF
chmod +x files/etc/uci-defaults/99-wireless-setup
