#!/bin/bash

rm -rf /repos/rhel-8-for-x86_64-appstream-rpms/{.,}repodata
rm -rf /repos/rhel-8-for-x86_64-baseos-rpms/{.,}repodata
rm -rf /repos/rhel-8-for-x86_64-highavailability-rpms/{.,}repodata
rm -rf /repos/rhel-8-for-x86_64-resilientstorage-rpms/{.,}repodata
rm -rf /repos/rhel-8-for-x86_64-appstream-debug-rpms/{.,}repodata
rm -rf /repos/rhel-8-for-x86_64-baseos-debug-rpms/{.,}repodata
rm -rf /repos/epel/{.,}repodata
rm -rf /repos/epel-modular/{.,}repodata
rm -rf /repos/codeready-builder-for-rhel-8-x86_64-rpms/{.,}repodata
rm -rf /repos/ansible-2-for-rhel-8-x86_64-rpms/{.,}repodata
rm -rf /repos/ansible-2-for-rhel-8-x86_64-debug-rpms/{.,}repodata

rm -f /repos/rhel-8-for-x86_64-appstream-rpms/modules.yaml
rm -f /repos/rhel-8-for-x86_64-baseos-rpms/modules.yaml
rm -f /repos/rhel-8-for-x86_64-highavailability-rpms/modules.yaml
rm -f /repos/rhel-8-for-x86_64-resilientstorage-rpms/modules.yaml
rm -f /repos/rhel-8-for-x86_64-appstream-debug-rpms/modules.yaml
rm -f /repos/rhel-8-for-x86_64-baseos-debug-rpms/modules.yaml
rm -f /repos/epel/modules.yaml
rm -f /repos/epel-modular/modules.yaml
rm -f /repos/codeready-builder-for-rhel-8-x86_64-rpms/modules.yaml
rm -f /repos/ansible-2-for-rhel-8-x86_64-rpms/modules.yaml
rm -f /repos/ansible-2-for-rhel-8-x86_64-debug-rpms/modules.yaml

createrepo_c /repos/rhel-8-for-x86_64-appstream-rpms/             -o /repos/rhel-8-for-x86_64-appstream-rpms
createrepo_c /repos/rhel-8-for-x86_64-baseos-rpms/                -o /repos/rhel-8-for-x86_64-baseos-rpms
createrepo_c /repos/rhel-8-for-x86_64-highavailability-rpms/      -o /repos/rhel-8-for-x86_64-highavailability-rpms
createrepo_c /repos/rhel-8-for-x86_64-resilientstorage-rpms/      -o /repos/rhel-8-for-x86_64-resilientstorage-rpms
createrepo_c /repos/rhel-8-for-x86_64-appstream-debug-rpms/       -o /repos/rhel-8-for-x86_64-appstream-debug-rpms
createrepo_c /repos/rhel-8-for-x86_64-baseos-debug-rpms/          -o /repos/rhel-8-for-x86_64-baseos-debug-rpms
createrepo_c /repos/epel/                                         -o /repos/epel
createrepo_c /repos/epel-modular/                                 -o /repos/epel-modular
createrepo_c /repos/codeready-builder-for-rhel-8-x86_64-rpms/     -o /repos/codeready-builder-for-rhel-8-x86_64-rpms
createrepo_c /repos/ansible-2-for-rhel-8-x86_64-rpms/             -o /repos/ansible-2-for-rhel-8-x86_64-rpms
createrepo_c /repos/ansible-2-for-rhel-8-x86_64-debug-rpms/       -o /repos/ansible-2-for-rhel-8-x86_64-debug-rpms

repo2module  -s stable -d /repos/rhel-8-for-x86_64-appstream-rpms/         /repos/rhel-8-for-x86_64-appstream-rpms/modules.yaml
repo2module  -s stable -d /repos/rhel-8-for-x86_64-baseos-rpms/            /repos/rhel-8-for-x86_64-baseos-rpms/modules.yaml
repo2module  -s stable -d /repos/rhel-8-for-x86_64-highavailability-rpms/  /repos/rhel-8-for-x86_64-highavailability-rpms/modules.yaml
repo2module  -s stable -d /repos/rhel-8-for-x86_64-resilientstorage-rpms/  /repos/rhel-8-for-x86_64-resilientstorage-rpms/modules.yaml
repo2module  -s stable -d /repos/rhel-8-for-x86_64-appstream-debug-rpms/   /repos/rhel-8-for-x86_64-appstream-debug-rpms/modules.yaml
repo2module  -s stable -d /repos/rhel-8-for-x86_64-baseos-debug-rpms/      /repos/rhel-8-for-x86_64-baseos-debug-rpms/modules.yaml
repo2module  -s stable -d /repos/epel/                                     /repos/epel/modules.yaml
repo2module  -s stable -d /repos/epel-modular/                             /repos/epel-modular/modules.yaml
repo2module  -s stable -d /repos/codeready-builder-for-rhel-8-x86_64-rpms/ /repos/codeready-builder-for-rhel-8-x86_64-rpms/modules.yaml
repo2module  -s stable -d /repos/ansible-2-for-rhel-8-x86_64-rpms/         /repos/ansible-2-for-rhel-8-x86_64-rpms/modules.yaml
repo2module  -s stable -d /repos/ansible-2-for-rhel-8-x86_64-debug-rpms/   /repos/ansible-2-for-rhel-8-x86_64-debug-rpms/modules.yaml

modifyrepo_c --mdtype=modules /repos/rhel-8-for-x86_64-appstream-rpms/modules.yaml          /repos/rhel-8-for-x86_64-appstream-rpms/repodata
modifyrepo_c --mdtype=modules /repos/rhel-8-for-x86_64-baseos-rpms/modules.yaml             /repos/rhel-8-for-x86_64-baseos-rpms/repodata
modifyrepo_c --mdtype=modules /repos/rhel-8-for-x86_64-highavailability-rpms/modules.yaml   /repos/rhel-8-for-x86_64-highavailability-rpms/repodata
modifyrepo_c --mdtype=modules /repos/rhel-8-for-x86_64-resilientstorage-rpms/modules.yaml   /repos/rhel-8-for-x86_64-resilientstorage-rpms/repodata
modifyrepo_c --mdtype=modules /repos/rhel-8-for-x86_64-appstream-debug-rpms/modules.yaml    /repos/rhel-8-for-x86_64-appstream-debug-rpms/repodata
modifyrepo_c --mdtype=modules /repos/rhel-8-for-x86_64-baseos-debug-rpms/modules.yaml       /repos/rhel-8-for-x86_64-baseos-debug-rpms/repodata
modifyrepo_c --mdtype=modules /repos/epel/modules.yaml                                      /repos/epel/repodata
modifyrepo_c --mdtype=modules /repos/epel-modular/modules.yaml                              /repos/epel-modular/repodata
modifyrepo_c --mdtype=modules /repos/codeready-builder-for-rhel-8-x86_64-rpms/modules.yaml  /repos/codeready-builder-for-rhel-8-x86_64-rpms/repodata
modifyrepo_c --mdtype=modules /repos/ansible-2-for-rhel-8-x86_64-rpms/modules.yaml          /repos/ansible-2-for-rhel-8-x86_64-rpms/repodata
modifyrepo_c --mdtype=modules /repos/ansible-2-for-rhel-8-x86_64-debug-rpms/modules.yaml    /repos/ansible-2-for-rhel-8-x86_64-debug-rpms/repodata