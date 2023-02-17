#!/bin/bash
if [ ! -d "~/nginx" ];then
	\cp -ax .nginx ~/nginx
fi

sleep 10
chmod u+x ~/nginx/sbin/nginx
~/nginx/sbin/nginx -g 'daemon off;' &  echo done nginx
# watch -n 0 "fluxbox amd64" 