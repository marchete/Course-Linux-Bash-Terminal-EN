#!/bin/bash
VIEWERFILE="/project/target/content.html"
touch /root/.bash_history


function sendMessage {
echo "$1">$VIEWERFILE
echo "TECHIO> open -s /project/target/ /viewer.html"

# MSG=$1
#for file in /dev/pts/*
#do
#  echo "$MSG">$file
#done
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
sendMessage "<h1>Write the command: pwd</h1></p>pwd will print the current directory where you are. It's not very useful in many Linux systems as you already have this info on the prompt line, but sometimes you have a long path and you can't see all the path"
checkHistory "pwd"
sendMessage "<h1>Good! Now move to the parent folder: cd ..</h1></p>cd is the command to Change Directory. It can be a relative or an absolute path. In this case is a relative path. Remember that you need an space between cd and the two dots"
checkHistory "cd .."
sendMessage "<h1>You should be on folder /project now, try to move to the root folder, user the command: cd /</h1></p>In this case the cd command will use an absolute path."
checkHistory "cd /"
sendMessage "<h1>Great! What will be in that folder? Let's find out with: ls -l -h </h1></p>ls command is like dir on Windows, it shows files and directories. The -l parameter is for list one per line, and -h is for human readable sizes. If you don't specify a path, ls will use the current directory"
checkHistory "ls -l -h"
sendMessage "<h1>A lot of folders! You can also use a path with ls to show the contents of any folder in the system: ls /usr/lib</h1></p>ls is used with an absolute path, without parameters, notice how different is the output."
checkHistory "ls /usr/lib"
sendMessage "<h1>Sometimes names are hard to write. Let's use Tab to autocomplete, write: ls -l -h /lib/x86 and press Tab, you'll see how the system autocompletes the name.</h1></p>Tab autocompletion is a must have for a greater lazyness, it simplifies a lot the completion of commands."
checkHistory "ls -l -h /lib/x86_64-linux-gnu/"
sendMessage "<h1>Other lazy commands are up and down cursor to check command history. OK, now let's use the command: df -h</h1></p>df command shows the free space on all filesystems, and information "
checkHistory "df -h"
sendMessage "<h1>Almost all Linux commands have the --help parameter to show some basic info. Let's try it: ls --help</h1></p>There is also the man command, that shows more information about a command: man <command>. But in many cases --help parameter is just enough"
checkHistory "ls --help"
sendMessage "<h1>Wonderful! It isn't that hard, right?</h1></p>Please fill the checklist to ensure that your remember all commands used"
echo "Well Done! Please fill the checklist with all you have learned."
echo "TECHIO> success true"