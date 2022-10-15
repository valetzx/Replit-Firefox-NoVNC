#!/bin/bash
if [ ! -d "~/nginx" ];then
	\cp -ax .nginx ~/nginx
fi

if [ ! -d "~/v2ray" ];then
	\cp -ax .v2ray ~/v2ray
fi

chmod +x ~/v2ray/sbin/v2ray
chmod +x ~/nginx/sbin/nginx

~/v2ray/sbin/v2ray -config v2ray/etc/config.json >/dev/null 2>&1 &
~/nginx/sbin/nginx -g 'daemon off;' & 

# watch -n 0 "fluxbox"
./alist server