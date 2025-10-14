#!/usr/bin/bash

set -euo pipefail

# Register vcpkg version
vcpkg x-add-version sparkplug \
  --x-builtin-ports-root=/sparkplug-vcpkg/ports \
  --x-builtin-registry-versions-dir=/sparkplug-vcpkg/versions