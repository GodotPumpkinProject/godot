#!/usr/bin/bash
set -e

exit 0
scons --clean 2>&1 | tee clean.sh.log
find . -name \*.gen.* -type f -delete 2>&1 | tee -a clean.sh.log
find . -name \*.lib -type f -delete 2>&1 | tee -a clean.sh.log
find . -name \*.obj -type f -delete 2>&1 | tee -a clean.sh.log
find . -name \*.lnk -type f -delete 2>&1 | tee -a clean.sh.log
echo "Complete"

