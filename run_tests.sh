#!/bin/bash
WORKSPACE="${WORKSPACE:-/tmp}"
VENV="${WORKSPACE}/venv"

[[ ! -d "${VENV}" ]] && virtualenv "${VENV}"
source "${VENV}/bin/activate"
pip install ansible

# cico-get-node requests a duffy node and generates an ansible-compatible
# inventory at $WORKSPACE/hosts
ansible-playbook -i "${WORKSPACE}/hosts" "${WORKSPACE}/test-day-tools/playbook.yml"
