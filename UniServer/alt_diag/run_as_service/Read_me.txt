###############################################################################
# File name: Read_me.txt
# Created By: The Uniform Server Development Team
# V 1.0 15-8-2011
# Running the servers as a service using batch files.
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

 -------------------------------
 Run as a Service (Vista and W7)
 -------------------------------
 Method 1:
   Right click on *.bat file and select "Run as administrator"
   Double click *.bat to run batch file

 Method 2:
   If you are happy to always grant "Run as administrator" privileges then use
   the following method:

   Right click on *.bat and choose <b>Properties</b>
   Click the "compatibility tab"
   Tick the box "Run this program as administrator"
   Double click *.bat to run batch file

 Note: *.bat is the file you wish to run.

 -------------
 Service names
 -------------
 Service name are read from the configuration file:
  UniServer\uni_con\config_tracker.ini
 Defaults are:
  apache_service_name = US_ApacheS1
  mysql_service_name  = US_MySQLS1
 Above provided for information only do not change these names.

 --------------------------
 apache_install_service.bat
 --------------------------
 Installs Apache Server as a service this writes data to your PC’s registry.
 After installing start the service by running apache_run_service.bat 

 ----------------------
 apache_run_service.bat
 ----------------------
 Starts Apache Server as a service.

 -----------------------
 apache_stop_service.bat
 -----------------------
 Stops Apache Server service.
 After stopping uninstall service by running apache_uninstall_service.bat 

 ----------------------------
 apache_uninstall_service.bat
 ----------------------------
 Uninstalls Apache service and removes entries from your PC’s registry.


 -------------------------
 mysql_install_service.bat
 -------------------------
 Installs MySQL server as a service this writes data to your PC’s registry.
 After installing start the service by running mysql_run_service.bat .

 ---------------------
 mysql_run_service.bat
 ---------------------
 Starts MySQL Server as a service.

 ----------------------
 mysql_stop_service.bat
 ----------------------
 Stops MySQL Server service.
 After stopping uninstall service by running mysql_uninstall_service.bat

 ----------------------------
 mysql_uninstall_service.bat
 ----------------------------
 Uninstalls MySQL service and removes entries from your PC’s registry.


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

 

