#!/bin/bash

function sendMessage {
echo "$1">$VIEWERFILE
}

function checkHistory {
  FIND=$1
  FINISHED=0
  while [ $FINISHED -eq 0 ]; do
    FILE=`cat /root/.bash_history | grep "$FIND" | grep -v /root/.bash_history |wc -l`
    if [ $FILE -ge 1 ]
    then
      FINISHED=1
	else 
	  sleep 0.3	
    fi
    
  done 
}