#!/bin/bash

# @file base/proxmox/build.sh
# @brief Base start
# Uses https://github.com/kairops/vagrant-virtualbox-proxmox-cluster project

# init
source config.ini

function startBaseCloud() {
    case $1 in
        proxmox)
            git submodule update --init base/proxmox/vagrant-virtualbox-proxmox-cluster/
            pushd base/proxmox/vagrant-virtualbox-proxmox-cluster/
            #devcontrol box-build
            devcontrol cluster-build
            ;;
        *)
            echo "Unknown basre provider: '${1}'. Aborting"
            exit 1
    esac
}

# @description Base start
# Defaults to "proxmox" provider
#
# @example
#   base-start
#
# @arg $1 Task: "brief", "help" or "exec"
#
# @exitcode The exit code of the statements of the action
#
# @stdout "Not implemented" message if the requested task is not implemented
#
function base-start() {

    # Init
    local briefMessage="Base start"
    local helpMessage="""Start the base cloud of the provider configured in the 'config.ini' file

The default provider is: proxmox"""

    # Task choosing
    case ${1} in
        brief)
            showBriefMessage ${FUNCNAME[0]} "$briefMessage"
            ;;
        help)
            showHelpMessage ${FUNCNAME[0]} "$helpMessage"
            ;;
        exec)
            shift
            if [ "${1-}" == "" ]; then
                PROVIDER=${BASE}
            else
                PROVIDER=${1}
            fi
            startBaseCloud ${PROVIDER}
            ;;
        *)
            showNotImplemtedMessage $1 ${FUNCNAME[0]}
            return 1
    esac
}

# Main
base-start "$@"