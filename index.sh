# Install vscode
export "NIXPKGS_ALLOW_UNFREE=1"
# nix-env -iA nixpkgs.vscode
# nix-env -iA nixpkgs.google-chrome
# nix-env -iA nixpkgs.google-chrome-beta
# nix-env -iA nixpkgs.google-chrome-dev
# nix-env -iA nixpkgs.discord
git clone --single-branch --depth 1 https://github.com/novnc/noVNC /tmp/vnc
# curl "https://icon-theme.freedesktop.org/releases/hicolor-icon-theme-0.17.tar.xz" output -|tar -xf - -C /tmp/icons
# chmod a+x /tmp/icons/install-sh
# oldpwd=`pwd`
# cd /tmp/icons
# make install /tmp
# linux 4 curl --location "http://k.copy.sh/linux4.iso" --output /tmp/cdrom
# DSL 3
# curl --location "http://computernewb.com/~dartz/isos/dsl-3.4.12.iso" --output /tmp/cdrom
# curl --location "http://computernewb.com/~lily/ISOs/crustywindows/Windows%20XP/MiniXP.iso" --output /tmp/cdrom
# VirtualXP curl --location "https://github.com/lrusso/VirtualXP/raw/main/VirtualXP.iso" --output /tmp/cdrom
# Ubuntu 8
# curl --location "https://old-releases.ubuntu.com/releases/8.04.0/ubuntu-8.04.4-desktop-i386.iso" --output /tmp/cdrom
# Slax
# curl --location "https://ftp.sh.cvut.cz/slax/Slax-11.x/slax-ipxe.iso" --output /tmp/cdrom
# NodeOS
# curl --location "http://k.copy.sh/nodeos-kernel.bin" --output /tmp/kernel
# qemu-img create /tmp/hda 8192M
# qemu-img create /tmp/hdb 1024M
# qemu-img create /tmp/hdc 1024M
# qemu-img create /tmp/hdd 1024M
# qemu-system-i386 -m 128 -vnc :0 -cdrom /tmp/cdrom -nographic -fsdev local,id=host9p,path=/,security_model=none -device virtio-9p-pci,fsdev=host9p,mount_tag=host9p -no-acpi -hda /tmp/hda & # -hdb /tmp/hdb & # -hdc /tmp/hdc -hdd /tmp/hdd &# -action panic=pause& #-action watchdog=reset -action shutdown=pause -daemonize -watchdog  ib700&
Xvnc -listen localhost:5900 -localhost=1 -SecurityTypes=none -from 127.0.0.1 -noreset &
$( fluxbox ; fluxbox ; fluxbox ; fluxbox ; fluxbox ; kill 1 ) &
$( sleep 1 ; firefox ) &
# xmessage -center "Hi! This is an open NoVNC server by 9pfs. The following apps are installed:\nDiscord\nThunar\nChromium\nxterm\nNeofetch\nVisual Studio Code\nFirefox"

$( sleep 5 ; /tmp/vnc/utils/novnc_proxy )
# watch -n 0 "xmessage -center 'fuck!!!'& "
# watch -n 10 "bash fluxbox.sh"