#!/bin/csh

setenv SQLANY12 "/opt/sqlanywhere12"
setenv SQLANYSAMP12 "/opt/sqlanywhere12/samples"
[ -r "$HOME/.sqlanywhere12/sample_env64.sh" ] && source "$HOME/.sqlanywhere12/sample_env64.sh"

if ( $?PATH ) then
    setenv PATH "$SQLANY12/bin64:$SQLANY12/bin32:$SQLANY12/sun/jre160_x64/bin:$PATH"
else
    setenv PATH "$SQLANY12/bin64:$SQLANY12/bin32:$SQLANY12/sun/jre160_x64/bin"
endif

if ( $?LD_LIBRARY_PATH ) then
    setenv LD_LIBRARY_PATH "$SQLANY12/sun/jre160_x64/lib/amd64/client:$SQLANY12/sun/jre160_x64/lib/amd64/server:$SQLANY12/sun/jre160_x64/lib/amd64:$SQLANY12/sun/jre160_x64/lib/amd64/native_threads:$SQLANY12/lib64:$SQLANY12/lib32:$LD_LIBRARY_PATH"
else
    setenv LD_LIBRARY_PATH "$SQLANY12/sun/jre160_x64/lib/amd64/client:$SQLANY12/sun/jre160_x64/lib/amd64/server:$SQLANY12/sun/jre160_x64/lib/amd64:$SQLANY12/sun/jre160_x64/lib/amd64/native_threads:$SQLANY12/lib64:$SQLANY12/lib32"
endif

if ( ! $?JAVA_HOME ) then
    setenv JAVA_HOME "$SQLANY12/sun/jre160_x64"
endif
