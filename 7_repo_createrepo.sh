#!/bin/bash

rm -rf /repos/rhel-7-server-rpms/repodata
rm -rf /repos/rhel-7-server-optional-rpms/repodata
rm -rf /repos/rhel-7-server-extras-rpms/repodata
rm -rf /repos/rhel-ha-for-rhel-7-server-rpms/repodata
rm -rf /repos/rhel-rs-for-rhel-7-server-rpms/repodata
rm -rf /repos/epel/repodata

createrepo /repos/rhel-7-server-rpms/             -o /repos/rhel-7-server-rpms
createrepo /repos/rhel-7-server-optional-rpms/    -o /repos/rhel-7-server-optional-rpms
createrepo /repos/rhel-7-server-extras-rpms/      -o /repos/rhel-7-server-extras-rpms
createrepo /repos/rhel-ha-for-rhel-7-server-rpms/ -o /repos/rhel-ha-for-rhel-7-server-rpms
createrepo /repos/rhel-rs-for-rhel-7-server-rpms/ -o /repos/rhel-rs-for-rhel-7-server-rpms
createrepo /repos/epel/                           -o /repos/epel