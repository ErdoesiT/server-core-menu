## server-core-menu
A simple PowerShell based start menu for Windows Server Core installations

![Screenshot](./Screenshot.png?raw=true "Screenshot") 

# Overview
Server Core Menu provides a quick and easy way to launch a custom menu (similar to sconfig) after login into a Windows Server Core installation.

# Installation
Download the 'ServerCoreMenu' folder of this project to your Windows Server Core Installation and run PowerShell script 'Install.ps1' in folder 'Setup' to lauch the menu automatically after logging in.

# Removal
Run PowerShell script 'Uninstall.ps1' and delete the 'ServerCoreMenu' folder.

# Adding menu items
To add a new menu item place your PowerShell script, batch file or and other document in folder 'ServerCoreMenu\MenuItems' and name it according to the following naming convention:
<one or two digit number>) <Description>

# Removing menu items
Simply delete the corrensponding files in folder 'ServerCoreMenu\MenuItems'.
