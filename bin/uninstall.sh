#!/bin/bash

echo "Trying to uninstall previous Sybase configurations"
systemctl stop sybase
rm /usr/lib/systemd/system/sybase.service
rm /etc/ld.so.conf.d/sybase.conf
rm /etc/profile.d/sybase.csh
rm /etc/profile.d/sybase.sh
chown -R root: /var/lib/sybase
userdel sybase
echo "Script finished successfully!"
