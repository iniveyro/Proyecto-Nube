###############################################################################
# File name: Read_me.txt
# Created By: The Uniform Server Development Team
# V 1.0 14-8-2011
# Running the servers as a program using batch files.
###############################################################################

 ---------
 IMPORTANT
 ---------
 Before using these batch files, ensure that the servers are stopped if running
 as a program or stopped and uninstalled if running as a service. Similarly
 after using the batch files but before using UniController, again ensure that
 the servers are stopped if running as a program or stopped and uninstalled if
 running as a service. The reason for this restriction is that, unlike with
 UniController, these batch files do not track server status.  

 ------------------------------------
 Initial install or Server relocation
 ------------------------------------
 When extracting The Uniform Server for the first time, or after relocating an
 existing server, always run Start_as_program.exe at least once (no need to
 start the servers).  This updates all configuration files to the current
 location for The Uniform Server.  After this, you can use these batch files
 as an alternative to UniController for running the servers as a program.

 ----------------
 start_apache.bat
 ----------------
 Starts Apache Server as a standard program.
 
 ---------------
 stop_apache.bat
 ---------------
 Stops Apache Server program.

 ----------------
 start_mysql.bat
 ----------------
 Starts MySQL Server as a standard program.
 
 ---------------
 stop_mysql.bat
 ---------------
 Stops MySQL Server program.

 -----------------
 mysql_console.bat
 -----------------
 Opens a command window and changes the working directory to folder
 UniServer\usr\local\mysql\bin allowing you to directly run the following
 MySQL utilities:
   mysql.exe
   mysqladmin.exe
   mysqldump.exe

 For example to run a MySQL prompt with default user settings
 (user root password root) type the following at the command prompt:

 mysql -uroot -proot

 Note: Next batch file automatically runs a MySQL prompt.

 ----------------
 mysql_prompt.bat
 ----------------
 Opens a command window, changes the working directory to folder
 UniServer\usr\local\mysql\bin and automatically connects to the MySQL server
 using default root user. The MySQL prompt displayed allows you to enter
 SQL commands.

 To close this prompt and return to the command window type
 exit and press enter.
  
 Note: To access a new MySQL prompt enter the following:
       mysql -uroot -proot

------------------------------------ End --------------------------------------

 