#!/bin/bash

download_path="/repos"

cat << EOF > /etc/yum.repos.d/epel.repo
[epel]
name=Extra Packages for Enterprise Linux \$releasever - \$basearch
baseurl=https://mirrors.aliyun.com/epel/\$releasever/Everything/\$basearch
enabled=1
gpgcheck=0

[epel-modular]
name=Extra Packages for Enterprise Linux Modular \$releasever - \$basearch
baseurl=https://mirrors.aliyun.com/epel/\$releasever/Modular/\$basearch
enabled=1
gpgcheck=0
EOF

# list="
# rhel-8-for-x86_64-appstream-rpms
# rhel-8-for-x86_64-baseos-rpms
# rhel-8-for-x86_64-highavailability-rpms
# rhel-8-for-x86_64-resilientstorage-rpms
# rhel-8-for-x86_64-appstream-debug-rpms
# rhel-8-for-x86_64-baseos-debug-rpms
# epel
# epel-modular
# codeready-builder-for-rhel-8-x86_64-rpms
# ansible-2-for-rhel-8-x86_64-rpms
# ansible-2-for-rhel-8-x86_64-debug-rpms
# "
# 
# for i in ${list[*]};
# do
# {
#   dnf reposync --newest-only --delete --download-path=$download_path --download-metadata --repoid=${i}
# } &
# done
# 
# wait
# echo '============finished==============='

dnf reposync --newest-only --delete --download-path=$download_path --download-metadata --repoid=rhel-8-for-x86_64-appstream-rpms
dnf reposync --newest-only --delete --download-path=$download_path --download-metadata --repoid=rhel-8-for-x86_64-baseos-rpms
dnf reposync --newest-only --delete --download-path=$download_path --download-metadata --repoid=rhel-8-for-x86_64-highavailability-rpms
dnf reposync --newest-only --delete --download-path=$download_path --download-metadata --repoid=rhel-8-for-x86_64-resilientstorage-rpms
dnf reposync --newest-only --delete --download-path=$download_path --download-metadata --repoid=rhel-8-for-x86_64-appstream-debug-rpms
dnf reposync --newest-only --delete --download-path=$download_path --download-metadata --repoid=rhel-8-for-x86_64-baseos-debug-rpms
dnf reposync --newest-only --delete --download-path=$download_path --download-metadata --repoid=epel
dnf reposync --newest-only --delete --download-path=$download_path --download-metadata --repoid=epel-modular
dnf reposync --newest-only --delete --download-path=$download_path --download-metadata --repoid=codeready-builder-for-rhel-8-x86_64-rpms
dnf reposync --newest-only --delete --download-path=$download_path --download-metadata --repoid=ansible-2-for-rhel-8-x86_64-rpms
dnf reposync --newest-only --delete --download-path=$download_path --download-metadata --repoid=ansible-2-for-rhel-8-x86_64-debug-rpms
