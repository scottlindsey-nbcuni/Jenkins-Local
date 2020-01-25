#!/bin/bash

set -o pipefail
set -e

__here="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
__root="$__here/../"

docker rm jenkins-local || true
docker rmi jenkins-local-image || true
rm -rf $__root/data && mkdir $__root/data
