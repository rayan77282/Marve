#!/bin/sh
# Lightweight launcher for AndroidIDE environments that provide Gradle globally.
set -eu
if command -v gradle >/dev/null 2>&1; then
  exec gradle "$@"
fi
echo "Gradle executable not found. Install/enable Gradle in AndroidIDE, then retry." >&2
exit 127
