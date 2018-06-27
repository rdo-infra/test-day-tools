#!/bin/bash
set -ex

export ARA_DATABASE="sqlite:///$WORKSPACE/$JOB_NAME.sqlite"
git clone https://github.com/rdo-infra/ci-config
pushd ci-config
    sed -i 's/kolla_push: true/kolla_push: false/g' ci-scripts/tripleo-upstream/build-containers-images.sh
    export RELEASE="master"
    bash -xe ci-scripts/tripleo-upstream/build-containers-images.sh
popd
