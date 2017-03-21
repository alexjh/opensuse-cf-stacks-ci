#!/bin/bash

set -o errexit
set -o nounset
set -o pipefail

set -x

mkdir -p build-binary
pushd opensuse-cf-binary-builder
  ./bin/binary-builder --name="${NAME}" --version="${VERSION}" --sha256="${SHA256}"
  ../opensuse-cf-fs2/bin/sha1stamp ./*.tar.gz
  mv ./*.tar.gz ../build-binary/
popd
