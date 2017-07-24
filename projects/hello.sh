#!/bin/bash
VIEWERFILE="/project/target/content.html"
TESTING='echo "Hello World!"'
touch /root/.bash_history
function checkHistory {
  FIND=$1
  echo "SEARCHING $FIND">>/tmp/testing
  COUNT=0
  FINISHED=0
  while [ $FINISHED -eq 0 ]; do
    FILE=`cat /root/.bash_history | grep "$FIND" | grep -v /root/.bash_history |wc -l`
	COUNT=$(($COUNT + 1))
	echo "<h1>Please write the following command: echo \"Hello World!\" $COUNT </h1></p>`cat /root/.bash_history`">$VIEWERFILE
	#>> FOR TESTING PURPOSES
	echo "<h1>Please write the following command: echo \"Hello World!\" $COUNT </h1></p>`cat /root/.bash_history`">/tmp/status
	cat /root/.bash_history >/tmp/historia
	#<< FOR TESTING PURPOSES
    if [ $FILE -ge 1 ]
    then
	  echo "WELL DONE!!"
	  echo "<h1>WELL DONE!</h1>">$VIEWERFILE
	  #sleep 2s
      echo "TECHIO> success true"
      FINISHED=1
    fi
    sleep 0.3	
  done 
}

echo "<h1>Please write the following command: echo \"Hello World!\"</h1>">$VIEWERFILE
echo "TECHIO> open -s /project/target/ /viewer.html"
echo "TECHIO> terminal"

echo "Going to test $TESTING">/tmp/testing
checkHistory "$TESTING"

