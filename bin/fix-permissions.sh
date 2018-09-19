#!/bin/bash

. /opt/sybase-scripts/config/db.sh

mkdir -p /var/lib/sybase/$DB_NAME
chown -R sybase: /var/lib/sybase
chmod 755 /opt/sybase-scripts{,/{bin{,/*},config}}
chmod 755 /var/lib/sybase{,/$DB_NAME}
chmod 644 /var/lib/sybase/$DB_NAME/{$DB_FILE,$DB_TLOG}
