#!/bin/bash

CEPH_LUMINOUS_RELEASE_URL=http://cbs.centos.org/kojifiles/packages/centos-release-ceph-luminous/1.1/1.el7.centos/noarch/centos-release-ceph-luminous-1.1-1.el7.centos.noarch.rpm
STORAGE_COMMON_URL=http://cbs.centos.org/kojifiles/packages/centos-release-storage-common/1/2.el7.centos/noarch/centos-release-storage-common-1-2.el7.centos.noarch.rpm
#Add the repo
sudo yum install $CEPH_LUMINOUS_RELEASE_URL $STORAGE_COMMON_URL




