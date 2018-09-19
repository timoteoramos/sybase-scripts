#!/bin/csh

setenv ASANY9 "/opt/sybase/SYBSsa9"
setenv ASANYSH9 "/opt/sybase/shared"

if ( $?PATH ) then
    setenv PATH "$ASANY9/bin64:$ASANY9/bin32:$PATH"
else
    setenv PATH "$ASANY9/bin64:$ASANY9/bin32"
endif

if ( $?LD_LIBRARY_PATH ) then
    setenv LD_LIBRARY_PATH "$ASANY9/lib64:$ASANY9/lib32:$LD_LIBRARY_PATH"
else
    setenv LD_LIBRARY_PATH "$ASANY9/lib64:$ASANY9/lib32"
endif
