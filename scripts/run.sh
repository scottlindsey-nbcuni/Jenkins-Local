#!/bin/bash

set -o pipefail
set -e

__here="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
__root="$__here/../"

cd $__root
. ./config.sh

# FIXME validation: user, pass, tools

echo $JENKINS_USER>docker/secrets/jenkins-user
echo $JENKINS_PASS>docker/secrets/jenkins-pass

docker-compose up --build

