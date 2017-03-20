#!/bin/sh

set -o errexit
set -o nounset
set -o pipefail

mkdir -p stack-artifacts
rpm -qa | sort > stack-artifacts/opensuse-cf-stack_rpm_qa.out
