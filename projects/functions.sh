#!/bin/bash

#GENERAL INITIALIZATION
WEBROOT="/tmp/server"
mkdir "$WEBROOT"
cp -p /project/target/viewer.html "$WEBROOT/viewer.html"
VIEWERFILE="$WEBROOT/content.html"
#Initialize History
touch /root/.bash_history
#Open server. Magic 1-liner
ruby -rwebrick -e"WEBrick::HTTPServer.new(:Port => 8000, :DocumentRoot => \"$WEBROOT\", Logger: WEBrick::Log.new(\"/dev/null\"), AccessLog: [],).start"&
echo "TECHIO> open --port 8000 /viewer.html"
echo "TECHIO> terminal"

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

function checkFileExists {
  FILE=$1
  FINISHED=0
  while [ $FINISHED -eq 0 ]; do
    if [ -e "$FILE" ]
    then
      FINISHED=1
	else 
	  sleep 0.3	
    fi
  done 
}