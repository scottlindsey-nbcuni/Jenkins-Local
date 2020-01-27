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

echo $JENKINS_HOSTNAME

checkTool docker
checkTool docker-compose

echo $JENKINS_USER>docker/secrets/jenkins-user
echo $JENKINS_PASS>docker/secrets/jenkins-pass

docker-compose up --build

