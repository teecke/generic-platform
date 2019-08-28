#!/bin/bash

# @file base/proxmox/build.sh
# @brief Buil proxmox vagrant cloud base box
# Uses https://github.com/kairops/vagrant-virtualbox-proxmox-cluster project
# Only build the vagrant box if it isn't yet built
set -euo pipefail

cd "$(dirname $0)"

# Init or update submodule
git submodule update --init vagrant-virtualbox-proxmox-cluster
cd vagrant-virtualbox-proxmox-cluster/

# Check presence of the box
baseBoxExist=1
vagrant box list|grep "^proxmox-ve-amd64 " > /dev/null || baseBoxExist=0

# Conditional build
if [ $baseBoxExist -eq 1 ]; then
    echo "The <proxmox-ve-amd64> vagrant box already exist"
else
    devcontrol box-build
fi
