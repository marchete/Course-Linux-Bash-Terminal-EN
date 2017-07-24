#!/bin/bash
VIEWERFILE="/project/target/content.html"
TESTING="echo \"Hello World!\""
echo "Veo Historias"
# history -a
# history -c
# history -r


function checkHistory {
echo "funcion"
  COUNT=0
  echo "<h1>Please write the following command: echo \"Hello World!\" $COUNT </h1></p>`history`">$VIEWERFILE
  FINISHED=0
  while [ $FINISHED -eq 0 ]; do
    FILE="hola"
	#`history | grep "$1" | grep -v history |wc -l`
    echo "Status of $FILE ">/tmp/status
    # history >/tmp/history 
    if [ $FILE -ge 1 ]
    then
	  echo "<h1>SUCCESS!</h1>">$VIEWERFILE
	  sleep 2s
      echo "TECHIO> success true"
      FINISHED=1
    fi
    sleep 0.2
	COUNT=$(($COUNT + 1))
	echo "<h1>Please write the following command: echo \"Hello World!\" $COUNT </h1></p>`history`">$VIEWERFILE
  done 
}

echo "Inicio"
echo "<h1>Please write the following command: echo \"Hello World!\"</h1>">$VIEWERFILE
echo "TECHIO> open -s /project/target/ /viewer.html"
echo "TECHIO> terminal"

echo "Going to test $TESTING">/tmp/testing
checkHistory $TESTING

