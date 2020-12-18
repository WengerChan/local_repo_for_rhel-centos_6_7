#!/bin/bash

rm -rf /repos/rhel-6-server-rpms/repodata
rm -rf /repos/rhel-6-server-extras-rpms/repodata
rm -rf /repos/rhel-ha-for-rhel-6-server-rpms/repodata
rm -rf /repos/rhel-rs-for-rhel-6-server-rpms/repodata

createrepo /repos/rhel-6-server-rpms/             -o /repos/rhel-6-server-rpms
createrepo /repos/rhel-6-server-extras-rpms/      -o /repos/rhel-6-server-extras-rpms
createrepo /repos/rhel-ha-for-rhel-6-server-rpms/ -o /repos/rhel-ha-for-rhel-6-server-rpms
createrepo /repos/rhel-rs-for-rhel-6-server-rpms/ -o /repos/rhel-rs-for-rhel-6-server-rpms
