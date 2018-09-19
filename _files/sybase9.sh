#!/bin/bash

ASANY9="/opt/sybase/SYBSsa9"
ASANYSH9="/opt/sybase/shared"

[ $PATH ] && PATH="$ASANY9/bin64:$ASANY9/bin32:$PATH" || PATH="$ASANY9/bin64:$ASANY9/bin32"
[ $LD_LIBRARY_PATH ] && LD_LIBRARY_PATH="$ASANY9/lib64:$ASANY9/lib32:$LD_LIBRARY_PATH" || LD_LIBRARY_PATH="$ASANY9/lib64:$ASANY9/lib32"

export ASANY9
export ASANYSH9
export LD_LIBRARY_PATH
export PATH
