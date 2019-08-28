#!/bin/bash

# @file base/proxmox/start.sh
# @brief Start proxmox based cloud with 3 nodes
# Uses https://github.com/kairops/vagrant-virtualbox-proxmox-cluster project
# The cluster won't start if the base box doesn't exist
set -euo pipefail

cd "$(dirname $0)"/vagrant-virtualbox-proxmox-cluster

# Check presence of the box
baseBoxExist=1
vagrant box list|grep "^proxmox-ve-amd64 " > /dev/null || baseBoxExist=0

# Conditional start
if [ $baseBoxExist -eq 0 ]; then
    echo "The <proxmox-ve-amd64> does ont exist, so you should build it first. Aborting"
    exit 1
fi
devcontrol cluster-build
