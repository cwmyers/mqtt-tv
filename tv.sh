#!/bin/bash

oldStatus=-2

while (true); do
  curl -s -m 1 http://${TV}:8080 > /dev/null
  status=$?
  if [ $status != "0" ]
  then
    status=-1
  fi

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
  sleep 5;
done
