#!/bin/sh
# Baut Packages/Packages.gz/Packages.bz2 aus ALLEN .deb in debs/.
# Nach jedem neuen Build aufrufen:  sh mkindex.sh && git commit -am "..." && git push
set -e

cd "$(dirname "$0")"
[ -d debs ] || { echo "debs/ fehlt"; exit 1; }

: > Packages

for DEB in debs/*.deb; do
	[ -f "$DEB" ] || continue

	WORK=$(mktemp -d)
	cp "$DEB" "$WORK/pkg.deb"
	(cd "$WORK" && ar x pkg.deb && tar xzOf control.tar.gz ./control > ctrl.txt)

	SIZE=$(stat -f%z "$DEB")
	MD5=$(md5 -q "$DEB")
	SHA1=$(shasum -a 1 "$DEB" | cut -d' ' -f1)
	SHA256=$(shasum -a 256 "$DEB" | cut -d' ' -f1)

	{
		grep -v '^$' "$WORK/ctrl.txt"
		echo "Filename: $DEB"
		echo "Size: $SIZE"
		echo "MD5sum: $MD5"
		echo "SHA1: $SHA1"
		echo "SHA256: $SHA256"
		echo
	} >> Packages

	rm -rf "$WORK"
done

gzip -9kf Packages
bzip2 -9kf Packages

echo "Index gebaut:"
grep -E '^(Package|Version):' Packages | paste - - | sed 's/^/  /'
