#!/bin/bash

download_path="/repos"

reposync --plugins --newest-only --delete --download_path=$download_path --repoid=rhel-6-server-rpms
reposync --plugins --newest-only --delete --download_path=$download_path --repoid=rhel-6-server-extras-rpms
reposync --plugins --newest-only --delete --download_path=$download_path --repoid=rhel-ha-for-rhel-6-server-rpms
reposync --plugins --newest-only --delete --download_path=$download_path --repoid=rhel-rs-for-rhel-6-server-rpms
