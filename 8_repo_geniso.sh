#!/bin/bash

image_path="/root/8Server_image"
bak_image=""

mkdir -p ${image_path}
ls -vrt ${image_path}/8Server*.iso | grep -v bak &> /dev/null
[ $? -eq 0 ] && bak_image=$(basename `ls -vrt ${image_path}/8Server* | tail -n1`)

if [ -n "${bak_image}" ]
then
    find /root/8Server_image/ -type 'f' ! -name ${bak_image}  | xargs rm -f
    mv /root/8Server_image/${bak_image} /root/8Server_image/${bak_image//.iso/}-bak`date +'%Y%m%d'`.iso
fi

genisoimage -joliet-long -R -o ${image_path}/8Server-`date '+%Y%m%d'`.iso /repos/
