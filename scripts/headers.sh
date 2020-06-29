#! /bin/sh
set -e
. ./config.sh

mkdir -p "$SYSROOT"

echo "HEADERS"
for PROJECT in $SYSTEM_HEADER_PROJECTS; do
    (cd ../$PROJECT && DEST_DIR="$SYSROOT" $MAKE install-headers)
done
