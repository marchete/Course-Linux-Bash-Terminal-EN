#!/bin/bash
EXERCISE=$1
LOCALE=$2  #en,es,fr, etc...
#Load functions, initialize web mini-server to write instructions there
source functions.sh

#Default load English Texts
source "./exercises/${EXERCISE}/TEXT.sh"
#If exists a locale file for some language, overwrite English texts
if [ -e "./exercises/${EXERCISE}/TEXT_${LOCALE}.sh" ]; then source "./exercises/${EXERCISE}/TEXT_${LOCALE}.sh"; fi

#The same for Commands
source "./exercises/${EXERCISE}/CMD.sh"
#Commands can be translated too if needed.
if [ -e "./exercises/${EXERCISE}/CMD_${LOCALE}.sh" ]; then source "./exercises/${EXERCISE}/CMD_${LOCALE}.sh"; fi


#Steps of the playground
tLen=${#HELP[@]}
for (( i=0; i<${tLen}; i++ ));
do
  sendMessage "${HELP[$i]}"
  eval ${CMD[$i]}
done
#Close playground
sendMessage "$WELLDONE_WEB"
echo "$WELLDONE"
sleep 1s	
echo "TECHIO> success true"