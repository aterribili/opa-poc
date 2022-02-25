#!/usr/bin/env bash
# vim: filetype=sh

set -euo pipefail -o errtrace

opa build bundle
tar tzf bundle.tar.gz
opa run --server --bundle bundle.tar.gz
