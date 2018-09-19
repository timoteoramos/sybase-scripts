#!/bin/bash

mkdir -p /opt/sybase-scripts/config
[ ! -r "/opt/sybase-scripts/config/db.sh" ] && cp "/opt/sybase-scripts/_files/sample.db.sh" "/opt/sybase-scripts/config/db.sh"
useradd -m -d /var/lib/sybase -u 478 -g 2 -s /bin/bash sybase
cp /opt/sybase-scripts/_files/sybase.service /usr/lib/systemd/system/sybase.service
