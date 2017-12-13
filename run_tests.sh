#!/bin/bash

yum install -y git gcc python-devel python-setuptools libffi-devel openssl-devel redhat-rpm-config libselinux-python
easy_install pip
pip install tox
git clone https://github.com/rdo-infra/weirdo
pushd weirdo
export ARA_DATABASE="sqlite:///$WORKSPACE/$JOB_NAME.sqlite"
tox -e ansible-playbook -- -i $WORKSPACE/hosts playbooks/packstack-scenario001.yml \
  -e ci_environment=ci-centos
popd
