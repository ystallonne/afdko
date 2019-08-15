#! /bin/sh
set -e
set -x

target=type1

if [ -z "$1" ] || [ "$1" = "release" ]
then
	cd release
	make -f Makefile.fbsd
	mv $target ../../../../../build_all/$target
else
   echo "Build target must be 'release' or simply omitted (same as 'release')"
fi
