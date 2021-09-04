#!/bin/bash

#Server-status script

declare -i FAILS=0
EMAIL_ADDRESS="Critical-error@gruppe4.net" ##Email capabilities 
SERVER="192.168.31.1"  ###Host to check
SLEEP=1           ###Defining Sleep

echo "1-FAILS[$FAILS]"

while true; do
   ping -c 1 $SERVER >/dev/null 2>&1
   if [ $? -ne 0 ] ; then #if ping exits nonzero...
       FAILS=$FAILS+1 
   else
       FAILS=0
   fi

   echo "2-FAILS[$FAILS]"

   if [ $FAILS -gt 1 ]; then
       FAILS=0
       echo "Server $SERVER is offline!" # \ | mail -s "Server offline"   "$EMAIL_ADDRESS"
   fi
       sleep $SLEEP #check again in SLEEP seconds
done


