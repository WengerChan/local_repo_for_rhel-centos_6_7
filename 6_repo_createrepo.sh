#!/bin/bash

rm -rf /repos/rhel-6-server-rpms/repodata
rm -rf /repos/rhel-6-server-optional-rpms/repodata
rm -rf /repos/rhel-6-server-extras-rpms/repodata
rm -rf /repos/rhel-6-server-supplementary-rpms/repodata
rm -rf /repos/rhel-ha-for-rhel-6-server-rpms/repodata
rm -rf /repos/rhel-rs-for-rhel-6-server-rpms/repodata
rm -rf /repos/rhel-6-server-debug-rpms/repodata
rm -rf /repos/rhel-6-server-optional-debug-rpms/repodata
rm -rf /repos/rhel-6-server-extras-debuginfo/repodata
rm -rf /repos/rhel-6-server-supplementary-debuginfo/repodata
rm -rf /repos/rhel-ha-for-rhel-6-server-debug-rpms/repodata
rm -rf /repos/rhel-rs-for-rhel-6-server-debug-rpms/repodata

createrepo /repos/rhel-6-server-rpms/                       -o /repos/rhel-6-server-rpms
createrepo /repos/rhel-6-server-optional-rpms/              -o /repos/rhel-6-server-optional-rpms
createrepo /repos/rhel-6-server-extras-rpms/                -o /repos/rhel-6-server-extras-rpms
createrepo /repos/rhel-6-server-supplementary-rpms/         -o /repos/rhel-6-server-supplementary-rpms
createrepo /repos/rhel-ha-for-rhel-6-server-rpms/           -o /repos/rhel-ha-for-rhel-6-server-rpms
createrepo /repos/rhel-rs-for-rhel-6-server-rpms/           -o /repos/rhel-rs-for-rhel-6-server-rpms
createrepo /repos/rhel-6-server-debug-rpms/                 -o /repos/rhel-6-server-debug-rpms
createrepo /repos/rhel-6-server-optional-debug-rpms/        -o /repos/rhel-6-server-optional-debug-rpms
createrepo /repos/rhel-6-server-extras-debuginfo/           -o /repos/rhel-6-server-extras-debuginfo
createrepo /repos/rhel-6-server-supplementary-debuginfo/    -o /repos/rhel-6-server-supplementary-debuginfo
createrepo /repos/rhel-ha-for-rhel-6-server-debug-rpms/     -o /repos/rhel-ha-for-rhel-6-server-debug-rpms
createrepo /repos/rhel-rs-for-rhel-6-server-debug-rpms/     -o /repos/rhel-rs-for-rhel-6-server-debug-rpms
