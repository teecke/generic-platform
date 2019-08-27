#!/bin/bash

# Prepare initial config
if [ ! -f config.ini ]; then
    cp -pv config.ini.dist config.ini
fi

# Read platform configuration
source config.ini

# Show message

echo "Generic Platform (c) Teecke"
echo 
echo "# Base provider: ${BASE}"
echo "  -------------"
echo
