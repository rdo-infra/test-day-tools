#!/bin/bash
set -ex

export ARA_DATABASE="sqlite:///$WORKSPACE/$JOB_NAME.sqlite"
git clone https://github.com/rdo-infra/weirdo
pushd weirdo
    tox -e ansible-playbook -- -i $WORKSPACE/hosts playbooks/packstack-scenario001.yml \
      -e ci_environment=ci-centos
popd
