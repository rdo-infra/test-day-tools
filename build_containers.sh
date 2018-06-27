#!/bin/bash

# Install dependencies
sudo yum -y install git ansible

git clone https://github.com/rdo-infra/ci-config

pushd ci-config

    # Turn off container publishing for this experiment
    sed -i 's/kolla_push: true/kolla_push: false/g' ci-scripts/tripleo-upstream/build-containers-images.sh

    # Run the container build
    export RELEASE="master"
    bash -xe ci-scripts/tripleo-upstream/build-containers-images.sh
popd
