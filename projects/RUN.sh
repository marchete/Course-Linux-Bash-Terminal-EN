#!/bin/bash
EXERCISE=$1
LOCALE=$2
if [ -z "$LOCALE" ]
then
LOCALE="en"
fi
source functions.sh
source ${EXERCISE}_${LOCALE}.sh
source ${EXERCISE}_CMD.sh

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