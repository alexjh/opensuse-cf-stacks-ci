#!/bin/sh

set -o errexit
set -o nounset
set -o pipefail

set -x

mkdir -p stack-artifacts
receipt_filename="stack-artifacts/opensuse-cf-stack_receipt-$(cat ../version/number)"
echo "Rootfs SHA256SUM: $(sha256sum rootfs.tar | awk '{print $1}')" > "stack-artifacts/${receipt_filename}"
echo "" > "stack-artifacts/${receipt_filename}"
cat "stack-artifacts/opensuse-cf-stack_rpm_qa.out" >> "stack-artifacts/${receipt_filename}"
