#!/bin/bash

CEPH_LUMINOUS_RELEASE_URL=http://cbs.centos.org/kojifiles/packages/centos-release-ceph-luminous/1.1/1.el7.centos/noarch/centos-release-ceph-luminous-1.1-1.el7.centos.noarch.rpm
STORAGE_COMMON_URL=http://cbs.centos.org/kojifiles/packages/centos-release-storage-common/1/2.el7.centos/noarch/centos-release-storage-common-1-2.el7.centos.noarch.rpm

OPSTOOLS_RELEASE_URL=http://cbs.centos.org/kojifiles/packages/centos-release-opstools/1/8.el7/noarch/centos-release-opstools-1-8.el7.noarch.rpm

#Add the repo
sudo yum install -y $STORAGE_COMMON_URL $CEPH_LUMINOUS_RELEASE_URL $OPSTOOLS_RELEASE_URL

sudo yum install -y ceph
