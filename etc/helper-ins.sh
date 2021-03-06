#!/bin/bash
TOP_DIR=$(cd $(dirname "$0") && pwd)
pushd $TOP_DIR > /dev/null

pushd "/opt/devstack/" > /dev/null
source openrc admin admin
popd > /dev/null

watch -n 15 "nova list | grep -v 'ACTIVE\|ERROR'"

popd > /dev/null
