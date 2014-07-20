#!/bin/sh

echo 'APT::Default-Release "precise";' > /etc/apt/apt.conf.d/01ubuntu

echo 'deb http://old-releases.ubuntu.com/ubuntu raring main universe' >> /etc/apt/sources.list

cat >> /etc/apt/preferences << EOL
Package: tex*
Pin: release n=raring
Pin-Priority: 999

Package: fontconfig-config
Pin: release n=raring
Pin-Priority: 999

Package: libfontconfig1*
Pin: release n=raring
Pin-Priority: 999

Package: libgraphite3
Pin: release n=raring
Pin-Priority: 999

Package: libkpathsea6
Pin: release n=raring
Pin-Priority: 999

Package: libpoppler28
Pin: release n=raring
Pin-Priority: 999

Package: libptexenc1
Pin: release n=raring
Pin-Priority: 999

Package: tipa
Pin: release n=raring
Pin-Priority: 999

Package: libptexenc1
Pin: release n=raring
Pin-Priority: 999

Package: libtiff5
Pin: release n=raring
Pin-Priority: 999

Package: liblzma5
Pin: release n=raring
Pin-Priority: 999

Package: gnuplot*
Pin: release n=raring
Pin-Priority: 999
EOL
