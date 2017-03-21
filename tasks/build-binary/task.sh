#!/bin/bash

set -o errexit
set -o nounset
set -o pipefail

set -x

mkdir -p build-binary
pushd build-binary
  ../opensuse-cf-binary-builder/bin/binary-builder --name="${NAME}" --version="${VERSION}" --sha256="${SHA256}"
  ../opensuse-cf-fs2/bin/sha1stamp ./*.tar.gz
popd
