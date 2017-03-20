#!/bin/sh

set -o errexit
set -o nounset
set -o pipefail

set -x

mkdir -p receipt-artifacts
receipt_filename="receipt-artifacts/opensuse-cf-stack_receipt-$(cat version/number)"
echo "Rootfs SHA256SUM: $(sha256sum rootfs.tar | awk '{print $1}')" > "${receipt_filename}"
echo "" > "${receipt_filename}"
cat "stack-artifacts/opensuse-cf-stack_rpm_qa.out" >> "${receipt_filename}"
