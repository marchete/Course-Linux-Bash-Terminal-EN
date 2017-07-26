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





echo "TECHIO> terminal"
chmod 777 ./navigate_${LOCALE}.sh
./navigate_${LOCALE}.sh
sleep 1s	
echo "TECHIO> success true"