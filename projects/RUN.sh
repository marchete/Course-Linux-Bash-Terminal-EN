#!/bin/bash
EXERCISE=$1
LOCALE=$2
source functions.sh
source exercises/${EXERCISE}/TEXT.sh
if [ -e "exercises/${EXERCISE}/TEXT_${LOCALE}.sh" ]; then source "exercises/${EXERCISE}/TEXT_${LOCALE}.sh"; fi
source exercises/${EXERCISE}/CMD.sh
if [ -e "exercises/${EXERCISE}/CMD_${LOCALE}.sh" ]; then source "exercises/${EXERCISE}/CMD_${LOCALE}.sh"; fi

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