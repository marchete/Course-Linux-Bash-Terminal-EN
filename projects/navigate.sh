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
ruby -rwebrick -e"WEBrick::HTTPServer.new(:Port => 8000, :DocumentRoot => \"$WEBROOT\", Logger: WEBrick::Log.new(\"/dev/null\"), AccessLog: [],).start"&
echo "TECHIO> open --port 8000 /viewer.html"

echo "TECHIO> terminal"
source navigate_${LOCALE}.sh
source navigate_CMD.sh
source functions.sh
tLen=${#HELP[@]}

for (( i=0; i<${tLen}; i++ ));
do
  sendMessage "${HELP[$i]}"
  eval ${CMD[$i]}
done
sendMessage "$WELLDONE_WEB"
echo "$WELLDONE"

sleep 1s	
echo "TECHIO> success true"