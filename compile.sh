
#!/bin/bash

if [ ! -f dicts.tar.gz ]; then
	# wget "https://drive.google.com/uc?id=1yvLdTN0ZQYqV55lUn-7fGXn6s-NQZAfq&export=download" -O dicts.tar.gz
	echo "You have to download the package and save as 'dicts.tar.gz'"
	echo "URL:"
	echo "https://drive.google.com/uc?id=1yvLdTN0ZQYqV55lUn-7fGXn6s-NQZAfq&export=download"
	exit
fi

mkdir -p deb_package/usr/share/goldendict/dicts/
tar -vxzf dicts.tar.gz -C deb_package/usr/share/goldendict/dicts/
dpkg-deb -b deb_package .
