# { autofold
#!/bin/bash

VIEWERFILE="/project/target/viewer.txt"
TESTING='echo "Hello World!"'
function checkHistory {
  FILE=`history | grep '$1' | grep -v history |wc -l`
  echo "Status of $FILE ">/tmp/status
  FINISHED=0
  while [ $FINISHED -eq 0 ]; do
    if [ $FILE -ge 1 ]
    then
	  echo "<h1>SUCCESS!</h1>">$VIEWERFILE
	  sleep 2s
      echo "TECHIO> success true"
      FINISHED=1
    fi
    sleep 0.1
  done 
}
echo '<h1>Please write the following command: echo "Hello World!"</h1>'>$VIEWERFILE
echo "TECHIO> open -s /project/target/ /viewer.html"
echo "TECHIO> terminal"

echo 'Going to test $TESTING'>/tmp/testing
checkHistory $TESTING
# }
