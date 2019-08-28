#!/bin/bash

# Welcome message
echo "Generic Platform (c) Teecke 2019"
echo

# Check presence of vagrant
which vagrant > /dev/null 2>&1 || bash -c 'echo "Missing vagrant: aborting"; exit  1'

# Prepare initial config
if [ ! -f config.ini ]; then
    cp -pv config.ini.dist config.ini
fi

# Read platform configuration
source config.ini

# Show provider
echo "# Base provider: ${BASE}"
echo "  -------------"
echo
