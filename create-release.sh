#!/bin/bash

if [ -n "$1" ]; then
	version="$1"
else
	echo "Usage: $0 <version>"
	echo "Where version is the version number of genlop to create"
	exit 1
fi

echo "Creating genlop-${version}.tar.xz ..."
mkdir genlop-${version}
cp -p COPYING  Changelog  README  genlop  genlop.1  genlop.bash-completion genlop-${version}
sed -i "s/version  = \"9999\"/version  = \"${version}\"/" genlop-${version}/genlop
tar cvaf genlop-${version}.tar.xz genlop-${version}
rm -rf genlop-${version}
exit 0
