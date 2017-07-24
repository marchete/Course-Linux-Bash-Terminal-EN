# Navigation and File Listing

## Linux Files and Folder hierarchy.
Linux Files and Folders have many similitudes with Windows Filesystems. You have files and folders organized in a tree directory structure.

A directory (or folder) may contain files or other directories, while a folder is just a single archive. 

There is a one special directory, the root folder, named `/`, that is always the source folder of any path in the linux filesystem.

>**Note:** Unlike Windows, on Linux there aren't drive letters (C:\, E:\). Drives are mounted on folders.


This image shows the same folder on a Windows 10 PC (with Ubuntu Bash installed, so you can use Bash directly on Windows):
![Terminal Prompt](/images/WinvsLinux.png)
Both paths are refering to the same folder.

## Absolute and relative paths


## Hands on
@[Let's navigate!]({"command":"/bin/bash /project/target/navigate.sh"})

## Things to remember
?[In this lesson we learned these commands]
-[x] ls Directory listing
-[x] df Disk Free, and folder 
-[x] cd Change Directory
-[x] pwd Shows current Directory
-[x] mkdir Make Directory
-[x] rm Remove Files and Directories

?[Absolute and relative path]
-[x] Absolute path: Always refered to the root folder. Always starts with `/`
-[x] Relative path: Depends on your current directory. Never starts with `/`
