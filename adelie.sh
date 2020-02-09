#!/bin/sh

# Creates a fully-featured Adélie Linux Docker image.
# 20180916 | Depends: { curl, xz }

aver=1.0-beta
arev=4
arch=aarch64
amir=https://distfiles.adelielinux.org/adelie/

tags=mini-${arch}-${aver}${arev}

#https://distfiles.adelielinux.org/adelie/1.0-beta4/iso/adelie-rootfs-mini-aarch64-1.0-beta4.txz
https://distfiles.adelielinux.org/adelie//1.0-beta4/iso/adelie-rootfs-mini-aarch64-1.0-beta4.txz
echo ${amir}/${aver}${arev}/iso/adelie-rootfs-${tags}.txz
curl -S ${amir}/${aver}${arev}/iso/adelie-rootfs-${tags}.txz \
    | docker import - zvio/adelie:${aver}
