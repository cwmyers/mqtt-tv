#!/bin/sh

oldStatus=-1
newStatus=0

while (true); do 
  curl -s -m 5 http://${TV}:8080 > /dev/null
  status=$?
  if [ $oldStatus != $status ] 
  then
    oldStatus=$status
    if [ $status == "0" ] 
    then
  	echo "ON"
    else
  	echo "OFF"
    fi
  fi
  sleep 1;
done
