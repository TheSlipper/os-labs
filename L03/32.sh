#!/bin/sh
catalogue=/dev/
fileAmount=`ls -f $catalogue | wc -l`

echo "File amount in $catalogue is: $fileAmount"
