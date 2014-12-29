# Mundus Home Folder Cleaner

Mundus is a small utility that can help you keep your `/home` folder clean.
It keeps an internal database of known applications and folders, and automagically 
detects those apps that where uninstalled but left configuration files. Each supported
application is also called a _module_, and each folder it describes is 
called a _submodule_.

## Features

### Backups

There are two options to make backups before cleaning a directory.

* **Automatic**
		If the directory to clean is below the size limit, a backup will be automatically
		executed before the clean begins.
	
* **Manual**
		The alternative, just click the `Backup` button when selecting a submodule.
		

### Reports

This feature is useful if you want to keep track of the freed space, the amount of files deleted,
or any other data you are interested in. They are stored as JSON files and are easy viewable if you
go to `View --> Reports`


## Installing

Please refer to the [Installation instructions](https://github.com/sebikul/mundus/wiki/Installation) and follow the steps for your current Linux distribution.

## Software Requirements

Mundus requires the [Gambas3](http://gambas.sf.net>) runtime, and the following components:

* gb.image
* gb.qt4
* gb.form
* gb.desktop
* gb.desktop.x11
* gb.settings
