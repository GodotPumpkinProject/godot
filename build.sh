#!/usr/bin/bash
# Exit on any failure
set -e

scons platform=windows arch=x86_64 vsproj=yes target=editor dev_mode=yes dev_build=yes custom_modules=../game/custom_modules 2>&1 | tee build.sh.log

echo "build complete"
