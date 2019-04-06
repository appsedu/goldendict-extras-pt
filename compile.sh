#!/bin/bash

if [ ! -f dicts.tar.gz ]; then
	wget "https://drive.google.com/uc?id=1yvLdTN0ZQYqV55lUn-7fGXn6s-NQZAfq&export=download" -O dicts.tar.gz
fi

tar -vxzf dicts.tar.gz -C deb_package/usr/share/goldendict/dicts/
dpkg-deb -b deb_package .