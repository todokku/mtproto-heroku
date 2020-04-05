#!/bin/sh
# Clone the repo
git clone https://github.com/TelegramMessenger/MTProxy
cd MTProxy
# Build
make && cd objs/bin
# Obtain a secret
curl -s https://core.telegram.org/getProxySecret -o proxy-secret
# Obtain current telegram configuration
curl -s https://core.telegram.org/getProxyConfig -o proxy-multi.conf
# Run
./mtproto-proxy -u nobody -p 8888 -H 443 -S ${secret} --aes-pwd proxy-secret proxy-multi.conf -M 1
