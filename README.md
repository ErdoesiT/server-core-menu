## Server Core Menu
A simple PowerShell based start menu for Windows Server Core installations

![Screenshot](./Screenshot.png?raw=true "Screenshot") 

# Overview
Server Core Menu provides a quick and easy way to launch a custom menu (similar to sconfig) after logging into a Windows Server Core installation.

# Installation
Download this project and copy the 'ServerCoreMenu' folder to any folder on your Windows Server Core Installation. Then run PowerShell script 'Install.ps1' in folder 'ServerCoreMenu\Setup' to register Server Core Menu lauch automatically after logging in.

# Removal
Run PowerShell script 'Uninstall.ps1' in folder 'ServerCoreMenu\Setup' and delete the 'ServerCoreMenu' folder.

# Adding menu items
To add a new menu item, simply place your PowerShell script, batch file or and other document in folder 'ServerCoreMenu\MenuItems' and name it according to the following naming convention:
<one or two digit number>) <Description>

# Removing menu items
Delete the corrensponding files in folder 'ServerCoreMenu\MenuItems'.
