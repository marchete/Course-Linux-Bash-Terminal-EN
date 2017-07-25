# Navigation and File Listing

## Linux Files and Folder hierarchy.
Linux Files and Folders have many similarities with Windows Filesystems. You have files and folders organized in a tree directory structure.

A directory (or folder) may contain files or other directories, while a file is just a single archive that may contain data in it. 

There is a one special directory, the root folder, named `/`, that is always the source folder of any path in the linux filesystem.

>**Note:** Unlike Windows, on Linux there aren't drive letters (C:\, E:\). Drives are mounted on folders. On Linux almost everything is represented as a file.


This image shows the same folder on a Windows 10 PC (with Ubuntu Bash installed, so you can use Bash directly on Windows):
![Terminal Prompt](/images/WinvsLinux.png)
Both paths are refering to the same folder.

## Absolute and relative paths

Absolute is refered to /, relative use . as current directory, or .. for parent directory

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


?[In this lesson we learned these commands]
-[x] mkdir: Make Directory
-[x] rm: Remove Files and Directories
-[x] By default, Linux doesn't have any undo or trashcan, delete with care.
