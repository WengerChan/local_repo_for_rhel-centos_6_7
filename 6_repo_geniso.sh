#!/bin/bash

image_path="/root/6Server_image"
bak_image=""

mkdir -p ${image_path}
ls -vrt ${image_path}/6Server*.iso | grep -v bak &> /dev/null
[ $? -eq 0 ] && bak_image=$(basename `ls -vrt ${image_path}/6Server* | tail -n1`)

if [ -n "${bak_image}" ]
then
    find /root/6Server_image/ -type 'f' ! -name ${bak_image}  | xargs rm -f
    mv /root/6Server_image/${bak_image} /root/6Server_image/${bak_image//.iso/}-bak`date +'%Y%m%d'`.iso
fi

genisoimage -J -R -o ${image_path}/6Server-`date '+%Y%m%d'`.iso /repos/
