#!/bin/bash

FILENAME=dovianutils_0.1.0-dov1+_all.deb
echo "hi guys i am makedeb and im here to make a Debian package!"
echo "[Step 1/3]: Checking if work directory exists, if not, creating"
if [ ! -d workdir ]; then
	mkdir -p workdir
fi
rm -rfv workdir/*

echo "[Step 2/3]: Copying files"
cp -ra DEBIAN workdir/DEBIAN
cp -ra usr workdir/usr

chmod 755 workdir/DEBIAN
chmod 644 workdir/DEBIAN/control

echo "[Step 3/3]: Making package"
dpkg-deb -b ./workdir ./"${FILENAME}"
