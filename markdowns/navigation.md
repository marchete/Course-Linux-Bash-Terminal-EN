# Navigation and file listing

Linux terminals are usually black, boring windows with just plain text. Sometimes you'll see colored text in some commands, but it's usually gray text over a black background.
![Linux Terminal](/images/terminal0.png)

On command-line, you'll see both the commands you execute and the output of these commands.

In that image, I executed two commands: a `df -h` to see the disk space and `ls -l -h` to view the directory content.
![Linux Terminal](/images/terminal.png)
More on these commands on later lessons.

## Accesing Linux Terminal

Depending on the system you are accessing, you'll connect to a terminal from different ways.

If your system is a Desktop Linux with GUI, you can use the "Terminal" application, or right-click on the folder you want to access with a terminal.

If your system is a headless Linux without GUI, you'll directly have a command-line screen.

For accessing remote systems, SSH connections are used. You can connect to a Linux server from Windows, too, with SSH clients (like [Putty](http://www.putty.org/) )

## Hello World!

Inside tech.io, the exercises will open a terminal for you. You don't need to install anything, it just works.

So, let's use a Linux Terminal for the first time. Press "Run" to open a new Linux terminal.
@[Print "Hello World!"]({"command":"/bin/bash /project/target/hello.sh"})

>**Remember:** Bash terminal IS CASE SENSITIVE. 