#!/bin/sh
# 添加 passwall 源（修复版）
echo 'src-git passwall_packages https://github.com/xiaorouji/openwrt-passwall-packages' >> feeds.conf.default
echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >> feeds.conf.default

# 添加 openclash 源
echo 'src-git openclash https://github.com/vernesong/OpenClash' >> feeds.conf.default

# 添加 argon 主题源
echo 'src-git argon https://github.com/jerrykuku/luci-theme-argon' >> feeds.conf.default

# 添加 iStore 源
echo 'src-git istore https://github.com/linkease/istore' >> feeds.conf.default

# 添加 lucky 源
echo 'src-git lucky https://github.com/sirpdboy/luci-app-lucky' >> feeds.conf.default

# 添加应用过滤源
echo 'src-git appfilter https://github.com/destan19/OpenAppFilter' >> feeds.conf.default
