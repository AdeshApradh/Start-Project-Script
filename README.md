# Start-Project-Script
Batch file to change current working directory to a specific project directory and open that directory in vscode and also run that project with optional flag or parameter

#
## sp.bat - The Batch File
_You can place the batch file in system32 folder so that it can run as a command line tool and can be used from anywhere!_

#
## project_locations.txt
_You can place this file anywhere on the pc where you might find it easy to access and edit to add more projects_

This file contains 3 values which are divided by spaces.
* _**Identifier**_ - The name you want to give to the project using which you can start the project.
* _**Drive Letter**_ - The local drive letter in which the project folder is in. It should be **upper cased**.
* _**Path**_ - The path of the file exculding the drive letter i.e C:\path\to\folder needs to be \path\to\folder

#
## flags or parameter - run
You can use _**run**_ flag which will run a npm script in this example case it is _npm run android_ command.
You can edit that command to your suitable case.

#
## Example - running the script from cmd prompt
_considering you have placed the batch file in system32's folder so that you can run the script as a command line tool from anywhere!_

* _Without run flag_
C:\Users\adesh\>sp projectA
* _With run flag_
C:\Users\adesh\>sp projectA run

This will then change the current working directory in the projects specific directory and will open vscode if it is configured for cli and run the specific command/script to start the project if run flag is provided.
