#!/usr/bin/bash

set -euo pipefail

# Register vcpkg version
vcpkg x-add-version sparkplug --overwrite-version

# Copy back resulting sparkplug json
cp /opt/vcpkg/versions/s-/sparkplug.json ./versions/s-/sparkplug.json

# Copy back sparkplug element of baseline in custom json
jq '{
  "default": {
    "sparkplug": .default.sparkplug
  }
}' /opt/vcpkg/versions/baseline.json > ./versions/baseline.json