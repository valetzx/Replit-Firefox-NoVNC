
export "NIXPKGS_ALLOW_UNFREE=1"

git clone --single-branch --depth 1 https://github.com/novnc/noVNC /tmp/vnc

bash fluxbox.sh & echo done

Xvnc -listen localhost:5900 -localhost=1 -SecurityTypes=none -from 127.0.0.1 -noreset &

$( fluxbox ; fluxbox ; fluxbox ; fluxbox ; fluxbox ; kill 1 ) &
$( sleep 1 ; firefox ) &
$( sleep 5 ; /tmp/vnc/utils/novnc_proxy )