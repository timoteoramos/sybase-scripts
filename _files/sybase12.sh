#!/bin/sh

SQLANY12="/opt/sqlanywhere12"
SQLANYSAMP12="/opt/sqlanywhere12/samples"
[ -r "$HOME/.sqlanywhere12/sample_env64.sh" ] && . "$HOME/.sqlanywhere12/sample_env64.sh"

[ ! $JAVA_HOME ] && JAVA_HOME="$SQLANY12/sun/jre160_x64"
[ $LD_LIBRARY_PATH ] && LD_LIBRARY_PATH="$SQLANY12/sun/jre160_x64/lib/amd64/client:$SQLANY12/sun/jre160_x64/lib/amd64/server:$SQLANY12/sun/jre160_x64/lib/amd64:$SQLANY12/sun/jre160_x64/lib/amd64/native_threads:$SQLANY12/lib64:$SQLANY12/lib32:$LD_LIBRARY_PATH" || LD_LIBRARY_PATH="$SQLANY12/sun/jre160_x64/lib/amd64/client:$SQLANY12/sun/jre160_x64/lib/amd64/server:$SQLANY12/sun/jre160_x64/lib/amd64:$SQLANY12/sun/jre160_x64/lib/amd64/native_threads:$SQLANY12/lib64:$SQLANY12/lib32"
[ $PATH ] && PATH="$SQLANY12/bin64:$SQLANY12/bin32:$SQLANY12/sun/jre160_x64/bin:$PATH" || PATH="$SQLANY12/bin64:$SQLANY12/bin32:$SQLANY12/sun/jre160_x64/bin"

export JAVA_HOME
export LD_LIBRARY_PATH
export PATH
export SQLANY12
export SQLANYSAMP12
