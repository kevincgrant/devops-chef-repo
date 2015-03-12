#!/bin/sh
#================================================================================
#
# Author:        Kevin Grant
# Date:          03-06-2015
#
# Description:   This script is used to install devops-chef-repo
#
#================================================================================

## Install chef scripts

echo "Installing chef scripts..."
sleep 3

CHEF_BASE=/root/chef-repo
CHEF_CACHE=/root/chef-cache

if [ -d ${CHEF_BASE} ]; then
   rm -rf ${CHEF_BASE}
fi

if [ -d ${CHEF_CACHE} ]; then
   rm -rf ${CHEF_CACHE}
fi

cp -r chef-repo ${CHEF_BASE}

echo "Installed chef scripts to ${CHEF_BASE}"
