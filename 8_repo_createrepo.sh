#!/bin/bash

rm -rf /repos/rhel-8-for-x86_64-appstream-rpms/repodata
rm -rf /repos/rhel-8-for-x86_64-baseos-rpms/repodata
rm -rf /repos/rhel-8-for-x86_64-highavailability-rpms/repodata
rm -rf /repos/rhel-8-for-x86_64-resilientstorage-rpms/repodata
rm -rf /repos/rhel-8-for-x86_64-appstream-debug-rpms/repodata
rm -rf /repos/rhel-8-for-x86_64-baseos-debug-rpms/repodata
rm -rf /repos/epel/repodata
rm -rf /repos/epel-modular/repodata
rm -rf /repos/codeready-builder-for-rhel-8-x86_64-rpms/repodata
rm -rf /repos/ansible-2-for-rhel-8-x86_64-rpms/repodata
rm -rf /repos/ansible-2-for-rhel-8-x86_64-debug-rpms/repodata

createrepo /repos/rhel-8-for-x86_64-appstream-rpms/             -o /repos/rhel-8-for-x86_64-appstream-rpms
createrepo /repos/rhel-8-for-x86_64-baseos-rpms/                -o /repos/rhel-8-for-x86_64-baseos-rpms
createrepo /repos/rhel-8-for-x86_64-highavailability-rpms/      -o /repos/rhel-8-for-x86_64-highavailability-rpms
createrepo /repos/rhel-8-for-x86_64-resilientstorage-rpms/      -o /repos/rhel-8-for-x86_64-resilientstorage-rpms
createrepo /repos/rhel-8-for-x86_64-appstream-debug-rpms/       -o /repos/rhel-8-for-x86_64-appstream-debug-rpms
createrepo /repos/rhel-8-for-x86_64-baseos-debug-rpms/          -o /repos/rhel-8-for-x86_64-baseos-debug-rpms
createrepo /repos/epel/                                         -o /repos/epel
createrepo /repos/epel-modular/                                 -o /repos/epel-modular
createrepo /repos/codeready-builder-for-rhel-8-x86_64-rpms/     -o /repos/codeready-builder-for-rhel-8-x86_64-rpms
createrepo /repos/ansible-2-for-rhel-8-x86_64-rpms/             -o /repos/ansible-2-for-rhel-8-x86_64-rpms
createrepo /repos/ansible-2-for-rhel-8-x86_64-debug-rpms/       -o /repos/ansible-2-for-rhel-8-x86_64-debug-rpms
