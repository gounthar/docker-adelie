#!/bin/sh

# Creates a fully-featured Adélie Linux Docker image.
# 20180916 | Depends: { curl, xz }

aver=1.0
arev=rc2
arch=aarch64
amir=https://distfiles.adelielinux.org/adelie/
#https://distfiles.adelielinux.org/adelie/

tags=mini-${arch}-${aver}-${arev}

#https://distfiles.adelielinux.org/adelie/1.0-beta4/iso/adelie-rootfs-mini-aarch64-1.0-beta4.txz
echo https://distfiles.adelielinux.org/adelie//1.0/iso/rc2/adelie-rootfs-mini-aarch64-1.0-rc2.txz
#https://distfiles.adelielinux.org/adelie//1.0-beta4/iso/adelie-rootfs-mini-aarch64-1.0-beta4.txz
echo ${amir}/${aver}/iso/${arev}/adelie-rootfs-${tags}.txz
docker import ${amir}/${aver}/iso/${arev}/adelie-rootfs-${tags}.txz gounthar/adelie:${aver}
