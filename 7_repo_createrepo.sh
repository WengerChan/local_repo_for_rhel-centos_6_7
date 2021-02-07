#!/bin/bash

rm -rf /repos/rhel-7-server-rpms/repodata
rm -rf /repos/rhel-7-server-optional-rpms/repodata
rm -rf /repos/rhel-7-server-extras-rpms/repodata
rm -rf /repos/rhel-7-server-supplementary-rpms/repodata
rm -rf /repos/rhel-ha-for-rhel-7-server-rpms/repodata
rm -rf /repos/rhel-rs-for-rhel-7-server-rpms/repodata
rm -rf /repos/epel/repodata
rm -rf /repos/rhel-7-server-ansible-2-rpms/repodata
rm -rf /repos/rhel-7-server-ansible-2-debug-rpms/repodata
rm -rf /repos/rhel-7-server-debug-rpms/repodata
rm -rf /repos/rhel-7-server-optional-debug-rpms/repodata
rm -rf /repos/rhel-7-server-extras-debug-rpms/repodata
rm -rf /repos/rhel-7-server-supplementary-debug-rpms/repodata
rm -rf /repos/rhel-ha-for-rhel-7-server-debug-rpms/repodata
rm -rf /repos/rhel-rs-for-rhel-7-server-debug-rpms/repodata

createrepo /repos/rhel-7-server-rpms/              -o /repos/rhel-7-server-rpms
createrepo /repos/rhel-7-server-optional-rpms/     -o /repos/rhel-7-server-optional-rpms
createrepo /repos/rhel-7-server-extras-rpms/       -o /repos/rhel-7-server-extras-rpms
createrepo /repos/rhel-7-server-supplementary-rpms -o /repos/rhel-7-server-supplementary-rpms
createrepo /repos/rhel-ha-for-rhel-7-server-rpms/  -o /repos/rhel-ha-for-rhel-7-server-rpms
createrepo /repos/rhel-rs-for-rhel-7-server-rpms/  -o /repos/rhel-rs-for-rhel-7-server-rpms
createrepo /repos/epel/                            -o /repos/epel
createrepo /repos/rhel-7-server-ansible-2-rpms           -o /repos/rhel-7-server-ansible-2-rpms
createrepo /repos/rhel-7-server-ansible-2-debug-rpms     -o /repos/rhel-7-server-ansible-2-debug-rpms
createrepo /repos/rhel-7-server-debug-rpms               -o /repos/rhel-7-server-debug-rpms
createrepo /repos/rhel-7-server-optional-debug-rpms      -o /repos/rhel-7-server-optional-debug-rpms
createrepo /repos/rhel-7-server-extras-debug-rpms        -o /repos/rhel-7-server-extras-debug-rpms
createrepo /repos/rhel-7-server-supplementary-debug-rpms -o /repos/rhel-7-server-supplementary-debug-rpms
createrepo /repos/rhel-ha-for-rhel-7-server-debug-rpms   -o /repos/rhel-ha-for-rhel-7-server-debug-rpms
createrepo /repos/rhel-rs-for-rhel-7-server-debug-rpms   -o /repos/rhel-rs-for-rhel-7-server-debug-rpms
