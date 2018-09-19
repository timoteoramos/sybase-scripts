#!/bin/bash

source /etc/profile.d/sybase.sh
source /opt/sybase-scripts/config/db.sh

# Sybase 12 ASE
[ -r "$SQLANY12/bin64/dbsrv12" ] && $SQLANY12/bin64/dbsrv12 -n $DB_NAME -xTCPIP{serverport=$DB_PORT} $DB_ARGS $* /var/lib/sybase/$DB_NAME/$DB_FILE

# Sybase 9 ASA
[ -r "$ASANY9/bin64/dbsrv9" ] && $ASANY9/bin64/dbsrv9 -n $DB_NAME -xTCPIP{serverport=$DB_PORT} $DB_ARGS $* /var/lib/sybase/$DB_NAME/$DB_FILE
