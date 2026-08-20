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

gzip -9kfn Packages
bzip2 -9kf Packages

# APT/Sileo benutzt die Prüfsummen der Release-Datei, um Änderungen am
# Paketindex zu erkennen. Ohne diese Einträge bleibt auf Geräten häufig ein
# alter Packages-Cache liegen, obwohl GitHub Pages bereits aktualisiert ist.
RELEASE_DATE=$(LC_ALL=C TZ=UTC date '+%a, %d %b %Y %H:%M:%S %z')

{
	echo "Origin: GGTweaks"
	echo "Label: GGTweaks"
	echo "Suite: stable"
	echo "Version: 1.0"
	echo "Codename: ios"
	echo "Date: $RELEASE_DATE"
	echo "Architectures: iphoneos-arm64"
	echo "Components: main"
	echo "Description: Tweaks für rootless Jailbreaks auf iOS 15+"
	echo "Acquire-By-Hash: no"
	echo "MD5Sum:"
	for INDEX in Packages Packages.gz Packages.bz2; do
		printf ' %s %16s %s\n' "$(md5 -q "$INDEX")" "$(stat -f%z "$INDEX")" "$INDEX"
	done
	echo "SHA1:"
	for INDEX in Packages Packages.gz Packages.bz2; do
		printf ' %s %16s %s\n' "$(shasum -a 1 "$INDEX" | cut -d' ' -f1)" "$(stat -f%z "$INDEX")" "$INDEX"
	done
	echo "SHA256:"
	for INDEX in Packages Packages.gz Packages.bz2; do
		printf ' %s %16s %s\n' "$(shasum -a 256 "$INDEX" | cut -d' ' -f1)" "$(stat -f%z "$INDEX")" "$INDEX"
	done
} > Release

echo "Index gebaut:"
grep -E '^(Package|Version):' Packages | paste - - | sed 's/^/  /'
