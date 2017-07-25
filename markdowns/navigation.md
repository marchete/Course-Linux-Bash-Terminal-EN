# Navigation and File Listing

## Linux Files and Folder hierarchy.
Linux Files and Folders have many similarities with Windows Filesystems. You have files and folders organized in a tree directory structure.

A directory (or folder) may contain files or other directories, while a file is just a single archive that may contain data in it. 

There is a one special directory, the root folder, named `/`, that is always the source folder of any path in the linux filesystem.

>**Note:** Unlike Windows, on Linux there aren't drive letters (C:\, E:\). Drives are mounted on folders. On Linux almost everything is represented as a file. And unlike Windows, Directory separators are `/` (division symbol) and not `\`.


This image shows the same folder on a Windows 10 PC (with Ubuntu Bash installed, so you can use Bash directly on Windows):
![Terminal Prompt](/images/WinvsLinux.png)
Both paths are refering to the same folder.

## Absolute and relative paths

Absolute paths always start with the root path, so always have `/` as the first character of the path.
Absolute paths are univocal, that is, it cannot have a different interpretation or cannot point to another location.
It always target the same document or folder no matter on what folder is the prompt.

**Absolute path:** ```/mnt/c/Develop/tech.io/Course/bash-terminal```

On the other hand, relative paths depends on the working directory, the current path shown in the prompt.
Relative paths works like on Windows. A single dot `.` means current directory, and two dots `..` reflects the parent directory, the symbol `~` is home directory (depends on the current user). 
Any path is considered relative if it doesn't start with the root dir `/`. That means that you don't need to use the single dot `.` at start of each relative path.
Relative path ```./subdir/hello``` is the same as ```subdir/hello```. So what's the use of the single dot? `.` is usually used to run executables in the working directory.

**Relative path:** ```../../tech.io/Course/bash-terminal``` and ```tech.io/Course/bash-terminal```

## Hands on
@[Let's navigate!]({"command":"/bin/bash /project/target/navigate.sh"})

## Checklist - Things you have learned

Please think about what you have learned, and mark all checkboxes

?[In this lesson we have learned these commands]
-[x] ls: Directory listing.
-[x] df: Disk Free, and how filesystems are mounted.
-[x] cd: Change Directory.
-[x] pwd: Shows current Directory.

?[Absolute and relative paths]
-[x] Absolute path: Always refered to the root folder. Always starts with `/`
-[x] Relative path: Depends on your current directory. Never starts with `/`

?[Other stuff]
-[x] Always be lazy, use Tab and cursors to reduce typing.
-[x] Linux doesn't have drive letters, just files and folders.

