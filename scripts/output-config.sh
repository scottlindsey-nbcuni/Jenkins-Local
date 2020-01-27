#!/bin/bash

set -o pipefail
set -e

__here="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
__root="$__here/../"

source $__here/common.sh


cd $__root
. ./config.sh

checkVar APP_PORT
checkVar JENKINS_USER
checkVar JENKINS_PASS
checkVar JENKINS_HOSTNAME

JENKINS_HOST=$JENKINS_USER:$JENKINS_PASS@$JENKINS_HOSTNAME:$APP_PORT

curl -sSL -X POST "http://$JENKINS_HOST/configuration-as-code/export"

