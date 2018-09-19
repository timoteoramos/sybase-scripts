#!/bin/bash

bash /opt/sybase-scripts/bin/uninstall.sh

echo "Configuring Sybase 9 ASA environment..."
bash /opt/sybase-scripts/_files/install-common.sh
cp /opt/sybase-scripts/_files/sybase9.conf /etc/ld.so.conf.d/sybase.conf
cp /opt/sybase-scripts/_files/sybase9.csh /etc/profile.d/sybase.csh
cp /opt/sybase-scripts/_files/sybase9.sh /etc/profile.d/sybase.sh
echo "Script finished successfully!"
