#!/bin/sh
# 添加 passwall 源
echo 'src-git passwall_packages https://github.com/xiaorouji/openwrt-passwall-packages.git;main' >> feeds.conf.default
echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall.git;main' >> feeds.conf.default

# 添加 openclash 源
echo 'src-git openclash https://github.com/vernesong/OpenClash.git;master' >> feeds.conf.default

# 添加 argon 主题源
echo 'src-git argon https://github.com/jerrykuku/luci-theme-argon.git;master' >> feeds.conf.default

# 添加 iStore 源
echo 'src-git istore https://github.com/linkease/istore.git;main' >> feeds.conf.default

# 添加 lucky 源
echo 'src-git lucky https://github.com/sirpdboy/luci-app-lucky.git' >> feeds.conf.default

# 添加应用过滤源
echo 'src-git appfilter https://github.com/destan19/OpenAppFilter.git' >> feeds.conf.default
