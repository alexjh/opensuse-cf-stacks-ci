#!/bin/bash

set -o errexit
set -o nounset
set -o pipefail

set -x

mkdir -p versioned-rootfs
rootfs_filename="versioned-rootfs/opensuse-cf-stack-$(cat version/number).tar"
cp opensuse-cf-stacks-latest-image/rootfs.tar "${rootfs_filename}"
gzip "${rootfs_filename}"
