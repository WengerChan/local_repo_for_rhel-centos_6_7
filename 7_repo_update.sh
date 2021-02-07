#!/bin/bash

download_path="/repos"

cat << EOF > /etc/yum.repos.d/epel.repo
[epel]
name=Extra Packages for Enterprise Linux 7 - \$basearch
baseurl=http://mirrors.aliyun.com/epel/7/\$basearch
failovermethod=priority
enabled=1
gpgcheck=0
EOF

reposync --plugins --newest-only --delete --download_path=$download_path --repoid=rhel-7-server-rpms
reposync --plugins --newest-only --delete --download_path=$download_path --repoid=rhel-7-server-optional-rpms
reposync --plugins --newest-only --delete --download_path=$download_path --repoid=rhel-7-server-extras-rpms
reposync --plugins --newest-only --delete --download_path=$download_path --repoid=rhel-7-server-supplementary-rpms
reposync --plugins --newest-only --delete --download_path=$download_path --repoid=rhel-ha-for-rhel-7-server-rpms
reposync --plugins --newest-only --delete --download_path=$download_path --repoid=rhel-rs-for-rhel-7-server-rpms
reposync --plugins --newest-only --delete --download_path=$download_path --repoid=epel
reposync --plugins --newest-only --delete --download_path=$download_path --repoid=rhel-7-server-debug-rpms
reposync --plugins --newest-only --delete --download_path=$download_path --repoid=rhel-7-server-optional-debug-rpms
reposync --plugins --newest-only --delete --download_path=$download_path --repoid=rhel-7-server-extras-debug-rpms
reposync --plugins --newest-only --delete --download_path=$download_path --repoid=rhel-7-server-supplementary-debug-rpms
reposync --plugins --newest-only --delete --download_path=$download_path --repoid=rhel-7-server-ansible-2-rpms
reposync --plugins --newest-only --delete --download_path=$download_path --repoid=rhel-7-server-ansible-2-debug-rpms
reposync --plugins --newest-only --delete --download_path=$download_path --repoid=rhel-ha-for-rhel-7-server-debug-rpms
reposync --plugins --newest-only --delete --download_path=$download_path --repoid=rhel-rs-for-rhel-7-server-debug-rpms
