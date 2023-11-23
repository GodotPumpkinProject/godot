#!/usr/bin/bash
# Exit on any failure
set -e

scons platform=windows vsproj=yes -j 8 compiledb=yes target=editor dev_mode=yes dev_build=yes custom_modules=../game/custom_modules 2>&1 | tee build.sh.log

echo "build complete"
