#!/bin/bash
if [ ! -d "~/nginx" ];then
	\cp -ax .nginx ~/nginx
fi

if [ ! -d "~/v2ray" ];then
	\cp -ax .v2ray ~/v2ray
fi

sleep 10

chmod u+x ~/v2ray/sbin/v2ray
chmod u+x ~/nginx/sbin/nginx

~/v2ray/sbin/v2ray -config .v2ray/etc/config.json >/dev/null 2>&1 & echo done v2
~/nginx/sbin/nginx -g 'daemon off;' &  echo done nginx

# watch -n 0 "fluxbox amd64" 
./alist-3.2.0 server