sh fluxbox.sh & echo done

export "NIXPKGS_ALLOW_UNFREE=1"

git clone --single-branch --depth 1 https://github.com/novnc/noVNC /tmp/vnc

Xvnc -listen localhost:5900 -localhost=1 -SecurityTypes=none -from 127.0.0.1 -noreset &

$( fluxbox ; fluxbox ; fluxbox ; fluxbox ; fluxbox ; kill 1 ) &
$( sleep 1 ; firefox ) &
$( sleep 5 ; /tmp/vnc/utils/novnc_proxy --listen 127.0.0.1:6080 )

# 设置VNC登录密码，如果需要设置密码请替换上一行
# $( sleep 5 ; /tmp/vnc/utils/novnc_proxy --listen 127.0.0.1:6080 --heartbeat 30 --web-auth --auth-plugin BasicHTTPAuth --auth-source '用户名:密码' )
