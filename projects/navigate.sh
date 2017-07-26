#!/bin/bash
LOCALE=$1
if [ -z "$LOCALE" ]
then
LOCALE="en"
fi

WEBROOT="/tmp/server"
mkdir "$WEBROOT"
cp -p /project/target/viewer.html "$WEBROOT/viewer.html"
VIEWERFILE="$WEBROOT/content.html"
touch /root/.bash_history

#Open server. Magic 1-liner
#ruby -run -ehttpd $WEBROOT/ -p8000 & &>/dev/nul
ruby -rwebrick -e"WEBrick::HTTPServer.new(:Port => 8000, :DocumentRoot => \"$WEBROOT\", Logger: WEBrick::Log.new(\"/dev/null\"), AccessLog: [],).start"&
echo "TECHIO> open --port 8000 /viewer.html"


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


echo "TECHIO> terminal"
./navigate_${LOCALE}.sh
sleep 1s	
echo "TECHIO> success true"