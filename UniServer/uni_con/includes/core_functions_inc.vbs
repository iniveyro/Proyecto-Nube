'#############################################################################
'# Name: functions_inc.vbs
'# Developed By: The Uniform Server Development Team
'# Web: http://www.uniformserver.com
'# Notes: Common functions
'# V1.0 21-12-2011
'# V1.1 23-01-2012
'# V1.2 16-02-2012
'# V1.3 11-03-2012
'# V1.3 20-06-2012 Added https to ssl listen port
'# V1.4 14-08-2012 Added -f to Apache install service - line 960
'# V1.5 16-01-3013 Patch -line 421 split  
'#############################################################################

'=== PORTS ===
' us_get_apache_port()              - Returns port number - From file httpd.conf
' us_get_apache_ssl_port()          - Returns port number - From file httpd-ssl.conf
' us_get_mysql_port()               - Returns port number - From file my.ini
' us_port_in_use_ap(port)           - Check a port returns true if in use
' us_port_in_use_my(port)           - Check a port returns true if in use

' us_general_change_port(FileName,old_port,new_port) 'Use by next three functions
' us_change_apache_port(from_port,to_port)           'Change Apache server port
' us_change_apache_ssl_port(from_port,to_port)       'Change Apache ssl server port
' us_change_mysql_port(from_port,to_port)            'Change MySQL port
' us_get_port_user_details(port)                     'Port found in use get details
'                                                    'Details in returned array.

'=== GENERAL ===
' us_init()                         - Initialisation clean-up have servers moved
'                                   - If moved updates configuration files
' us_redirect(page)                 - Create a redirection file and display in default browser
'                                     INPUTS:
'                                     start                      - Initial page displayed when server first starts 
'                                     www                        - server root
'                                     ssl                        - secure server root 
'                                     phpmyadmin                 - phpMyAdmin 
'                                     php_info                   - phpinfo.php phpinfo()
'                                     eAccelerator_control_panel - view in browser
'                                     apc_control_panel          - view in browser
'                                     zop_control_panel          - view in browser
'                                     pear_install               - intall Pear
'                                     pear_front_end             - View front end in browser
'                                     perl_test                  - runs index.pl in cgi-bin 
'
' StartFireFox(page)                - Run portable FireFox
' ExecCMD(strCMD, byValPROC, bWAIT) - Execute command
' us_hta_delay(MSecs)               - Run external file for delay
' us_select_add_item(id,value,text) - Add item to a select menu box
' display_html_doc_page(page)   - Display help page from US docs 

'=== Live server test === 
' get_ip_address()              - Gets server IP address as seen from the Internet. Uses DtDNS page.  
'                                 Returns ip address on success otherwise returns 0 failed
' us_get_server_page(url)       - Get data as text from server page

'=== Apache ===
' us_get_apache_exe()                   - Returns Apache executable file name
' us_apache_running()                   - Check Apache server returns true if running
' us_start_apache_program()             - Start Apache as a program 
' us_stop_apache_program()              - Stops Apache program 

' us_set_apache_service_name(name)      - Set Apache service name     - config_tracker.ini
' us_get_apache_service_name()          - Returns apache service name - config_tracker.ini

' us_is_apache_installed_as_a_service() - Checks win32_services. Returns true if service otherwise returns false
' us_install_apache_service()           - Ininstalls Apache service, sets tracker to service 
' us_start_apache_service()             - Start Apache Service
' us_stop_apache_service()              - Stops Apache service
' us_uninstall_apache_service()         - Uninstalls Apache service, sets tracker to free 

' us_enable_apache_ssl()                - Enable Apache ssl in configuration file
' us_disable_apache_ssl()               - Disable Apache ssl in configuration file
' us_ssl_enabled()                      - Is Apache SSL enabled returns true = enabled false = not enabled

' us_apache_syntax_check()              - Runs Apache with -t performs a syntax check
'                                         Apache output result displayed in a pop-up MsgBox

' us_get_server_name()                  - Gets server name from configuration file
' us_get_ssl_server_name()              - Gets SSL server name from configuration file

' us_set_default_server_name()          - Sets _default_ server name in httpd-vhosts.conf file
' us_set_ssl_default_server_name()      - Sets SSL _default_ server name in httpd-ssl.conf file


' us_enable_vhost()                     - Enable Apache VHOST in configuration file
' us_disable_vhost()                    - Disable Apache VHOST in configuration file

'=== MySQL ==
' us_get_mysql_exe()                    - Returns MySQL executable file name
' us_mysql_running()                    - Check MySQL server returns true if running
' us_start_mysql_program()              - Start MySQL as a program
' us_kill_mysql_program()               - Kills MySQL program  - Used only for password recovery
' us_stop_mysql_program()               - Stops MySQL program. Using a name and password

' us_set_mysql_password(value)         - Set MySQL password         - config_tracker.ini
' us_get_mysql_password()              - Returns MySQL password     - config_tracker.ini

' us_set_mysql_service_name(name)      - Set MySQL service name     - config_tracker.ini
' us_get_mysql_service_name()          - Returns MySQL service name - config_tracker.ini

' us_is_mysql_installed_as_a_service() - Checks win32_services
' us_install_mysql_service()           - Install MySQL service, sets tracker to service 
' us_start_mysql_service()             - Starts MySQL service
' us_stop_mysql_service()              - Stops MySQL service
' us_uninstall_mysql_service()         - Uninstalls MySQL service, sets tracker to free 

' us_create_mysql_database(database_name,NULL) - Create named database
' us_drop_mysql_database(database_name)        - Delete named database
' us_mysql_batch(mysql_str,mysql_array)        - Returns true, function ran OK or false failed
'                                              - Returns result in array passed to it if true. 

' us_dump_database(db_name,dump_to_file)  - Save a named db to a backup to file 
' us_restore_database(db_name,dump_file)  - Restore a named db from dump file 

'=== PHP ===
' us_php_switch_to_production()        - Copies production ini to php.ini
' us_php_switch_to_development()       - Copies development ini to php.ini

'=== CRON ===
' us_is_cron_installed_as_a_service() - Checks win32_services

'=== Perl ===
'us_shebang_update(startDirectory)         - Force shebang update in cgi folder
'us_shebang_update_unix(startDirectory)    - Force shebang update in cgi-unix folder

'=== TRACKERS ===
' us_my_ini_set(FileName, Section, KeyName, Value) - Set a value in .ini file 
' us_my_ini_get(FileName, Section, KeyName)        - Get a value from .ini file 

' us_set_apache_tracker(value)   - Values free, program or service
' us_get_apache_tracker()        - Returns free, program or service (running status)
' us_set_mysql_tracker(value)    - Values free, program or service
' us_get_mysql_tracker()         - Returns free, program or service (running status)

' us_set_php_tracker(value)      - Values Production or Development
' us_get_php_tracker()           - Returns Production or Development

' us_set_location_tracker()      - Set current location of servers
' us_get_location_tracker()      - Old current location of servers

' us_set_cron_tracker(value)        - Values run, stop 
' us_get_cron_tracker()             - Returns run or stop
' us_set_cron_service_name(value)   - Set cron service name 
' us_get_cron_service_name()        - Returns Cron service name


' use_set_server_number(value)   - Set server numbr (value displayed in icon)
' us_get_server_number()         - Returns server number
' us_get_server_version()        - Returns server version from ini file

' us_get_vhost_tracker()         - Returns disabled or enabled
' us_set_vhost_tracker(value)    - Sets disabled or enabled

'=== FILE FUNCTIONS ===
' us_writefile_str(FileName, Contents)                - Write string to file
' us_getfile_str(FileName)                            - Get file content as a string
' us_file_search_replace(file,search_str,replace_str) - Replace string in file
' us_file_exists(FileName)                            - If file exits ret true
' us_delete_file(FileName)                            - If file exists delete it
' us_get_file_as_array(FileName)                      - Returns file as an array line-by-line
' us_save_array_to_file(arryFileLines,FileName)       - Save array to file (full path) line-by-line
' us_create_folder(path)                              - Creates folder including all sub-folders to it

'=== PROCESS FUNCTIONS ===
' us_process_running(strProcessName)                  - Returns true if process running
' us_kill_process(strProcessName)                     - Kills named processes

'=== UNITRAY ===
' us_unitray_update(str)                              - Value str Refresh or Change

'##############################################################################

'### shared functions ###
Function us_get_port(pattern,filename)
	Dim ForReading, PortNumber, objRegEx,objFSO,objFile,strSearchString,colMatches 
	ForReading = 1
	Set objRegEx = New RegExp                            'Create new reg obj
	objRegEx.Pattern = pattern                           'Pattern to search for
	Set objFSO = CreateObject("Scripting.FileSystemObject") 'Create file obj
	Set objFile = objFSO.OpenTextFile(filename, ForReading) 'Open file for read
	Do Until objFile.AtEndOfStream                       'Search line-by-line
		strSearchString = objFile.ReadLine                 'Line to search
		Set colMatches = objRegEx.Execute(strSearchString) 'Return collection of Match objects 
		If colMatches.Count > 0 Then                       'Match found
			PortNumber = colMatches(0).SubMatches(0)         'Extract first capturing group
			Exit Do                                          'First port will do hence end
		End If
	Loop
	objFile.Close 
	us_get_port = PortNumber  'Set Resturn value
	Set objRegEx = Nothing  
	Set objFSO = Nothing  
	Set objFile = Nothing  
	Set colMatches = Nothing  
End Function

Function us_get_exe(strDirectoryPath, defName, pattern)
	Dim objFileScripting,objFolder,filecollection
	Dim objRegEx,colMatches,strMatch,filename, name 
	us_get_exe = defName                                  'Assume default
	Set objFileScripting = CreateObject("Scripting.FileSystemObject") 'get file scripting object
	Set objFolder = objFileScripting.GetFolder(strDirectoryPath)      'Return folder object
	Set filecollection = objFolder.Files                              'return file collection
	Set objRegEx = New RegExp                                         'Create new reg obj
	objRegEx.Pattern = pattern                              'Pattern to search for
	For Each filename in filecollection                               'filename = full path and name 
		name=right(filename,len(filename)-InStrRev(filename, "\"))      'extract name only
		'Perform regex 
		Set colMatches = objRegEx.Execute(name)             'Return collection of Match objects 
		If colMatches.Count > 0 Then                        'Match found
			us_get_exe = colMatches(0).SubMatches(0) 'Extract first capturing group
			Exit For                                        'Nothing else to do hence end
		End If
	Next
	Set objFileScripting = Nothing  
	Set objFolder = Nothing  
	Set filecollection = Nothing  
	Set objRegEx = Nothing  
End Function

'### PORTS ###

'=== Get Apache port ===
' Returns port number configured in httpd.conf 
Function us_get_apache_port()
	us_get_apache_port = us_get_port("^Listen\s+(\d+)", USF_APACHE_CNF)
End Function

'=== Get Apache SSL port ===
' Returns port number configured in httpd.conf 
Function us_get_apache_ssl_port()
	us_get_apache_ssl_port = us_get_port("^Listen\s+(\d+)", USF_APACHE_SSL_CNF)
End Function

'=== Get MySQL port ===
' Returns port number configured in my.ini 
Function us_get_mysql_port()
	us_get_mysql_port = us_get_port("^port=(\d+)", USF_MYSQL_INI)
End Function

'=== Port in use ===
'Checks for port in use using netstat -ano. Result stored in a temp file
'Content of this file is read and file deleted. Search for string ip:port 
'Returns true if match found (port in use) otherwise returns false 

Function us_port_in_use_ap(port)
	Dim temp_file, FS,sInput
	temp_file = US_TMP & "\port_check.txt"       'Temp file for netstat results
	call ExecCMD("cmd /c netstat -anp tcp >" & temp_file,0,true) 'true=wait
	Set FS = CreateObject("Scripting.FileSystemObject") 'Create file object
	sInput = FS.OpenTextFile(temp_file).ReadAll         'Read file content

        'Is port in use
	If InStr(sInput, "0.0.0.0:" & port & " ") Then      
		us_port_in_use_ap = true   'Yes return true
	Else
		us_port_in_use_ap = false  'No return false
	End if

	Set FS = Nothing 
End Function

'=== Port in use ===
'Checks for port in use using netstat -ano. Result stored in a temp file
'Content of this file is read and file deleted. Search for string ip:port 
'Returns true if match found (port in use) otherwise returns false 

Function us_port_in_use_my(port)
	Dim temp_file, FS,sInput
	temp_file = US_TMP & "\port_check.txt"       'Temp file for netstat results
	call ExecCMD("cmd /c netstat -anp tcp >" & temp_file,0,true) 'true=wait
	Set FS = CreateObject("Scripting.FileSystemObject") 'Create file object
	sInput = FS.OpenTextFile(temp_file).ReadAll         'Read file content

        'Is port in use
	If InStr(sInput, "0.0.0.0:" & port & " ") or InStr(sInput, "127.0.0.1:" & port & " ") Then      
		us_port_in_use_my = true   'Yes return true
	Else
		us_port_in_use_my = false  'No return false
	End if

	Set FS = Nothing 
End Function

'=== General Change port ===
' Change ports: Used for changing Apache and MySQL configuration files.
' Looks for specific patterns e.g. :80 and Listen 80
' Inputs:
' FileName  - Full path to configuration file
' old_port  - Port currently in configuration 
' new_port  - Replace current port with new port  

Function us_general_change_port(FileName,old_port,new_port)
	Dim arrFileLines,i,objRegEx,patern,colMatches
	arrFileLines = us_get_file_as_array(FileName) ' Save file to array

	'--Change Listen port
	Set objRegEx = New RegExp               'Create new reg obj
	patern = "^(\s*Listen)\s*" & old_port   'Create search pattern Listen
	objRegEx.Pattern = patern               'Assign search pattern

	For i = 0 To UBound(arrFileLines)                     'Scan all lines in array
		Set colMatches = objRegEx.Execute(arrFileLines(i)) 'Return collection of Match objects 
		If colMatches.Count > 0 Then                       'Match found replace line in array 
			arrFileLines(i) = "Listen " & new_port     'Set array line to new Listen port
		End If
	Next                                                  'Get next line

	'--Change port in Vhosts
	Set objRegEx = New RegExp               'Create new reg obj
	patern = "(:" & old_port & ")"          'Create search pattern Listen
	objRegEx.Pattern = patern               'Assign search pattern

	For i = 0 To UBound(arrFileLines)                     'Scan all lines in array
		Set colMatches = objRegEx.Execute(arrFileLines(i)) 'Return collection of Match objects 
		If colMatches.Count > 0 Then                       'Match found replace vhost port 
			arrFileLines(i) = objRegEx.Replace(arrFileLines(i), ":" & new_port) 'Set array line to new Listen port
		End If
	Next                                                  'Get next line    

	'--Change port in MySQL
	Set objRegEx = New RegExp               'Create new reg obj
	patern = "(port=" & old_port & ")"      'Create search pattern Listen
	objRegEx.Pattern = patern               'Assign search pattern

	For i = 0 To UBound(arrFileLines)                     'Scan all lines in array
		Set colMatches = objRegEx.Execute(arrFileLines(i)) 'Return collection of Match objects 
		If colMatches.Count > 0 Then                       'Match found replace vhost port 
			arrFileLines(i) = objRegEx.Replace(arrFileLines(i), "port=" & new_port) 'Set array line to new Listen port
		End If
	Next                                                  'Get next line                            

	call us_save_array_to_file(arrFileLines,FileName) 'Save array 
	Set objRegEx = Nothing  
	Set colMatches = Nothing  
End Function

'=== Change Apache port ===
' Updates Apache port for main server and Vhost sections
' Inputs:
' from  - Port currently in configuration 
' to    - Replace current port with new port  

Function us_change_apache_port(from_port,to_port)
	call us_general_change_port(USF_APACHE_CNF,from_port,to_port)
	call us_general_change_port(USF_APACHE_VHOST_CNF,from_port,to_port)
End Function

'=== Change Apache ssl port ===
' Updates Apache ssl port for main server and Vhost sections
' Inputs:
' from  - Port currently in configuration 
' to    - Replace current port with new port
' Ensure Listen port contains https  

Function us_change_apache_ssl_port(from_port,to_port)
	call us_general_change_port(USF_APACHE_SSL_CNF,from_port & " https",to_port & " https")
	call us_general_change_port(USF_APACHE_SSL_CNF,from_port,to_port)
End Function

'=== Change MySQL port ===
' Updates MySQL port for main server
' Inputs:
' from  - Port currently in configuration 
' to    - Replace current port with new port  

Function us_change_mysql_port(from_port,to_port)
	call us_general_change_port(USF_MYSQL_INI,from_port,to_port)
	call us_general_change_port(USF_SMALL_MY_INI,from_port,to_port)
	call us_general_change_port(USF_MEDIUM_INI,from_port,to_port)
End Function

'== Port User Details ===
' Port was found in use by another user. This function returns details such as
' process name and its path
' Input:  Port number
' Output: Array (0) Port nuber (1) PID (2) process name (3) Path to process  

Function us_get_port_user_details(port)
	Dim temp_file,objFile,objFSO,Dummy,sInput,i,ForReading,pid
	Dim ret_array(4),file_array(),line,split_array,objWMIService,procItem,item

	ForReading = 1
	'--Get port details
	temp_file = US_TMP & "\port_check.txt"         'Temp file for netstat results

	Dummy = ExecCMD("cmd /c netstat -anop tcp >" & temp_file,0,true) 'true=wait

	Set objFSO = CreateObject("Scripting.FileSystemObject")  'Create file object
	Set objFile = objFSO.OpenTextFile(temp_file, ForReading) 'Open file
	i = 0                                   'Set array index ref
	Do Until objFile.AtEndOfStream          'Read to end of file
		Redim Preserve file_array(i)          'Keep array and add another element
		file_array(i) = objFile.ReadLine      'Read line from file save to array
		i = i + 1                             'Increment array index
	Loop                                    'Read another line
	objFile.Close                           'Finished with file hence close
	objFSO.DeleteFile temp_file             'No longer required hence delete

	For each line in file_array              'Scan array 
          If InStr(line, "0.0.0.0:" & port & " ") or InStr(line, "127.0.0.1:" & port & " ") Then 
           Exit For                             'Exit we have line required
          End If 
	Next

	line = trim(line)                        'Remove left right spaces
	split_array = Split(line," ")            'Split into components  
	line = split_array(UBound(split_array))  'Get PID
	pid = trim(line)                         'Remove right spaces

	'Get process details using pid
	Set objWMIService = GetObject("winmgmts:\\.\root\cimv2") 'access CIM library
	Set procItem = objWMIService.ExecQuery("SELECT Name,ProcessId,CommandLine FROM Win32_Process WHERE ProcessId = "& pid)

	For each item in procItem
		ret_array(0)  = port                               'Port             
		ret_array(1)  = pid                                'Pid
		ret_array(2)  = item.name                          'Process name using port 
		If item.name = "System" Then    'System process
			ret_array(3)  = "?"
		Else                            'Application process
			split_array   = split(item.CommandLine&" "," ")    'Split string at " "
			ret_array(3)  = Replace(split_array(0),Chr(34),"") 'Process path location remove quotes
		End If
	Next

	us_get_port_user_details = ret_array            'Return array
	Set objFSO = Nothing  
	Set objFile = Nothing  
	Set objWMIService = Nothing  
	Set procItem = Nothing  
End Function


'### GENERAL ###
'=== Initialisation ===
'1) Determine if server has been physically moved.
'   If moved rewrite all absolute paths in following files:
'    usr\local\apache2\conf\httpd.conf
'    usr\local\mysql\my.ini
'    usr\local\php\php.ini
'    usr\local\php\php.ini-production_nano
'    usr\local\php\php.ini-delvelopment-nano
'    unicon\docs\redirect.html
'    all files in cgi-bin (Perl shebang header)
'2) If the servers were running as a program a user may have switched PC off 
'   without stopping servers or there was a power fail. In either case we 
'   need to reset trackers and remove any artefacts.
'3) Update msmtp log path
'------------------------------------------------------------------------------
Function us_init()
	'===Section 1===
	Dim OLD_PATH
	OLD_PATH = us_get_location_tracker()

	If UNICON_PATH <> CUR_PATH Then        'Have paths changed  
		Dim search_str,replace_str,new_search_str,new_replace_str ,str_file,new_str_file

		search_str      = OLD_PATH                       'Old location \
		replace_str     = UNICON_PATH                    'Current location \
		new_search_str  = Replace(search_str, "\", "/")  'Replace \ with /
		new_replace_str = Replace(replace_str, "\", "/") 'Replace \ with /
		
		'***Forward slashes
		Call us_file_search_replace(USF_APACHE_CNF,new_search_str,new_replace_str)    'Update Apache cnf
		Call us_file_search_replace(USF_APACHE_SSL_CNF,new_search_str,new_replace_str)'Update Apache SSL cnf

		Call us_file_search_replace(USF_MYSQL_INI,new_search_str,new_replace_str)     'Update MySQL ini
		Call us_file_search_replace(USF_SMALL_MY_INI,new_search_str,new_replace_str)  'Update alternative MySQL ini
		Call us_file_search_replace(USF_MEDIUM_INI,new_search_str,new_replace_str)    'Update alternative MySQL ini

		Call us_file_search_replace(USF_PHP_INI,new_search_str,new_replace_str)       'Update PHP ini
		Call us_file_search_replace(USF_PHP_INI_PROD,new_search_str,new_replace_str)  'Update PHP production ini
		Call us_file_search_replace(USF_PHP_INI_DEV,new_search_str,new_replace_str)   'Update PHP delvelopment ini
		Call us_file_search_replace(USF_PHP_INI_CLI,new_search_str,new_replace_str)   'Update PHP cli ini

		If us_file_exists(USF_MSMTP_INI) Then                                         'Only update if exists 
			Call us_file_search_replace(USF_MSMTP_INI,new_search_str,new_replace_str)    'Update msmpt ini
		End If

		If us_file_exists(USF_CRON_INI) Then                                          'Only update if exists 
			Call us_file_search_replace(USF_CRON_INI,new_search_str,new_replace_str)    'Update cron ini
		End If

		If us_file_exists(USF_APACHE_VHOST_CNF) Then                                       'Only update if exists 
			Call us_file_search_replace(USF_APACHE_VHOST_CNF,new_search_str,new_replace_str) 'Update VHOSTS ini
		End If

		If us_file_exists(USF_APACHE_DAV_CNF) Then                                       'Only update if exists 
			Call us_file_search_replace(USF_APACHE_DAV_CNF,new_search_str,new_replace_str) 'Update DAV ini
		End If

		If us_file_exists(USF_APACHE_MANUAL_CNF) Then                                       'Only update if exists 
			Call us_file_search_replace(USF_APACHE_MANUAL_CNF,new_search_str,new_replace_str) 'Update manual ini
		End If

		If us_file_exists(USF_APACHE_USERDIR_CNF) Then                                       'Only update if exists 
			Call us_file_search_replace(USF_APACHE_USERDIR_CNF,new_search_str,new_replace_str) 'Update userdir ini
		End If

		If us_file_exists(USF_APACHE_AUTOINDEX_CNF) Then                                       'Only update if exists 
			Call us_file_search_replace(USF_APACHE_AUTOINDEX_CNF,new_search_str,new_replace_str) 'Update autoindex ini
		End If

		If us_file_exists(USF_APACHE_ERRORDOC_CNF) Then                                       'Only update if exists 
			Call us_file_search_replace(USF_APACHE_ERRORDOC_CNF,new_search_str,new_replace_str) 'Update error doc ini
		End If

		'***Back slashes
		'=== Pear configuration ==
		If us_file_exists(USF_PEAR_BAT) Then                                         'Only update if exists 
			Call us_file_search_replace(USF_PEAR_BAT,search_str,replace_str)     'Update pear.bat 
		End If

		If us_file_exists(USF_PEARDEV_BAT) Then                                      'Only update if exists 
			Call us_file_search_replace(USF_PEARDEV_BAT,search_str,replace_str)  'Update peardev.bat 
		End If

		If us_file_exists(USF_PECL_BAT) Then                                         'Only update if exists 
			Call us_file_search_replace(USF_PECL_BAT,search_str,replace_str)     'Update pecl.bat 
		End If


		'=== Cron configurtion ==
		If us_file_exists(USF_CRON_INI) Then                                         'Only update if exists 
			Call us_file_search_replace(USF_CRON_INI,search_str,replace_str)           'Update cron.ini 
		End If

		If us_file_exists(USF_CRON_SERVICE_INI) Then                                 'Only update if exists 
			Call us_file_search_replace(USF_CRON_SERVICE_INI,search_str,replace_str)   'Update service srvstart.ini 
		End If

		If us_file_exists(USF_CRON_SERVICE_Z_INSTALL) Then                               'Only update if exists 
			Call us_file_search_replace(USF_CRON_SERVICE_Z_INSTALL,search_str,replace_str) 'Update z_install.bat 
		End If

		'=== MSMTP
		If us_file_exists(USF_MSMTP_BAT) Then                                         'Only update if exists 
			Call us_file_search_replace(USF_MSMTP_BAT,search_str,replace_str)            'Update msmpt bat
		End If

		'=== Perl shebang ===
		If us_file_exists(USF_PERL_EXE) Then                ' Perl installed
			call us_shebang_update(US_CGI_BIN)              'Update shebang 
		End If

		'***Finally update new path
		us_set_location_tracker()                                                     ' Update to new location
	End If '===End Section 1===

	'===Section 2===
	' Clean-up trackers when run in program mode 

	'=== Reset Cron tracker ===
	If Not us_apache_running()And us_get_cron_tracker() = "run"  Then 'Apache not running however Cron may have been
		us_set_cron_tracker("stop")                                     'left set to run after a power fail hence reset          
	End If

	'=== Reset Apache tracker ===================================================
	' Check was PC switched off while server running as a program or a power fail
	If Not us_apache_running() And us_get_apache_tracker() = "program" Then
		us_set_apache_tracker("free")          'Reset tracker
	End If

	If Not us_apache_running() Then
		If us_file_exists(USF_APACHE_PID) Then 'Is an artifact 
			us_delete_file(USF_APACHE_PID)       'hence delete it
		End If
	End If

	'=== Reset MySQL tracker ====================================================
	' Check was PC switched off while server running as a program or a power fail
	If Not us_mysql_running() And us_get_mysql_tracker() = "program" Then
		us_set_mysql_tracker("free")           'Reset tracker
	End If

	If Not us_mysql_running() Then
		If us_file_exists(USF_MYSQL_PID) Then  'Is an artifact 
			us_delete_file(USF_MYSQL_PID)        'hence delete it
		End If
	End If

	'===Section 3===
End Function

'=== HTML Page redirect ===
'This page redirects a browser to a page servered by our local server
'Translates this : file:///C:/z_test/UniServer/uni_con/test.html
'             To : http://localhost:80/test.php
'It buils a temporary html file and saves it to the tmp folder.
'Either Portable FireFox or default browser displays the page.
'INPUTS:
'start                      - Initial page displayed when server first starts 
'www                        - server root
'ssl                        - secure server root 
'phpmyadmin                 - phpMyAdmin
'php_info                   - phpinfo.php phpinfo()
'eAccelerator_control_panel - view in browser
'apc_control_panel          - view in browser
'zop_control_panel          - view in browser
'pear_install               - intall Pear
'pear_front_end             - View front end in browser
'perl_test                  - runs test.pl in cgi-bin
'server-status              - displays Apache status
'server-info                - displays Apache information
'------------------------------------------------------------------------------ 
Function us_redirect(page)
	Dim port,display_page,protocol,server_name,ini_value
	protocol = "http"                    'Default protocol 

	'==Get port from configuration file
	If page = "ssl" Then
		port        = us_get_apache_ssl_port()
		server_name = us_get_ssl_server_name() 'Get from config
	Else
		port        = us_get_apache_port()
		server_name = us_get_server_name()     'Get from config
	End If

	'==Set page to display
	select case page
		case "start"
			If us_my_ini_get(USF_TRACKER, "REDIRECT", "start") Then              'User wants to display start-up page
				us_hta_delay("1000")                       'Delay in ms
				ini_value = us_my_ini_get(USF_TRACKER, "REDIRECT", "display_page") 'Get path/page from ini file
				If ini_value = "Default" Then                                      'Default no page set
					display_page = ""                                          'Assume any index page will do 
				Else
					display_page = ini_value                                   'Display page set
				End If
			Else
				Exit Function 'User does not want page displayed hence give up
			End If

		case "www" 
			ini_value = us_my_ini_get(USF_TRACKER, "REDIRECT", "www") 'Get path/page from ini file
			If ini_value = "Default" Then                                      'Default no page set
				display_page = ""                                          'Assume any index page will do 
			Else
				display_page = ini_value                                   'Display page set
			End If

		case "ssl" 
			ini_value = us_my_ini_get(USF_TRACKER, "REDIRECT", "ssl") 'Get path/page from ini file
			If ini_value = "Default" Then                             'Default no page set
				display_page = ""                                 'Assume any index page will do 
				protocol = "https" 
			Else
				display_page = ini_value                          'Display page set
				protocol = "https" 
			End If
		case "phpmyadmin"                 : display_page = "us_phpmyadmin/index.php" 
		case "php_info"                   : display_page = "us_extra/phpinfo.php" 
		case "eAccelerator_control_panel" : display_page = "us_extra/eaccelerator_control.php" 
		case "apc_control_panel"          : display_page = "us_extra/apc.php" 
		case "zop_control_panel"          : display_page = "us_extra/zend_optimizer_control.php" 
		case "pear_install"               : display_page = "us_pear/go_pear.php" '- intall Pear
		case "pear_front_end"             : display_page = "us_pear/index.php"   '- View front end in browser
		case "perl_test"                  : display_page = "cgi-bin/test.pl" 
		case "server-status"              : display_page = "server-status" 
		case "server-info"                : display_page = "server-info" 
	end select

	'Create and save redirection file
	temp_file = US_TMP & "\redirect.html"                 'Temp file for redirect
	s = "<html><head><title>Redirecting</title>" & "<meta http-equiv="
	s = s & Chr(34) & "refresh" & Chr(34)& " content=" & Chr(34)& "1;url="
	s = s & protocol & "://" & server_name & ":" & port & "/"
        s = s & display_page
        s = s & Chr(34)&"></head><body></body></html>"

	Call us_writefile_str(temp_file, s)       'Write string to file

	'==Determine browser or browsers to use
	'Display in browsers enabled in the configuration file. 

	'Display in portable Firefox
        If (us_my_ini_get(USF_TRACKER, "BROWSER", "PortableFireFox") = "true") and (us_file_exists(USF_FIREFOX_EXE)) Then 
		StartFireFox(protocol & "://" & server_name & ":" & port & "/" & display_page)
	End If

	'Display in portable Opera
        If (us_my_ini_get(USF_TRACKER, "BROWSER", "PortableOpera") = "true") and (us_file_exists(USF_OPERA_EXE)) Then 
		StartOpera(protocol & "://" & server_name & ":" & port & "/" & display_page)
	End If

	'Display in portable GoogleChrome
        If (us_my_ini_get(USF_TRACKER, "BROWSER", "PortableGoogleChrome") = "true") and (us_file_exists(USF_GOOGLECHROME_EXE)) Then 
		StartGoogleChrome(protocol & "://" & server_name & ":" & port & "/" & display_page)
	End If

	'Display in default browser
        If us_my_ini_get(USF_TRACKER, "BROWSER", "DefaultBrowser") = "true" Then
		ExecCMD temp_file, 0, false       
        End if

End Function


function StartFireFox(page)
	dim sCmd
	sCmd = USF_FIREFOX_EXE & " -new-tab " & """" & page & """"
	ExecCMD sCmd, 0, false
end function

function StartOpera(page)
	dim sCmd
	sCmd = USF_OPERA_EXE & " new " & page 
	ExecCMD sCmd, 0, false
end function

function StartGoogleChrome(page)
	dim sCmd
	sCmd = USF_GOOGLECHROME_EXE & " " & page
	ExecCMD sCmd, 0, false
end function

function ExecCMD(strCMD, byValPROC, bWAIT)
	Dim WshShell
	Set WshShell = CreateObject("WScript.Shell")          'Create a shell object
	ExecCMD = WshShell.Run( strCMD, byValPROC, bWAIT )    'Run process detached hidden
	Set WshShell = Nothing 
end function

'=== Delay ===
' Uses an external file to run wsript.sleep hence producing a delay in HTA app
' Note: wsript.sleep not supported in an HTA hence use of external file

Function us_hta_delay(MSecs) 
	Dim fso,objOutputFile
	Set fso = CreateObject("Scripting.FileSystemObject")
	If Fso.FileExists(USF_HTA_DELAY)=False Then
		Set objOutputFile = fso.CreateTextFile(USF_HTA_DELAY, True)
		objOutputFile.Write "wscript.sleep WScript.Arguments(0)"
		objOutputFile.Close
	End If
	CreateObject("WScript.Shell").Run USF_HTA_DELAY & " " & MSecs,1 , True
	Set fso = Nothing 
	Set objOutputFile = Nothing 
End Function

'=== Add item to select menu box ===
'Creates an object collection and adds it to select options list.
'id:    Obj  - Object path to select e.g. set id = seseli_form_lang.seli_select_lang
'value: Text - hidden value on selct
'text:  Text - text displayed to user

Function us_select_add_item(id_select,value,text)
	Dim objOption
	Set objOption = document.createElement("OPTION")  'Create object ref
	objOption.text    = text                          'Set display text
	objOption.value   = value                         'Set its value
	id_select.add objOption                           'Add item
	Set objOption     = Nothing 
End Function

'=== Live server test ===

'=== Get IP Address ===
' Obtains server IP address as seen from the Internet using DtDNS page.  
' Returns ip address on success otherwise returns 0 failed
' Uses PHP script to run curl.

Function us_get_ip_address()
	Dim objShell, ip_address, safety_count, safety_count_max
	safety_count_max = 10                                '10 seconds 

	'-- Delete temp file
	us_delete_file(USF_SS_GET_IP_TXT)                    ' If file exists delete it
	Set objShell = CreateObject("WScript.Shell")         'Create shell

	'=== Run Script get_server_ip_address.php
	' USF_PHP_EXE path to PHP exe file
	' -c USF_PHP_INI_CLI path to PHP configuration file
	' path full path to script

	objShell.Run USF_PHP_EXE & " -c " & USF_PHP_INI_CLI & " " & USF_SS_GET_IP_PHPS,0   'run PHP Script file detached hidden

	'Wait for PHP script to complete
	safety_count = 0                                 'Reset counter

	Do                                               'Wait for php script to complete
		us_hta_delay("1000")                         'Delay in ms
		safety_count = safety_count +1               'Increment
		If safety_count >= safety_count_max Then     'Limit reached bail out                          
			us_get_ip_address = "0"                   'set failed
			Msgbox "Unable to get ip",,"Failes"       'Inform user
			Exit Function                             'Bail out
		End If
	Loop While Not us_file_exists(USF_SS_GET_IP_TXT) 'Script complete when file created

	ip_address = us_getfile_str(USF_SS_GET_IP_TXT)   'Get content
	us_get_ip_address = ip_address                   'Return IP
	Set objShell     = Nothing  
End Function

'=== Get Page data from server ===
' Obtains data from server.  
' Uses PHP script to run curl.
' Input: Full url eg http://myip.dtdns.com
' Output Fail "" or data  

Function us_get_server_page(server_url)
	Dim objShell, page_data, safety_count, safety_count_max
	safety_count_max = 10                                '10 seconds 

	'-- Delete temp file
	us_delete_file(USF_SS_PAGE_TXT)                      'If file exists delete it
	Set objShell = CreateObject("WScript.Shell")         'Create shell

	'=== Run Script get_server_page.php
	' USF_PHP_EXE path to PHP exe file
	' -c USF_PHP_INI_CLI path to PHP configuration file
	' path full path to script
	' pass parameter to script

	objShell.Run USF_PHP_EXE & " -c " & USF_PHP_INI_CLI & " " & USF_SS_PAGE_PHPS & " " & server_url,0   'run PHP Script file detached hidden

	'Wait for PHP script to complete
	safety_count = 0                                   'Reset counter

	Do                                                 'Wait for php script to complete
		us_hta_delay("1000")                           'Delay in ms
		safety_count = safety_count +1                 'Increment
		If safety_count >= safety_count_max Then       'Limit reached bail out                          
			us_get_page_data = "0"                      'Set failed
			Msgbox "Unable to get page data",,"Failes"  'Inform user
			Exit Function                               'Bail out
		End If
	Loop While Not us_file_exists(USF_SS_PAGE_TXT)     'Script complete when file created

	page_data = us_getfile_str(USF_SS_PAGE_TXT)        'Get content
	us_get_server_page = page_data                     'Return page data
	Set objShell     = Nothing 
End Function

'=== Display htm doc page ===
'Display help page from US docs 

Function display_html_doc_page(page)
	Dim html_file,lang_folder

	'--build file
	lang_folder = us_my_ini_get(USF_TRACKER,"LANGUAGE","selected_lang") 'Get value from .ini file 
	html_file = US_DOCS & "\" & lang_folder & "\" & page

	'--Run file in browser
	If us_file_exists(html_file) Then   'If exists assumes translation


	'Display in portable Firefox
        If (us_my_ini_get(USF_TRACKER, "BROWSER", "PortableFireFox") = "true") and (us_file_exists(USF_FIREFOX_EXE)) Then 
		StartFireFox("file:///"&html_file)
	End If

	'Display in portable Opera
        If (us_my_ini_get(USF_TRACKER, "BROWSER", "PortableOpera") = "true") and (us_file_exists(USF_OPERA_EXE)) Then 
		StartOpera("file:///"&html_file)
	End If

	'Display in portable GoogleChrome
        If (us_my_ini_get(USF_TRACKER, "BROWSER", "PortableGoogleChrome") = "true") and (us_file_exists(USF_GOOGLECHROME_EXE)) Then 
		StartGoogleChrome("file:///"&html_file)
	End If

	'Display in default browser
        If us_my_ini_get(USF_TRACKER, "BROWSER", "DefaultBrowser") = "true" Then
		ExecCMD "file:///"&html_file, 0, false       
        End if

	Else                                'No translation inform user
		Msgbox lang_documentation_popup_str,,lang_documentation_popup_title
	End If
End Function

'### Apache ###

'=== Get Apache Executable ===
Function us_get_apache_exe()
	us_get_apache_exe = us_get_exe(US_APACHE_BIN & "\", "httpd1.exe", "(httpd\d+\.exe)")
End Function

'=== Is Apache running ===
Function us_apache_running()
	us_apache_running = us_process_running(us_get_apache_exe())
End Function

'=== Start Apache as a program ===
' Starts Apache as a detatched program.
' If already running do nothing otherwise start Apache

Function us_start_apache_program()
	Dim Apache_exe,strCmd1,strCmd2,strCmd3,strCmd
	' Run Apache if not be already running and tracker is free (not running as service)
	If Not us_apache_running() And us_get_apache_tracker() = "free" Then 

		us_set_apache_tracker("program")          'Set tracker prvents service
		Apache_exe =  us_get_apache_exe()         'Get real name

		'Clean-up
		If us_file_exists(USF_APACHE_PID) Then    'Is an artifact 
			us_delete_file(USF_APACHE_PID)          'hence delete it
		End If

		strCmd1 = US_APACHE_BIN & "\" & Apache_exe          'Absolute path to exe 
		strCmd2 = " -f " & US_APACHE & "\conf\httpd.conf "  'Absolute path to config 
		strCmd3 = " -d " & US_APACHE                        'Set apache base path
		strCmd = strCmd1 & strCmd2 & strCmd3                'Assemble complete command
		ExecCMD strCmd, 0, false                         'Run process detached hidden
	End If
End Function

''=== Stop Apache as a program ===
' This kills Apache process running as a standard program
' First checks to see if Apache is running as a program

Function us_stop_apache_program()
	Dim Apache_exe

	' Stop Apache if already running and tracker is program (not running as service)
	If us_apache_running() And us_get_apache_tracker() = "program" Then 
		Apache_exe =  us_get_apache_exe()               'Get real name
		us_kill_process(Apache_exe)                     'Kill Apache process
		us_set_apache_tracker("free")                   'Set tracker free.
	End If
End Function

'=== Set Apache Service Name ===
Function us_set_apache_service_name(value)
	Call us_my_ini_set(USF_TRACKER,"SERVICE","apache_service_name",value)
End Function

'=== Get Apache Service name ===
Function us_get_apache_service_name()
	us_get_apache_service_name = us_my_ini_get(USF_TRACKER,"SERVICE","apache_service_name")
End Function

'=== Is Apache installed as a service ===
' Scans all services for named Apache service. If found is installed
' Returns true if found otherwise returns false
 
Function us_is_apache_installed_as_a_service()
	Dim service_name, objWMIService,Services,objService

	service_name = us_get_apache_service_name()
	Set objWMIService = GetObject("winmgmts:\\.\root\cimv2") 
	Set Services = objWMIService.ExecQuery("Select * from Win32_Service")

	us_is_apache_installed_as_a_service = False      'Assume service not installed

	For Each objService in Services                  'Scan returned services  
		'objService.DisplayName  objService.State
		If objService.DisplayName = service_name Then  'Is it Apache service
			us_is_apache_installed_as_a_service = True    'Yes set ret true
			Exit For
		End If
	Next
	Set objWMIService = Nothing  
	Set Services = Nothing  
End Function

'=== Install Apache Service ===
' Installs Apache as a service using WMI

Function us_install_apache_service()
	Dim Apache_exe,service_name,strCmd

	' If Apache already installed as a service exit
	If Not us_is_apache_installed_as_a_service() Then   'Not installed as a service

		us_set_apache_tracker("service")                  'Set tracker to 'service' 
		Apache_exe    = us_get_apache_exe()               'Get real exe name
		service_name = us_get_apache_service_name()       'Get service name

		'strCmd = US_APACHE_BIN & "\" & Apache_exe & " -k install -n " & Chr(34) & service_name & Chr(34)
                 strCmd = US_APACHE_BIN & "\" & Apache_exe & " -k install -n " & Chr(34) & service_name & Chr(34) & " -f " & Chr(34) & USF_APACHE_CNF & Chr(34) 

		ExecCMD strCmd, 0, false                       'Run process detached hidden
	End If
End Function

'=== Start Apache Service ===
Function us_start_apache_service()
	Dim service_name,strCmd

	If us_is_apache_installed_as_a_service() Then   'Installed as a service
		service_name = us_get_apache_service_name()   'Get service name
		strCmd = "net start " & Chr(34) & service_name & Chr(34)
		ExecCMD strCmd, 0, false                    'Run process detached hidden
	End If
End Function

'=== Stop Apache Service ===
Function us_stop_apache_service()
	Dim service_name,strCmd

	If us_apache_running() And us_is_apache_installed_as_a_service() Then
		service_name = us_get_apache_service_name()  'service name
		strCmd = "net stop " & Chr(34) & service_name & Chr(34)
		ExecCMD strCmd, 0, false                    'Run process detached hidden
	End If
End Function

'=== UnInstall Apache Service ===
Function us_uninstall_apache_service()
	Dim Apache_exe,service_name,strCmd

	If Not us_apache_running() And us_is_apache_installed_as_a_service() Then

		Apache_exe    = us_get_apache_exe()               'Get real exe name
		service_name = us_get_apache_service_name()       'Get service name

		strCmd = US_APACHE_BIN & "\" & Apache_exe & " -k uninstall -n " & Chr(34) & service_name & Chr(34)
		ExecCMD strCmd, 0, false                       'Run process detached hidden
		us_set_apache_tracker("free")                      'Set tracker to 'free'
	End If
End Function

'=== Enable Apache ssl ===
'Enables Apache ssl in httpd.conf
Function us_enable_apache_ssl()
	Const ForReading = 1
	Dim arrFileLines,i,FileName,objRegEx,patern,colMatches,str_split
	FileName = USF_APACHE_CNF
	arrFileLines = us_get_file_as_array(FileName) 'Save file to array

	'--Enable ssl line
	Set objRegEx = New RegExp                 'Create new reg obj
	patern = "^(#LoadModule ssl_module)"      'Create search pattern Listen
	objRegEx.Pattern = patern                 'Assign search pattern

	For i = 0 To UBound(arrFileLines)                    'Scan all lines in array
		Set colMatches = objRegEx.Execute(arrFileLines(i)) 'Return collection of Match objects 
		If colMatches.Count > 0 Then                       'Match found
			str_split = split(arrFileLines(i),"#")           'split string at #
			arrFileLines(i) =  str_split(1)                  'Set new line
		End If
	Next 'Read next line

	call us_save_array_to_file(arrFileLines,FileName) 'Save array 
	Set objRegEx = Nothing 
	Set colMatches = Nothing 
End Function

'=== Disable Apache ssl ===
Function us_disable_apache_ssl()
	Const ForReading = 1
	Dim arrFileLines,i,FileName,objRegEx,patern,colMatches
	FileName = USF_APACHE_CNF
	arrFileLines = us_get_file_as_array(FileName) 'Save file to array

	'--Disable ssl line

	Set objRegEx = New RegExp               'Create new reg obj
	patern = "^(LoadModule ssl_module)"     'Create search pattern Listen
	objRegEx.Pattern = patern               'Assign search pattern

	For i = 0 To UBound(arrFileLines)                    'Scan all lines in array
		Set colMatches = objRegEx.Execute(arrFileLines(i)) ' Return collection of Match objects 
		If colMatches.Count > 0 Then                       ' Match found
			arrFileLines(i) = "#" & arrFileLines(i)          'Construct new line disable with #
		End If
	Next 'Read next line

	call us_save_array_to_file(arrFileLines,FileName) 'Save array 
	Set objRegEx = Nothing 
	Set colMatches = Nothing 
End Function

'=== Is Apache SSL enabled ===
' Checks Apaches configuration file for SSL enabled.
' Output: Returns true if enabled

Function us_ssl_enabled()
	Dim ForReading,objRegEx,objFSO,objFile,strSearchString,colMatches
	ForReading = 1
	Set objRegEx = New RegExp                           'Create new reg obj
	objRegEx.Pattern = "^LoadModule.ssl.module"         'Pattern to search for

	Set objFSO = CreateObject("Scripting.FileSystemObject")       'Create file obj
	Set objFile = objFSO.OpenTextFile(USF_APACHE_CNF, ForReading) 'Open file for read

	us_ssl_enabled = false                             '*Assume not found
	Do Until objFile.AtEndOfStream                      'Search line-by-line
		strSearchString = objFile.ReadLine                 'Line to search
		Set colMatches = objRegEx.Execute(strSearchString) 'Return collection of Match objects 
		If colMatches.Count > 0 Then                       'Match found
			us_ssl_enabled = true
			Exit Do
		End If
	Loop

	objFile.Close
	Set objRegEx = Nothing 
	Set objFSO = Nothing 
	Set objFile = Nothing 
	Set colMatches = Nothing 
End Function

'=== Apache Syntax Check ===
'Runs Apache with -t performs a syntax check
'Apache output result displayed in a pop-up MsgBox

Function us_apache_syntax_check()
	Dim apache_exe_name,apache_exe,temp_file,FS,sInput

	apache_exe_name = us_get_apache_exe()               'Returns Apache executable file name
	apache_exe =  US_APACHE_BIN & "\" &apache_exe_name  'Full path to Apache
	temp_file = US_TMP & "\apache_syntax_check.txt"     'Temp file for results

	'RunApache syntax check save result to file
	ExecCMD "cmd /c" & apache_exe & " -t >" & temp_file & " 2>&1 " ,0,true  'true=wait

	'Read result from file
	Set FS = CreateObject("Scripting.FileSystemObject") 'Create file object
	sInput = FS.OpenTextFile(temp_file).ReadAll         'Read file content

	If FS.FileExists(temp_file) Then                    'Now delete file
		FS.DeleteFile temp_file                          'No longer required
	End If 

	MsgBox sInput,0,lang_apache_syntax_check            'Display result
	Set FS = Nothing  
End Function

'=== Get Server name ===
'Gets server-name from Apache's configuration file
Function us_get_server_name()
	Dim file_array,strLine,ServerName,xPOS

	ServerName = "Dummy"                                 'Any value
	file_array = us_get_file_as_array(USF_APACHE_CNF)    'Read Apache config file

	For Each strLine in file_array                      'Scan array
		strLine = trim(strLine)                           'Clean each line
		If Instr(1,strLine,"ServerName") = 1 Then         'Look for string
			xPOS = instr(1,strline,":")
			if xPOS then strline = left(strline,xPOS-1)
			strLine = Replace(strLine,"ServerName","")    'Remove
			ServerName = trim(strLine)                    'Clean line     
			Exit For
		End If
	Next '--Get next line
	us_get_server_name = ServerName                      'Return server name
End Function

'=== Get SSL Server name ===
'Gets SSL server-name from Apache's configuration file
Function us_get_ssl_server_name()
	Dim file_array,strLine,ServerName

	ServerName = "Dummy"                                 'Any value
	file_array = us_get_file_as_array(USF_APACHE_SSL_CNF)'Read Apache config file

	For Each strLine in file_array                      'Scan array
		strLine = trim(strLine)                           'Clean each line
		If Instr(1,strLine,"ServerName") = 1 Then         'Look for string
			strLine = Replace(strLine,"ServerName","")    'Remove
			ServerName = trim(strLine)                    'Clean line     
			Exit For
		End If
	Next '--Get next line
	us_get_ssl_server_name = ServerName                  'Return server name
End Function

'=== Set _default_ Server name ===
'Sets Vhost default server name to server-name from Apache's configuration file
Function us_set_default_server_name()
	Dim server_name,file_array
	server_name = us_get_server_name()     'Get name from Apache main config file 
	'--Create new configuration lines and save in array
	file_array = us_get_file_as_array(USF_APACHE_VHOST_CNF)    'Read Apache Vhost config file

	For i = 0 To UBound(file_array)                      'Scan all lines in array
		file_array(i) = trim(file_array(i))                'Clean each line

		If Instr(1,file_array(i),"ServerName") = 1 Then    'Look for string
			file_array(i) = "ServerName " & server_name    'New line set new name 
			Exit For    
		End If
	Next '--Get next line
	call us_save_array_to_file(file_array,USF_APACHE_VHOST_CNF) 'Save array 
End Function

'=== Set _default_ SSL Server name ===
'Sets SSL Vhost default server name to server-name from Apache's configuration file
Function us_set_ssl_default_server_name()
	Dim server_name,file_array
	server_name = us_get_server_name()     'Get name from Apache main config file 
	'--Create new configuration lines and save in array
	file_array = us_get_file_as_array(USF_APACHE_SSL_CNF)    'Read Apache ssl Vhost config file

	For i = 0 To UBound(file_array)                      'Scan all lines in array
		file_array(i) = trim(file_array(i))                'Clean each line

		If Instr(1,file_array(i),"ServerName") = 1 Then    'Look for string
			file_array(i) = "ServerName " & server_name    'New line set new name 
			Exit For    
		End If
	Next '--Get next line
	call us_save_array_to_file(file_array,USF_APACHE_SSL_CNF) 'Save array 
End Function

'=== Enable Apache HOST ===
'Enables Apache VHOST in httpd.conf
Function us_enable_vhost()
	Const ForReading = 1
	Dim arrFileLines,i,objRegEx,patern,colMatches,str_split
	arrFileLines = us_get_file_as_array(USF_APACHE_CNF) 'Save file to array
	'--Enable vhost line
	Set objRegEx = New RegExp                            'Create new reg obj
	patern = "^(#Include conf/extra/httpd-vhosts\.conf)" 'Create search pattern Listen
	objRegEx.Pattern = patern                 'Assign search pattern

	For i = 0 To UBound(arrFileLines)                    'Scan all lines in array
		Set colMatches = objRegEx.Execute(arrFileLines(i)) 'Return collection of Match objects 
		If colMatches.Count > 0 Then                       'Match found
			str_split = split(arrFileLines(i),"#")           'split string at #
			arrFileLines(i) =  str_split(1)                  'Set new line
		End If
	Next 'Read next line

	call us_save_array_to_file(arrFileLines,USF_APACHE_CNF) 'Save array 
	Set objRegEx = Nothing 
	Set colMatches = Nothing 
End Function

'=== Disable Apache HOST ===
Function us_disable_vhost()
	Const ForReading = 1
	Dim arrFileLines,i,objRegEx,patern,colMatches
	arrFileLines = us_get_file_as_array(USF_APACHE_CNF) 'Save file to array
	'--Disable ssl line
	Set objRegEx = New RegExp                            'Create new reg obj
	patern = "^(Include conf/extra/httpd-vhosts\.conf)"  'Create search pattern Listen
	objRegEx.Pattern = patern                            'Assign search pattern

	For i = 0 To UBound(arrFileLines)                    'Scan all lines in array
		Set colMatches = objRegEx.Execute(arrFileLines(i)) ' Return collection of Match objects 
		If colMatches.Count > 0 Then                       ' Match found
			arrFileLines(i) = "#" & arrFileLines(i)          'Construct new line disable with #
		End If
	Next 'Read next line

	call us_save_array_to_file(arrFileLines,USF_APACHE_CNF) 'Save array 
	Set objRegEx = Nothing 
	Set colMatches = Nothing 
End Function

'### MySQL ###

'=== Get MySQL Executable ===
Function us_get_mysql_exe()
	us_get_mysql_exe = us_get_exe(US_MYSQL_BIN & "\", "mysqld1.exe", "(mysqld\d+\.exe)")
End Function

'=== Is MySQL running ===
Function us_mysql_running()
	us_mysql_running = us_process_running(us_get_mysql_exe()) ' Returns true if process running
End Function

'=== Start MySQL as a program ===
' Starts MySQL as a detatched program.
' If already running do nothing otherwise start MySQL

Function us_start_mysql_program()
	Dim strCmd1,strCmd2,strCmd

	' Run MySQL if not be already running and tracker is free (not running as service)
	If Not us_mysql_running() And us_get_mysql_tracker() = "free" Then 

		us_set_mysql_tracker("program")                 'Set tracker prvents service

		strCmd1 = US_MYSQL_BIN & "\" & us_get_mysql_exe()            'Absolute path to exe 
		'Absolute path to config 
		strCmd2 = " --defaults-file="& Chr(34) & US_MYSQL & "\my.ini" &  Chr(34) &  " --bind-address=127.0.0.1" 
		strCmd = strCmd1 & strCmd2                          'Assemble complete command
		ExecCMD strCmd, 0, false                         'Run process detached hidden
	End If
End Function

'=== Kill MySQL as a program ===
' This kills MySQL process running as a standard program
' Used only for password recovery
' First checks to see if Apache is running as a program

Function us_kill_mysql_program()
	' Stop MySQL if already running and tracker is program (not running as service)
	If us_mysql_running() And Not us_get_mysql_tracker() = "service" Then 
		us_kill_process(us_get_mysql_exe())             'Kill MySQL process
		us_set_mysql_tracker("free")                    'Set tracker free.
	End If
End Function

'=== Stop MySQL as a program ===
' This stops MySQL process using name, password and  WMI
' First checks to see if MySQL is running as a program

Function us_stop_mysql_program()
	Dim mysql_password,mysql_port,strCmd

	'To stop make sure it is running as a program
	If us_mysql_running() And us_get_mysql_tracker() = "program" Then 

		mysql_password = us_get_mysql_password()        ' Get password
		mysql_port     = us_get_mysql_port()            ' Get port

		strCmd = US_MYSQL_BIN & "\mysqladmin.exe --host=127.0.0.1 --port=" & mysql_port & " --user=root --password=" & mysql_password & " shutdown"
		ExecCMD strCmd, 0, false                          'Run process detached hidden

		us_set_mysql_tracker("free")                   ' Set tracker free.
	End If
End Function

'=== Set MySQL Password ===
Function us_set_mysql_password(value)
	Dim objFSO,objFile
	Const ForWriting = 2

	Call us_my_ini_set(USF_TRACKER,"MYSQL","password",value) 'Set new password

	'Update MySQL password file
	If us_file_exists(USF_MYSQL_PASSWORD) Then
		Set objFSO = CreateObject("Scripting.FileSystemObject")
		Set objFile = objFSO.OpenTextFile(USF_MYSQL_PASSWORD, ForWriting)
		objFile.Write value
		objFile.Close
		Set objFile = Nothing 
		Set objFSO = Nothing 
	End If
End Function

'=== Get MySQL Password ===
'MySQL password can be changed in one of two places, config file or 
'password  file
 
Function us_get_mysql_password()
	If us_file_exists(USF_MYSQL_PASSWORD) Then       'still using this file!
		password = us_getfile_str(USF_MYSQL_PASSWORD) 'read its content 
		us_set_mysql_password(password)               'update config file
	End If
	us_get_mysql_password = us_my_ini_get(USF_TRACKER,"MYSQL","password")

End Function

'=== Set MySQL Service Name ===
Function us_set_mysql_service_name(value)
	Call us_my_ini_set(USF_TRACKER,"SERVICE","mysql_service_name",value)
End Function

'=== Get MySQL Service name ===
Function us_get_mysql_service_name()
	us_get_mysql_service_name = us_my_ini_get(USF_TRACKER,"SERVICE","mysql_service_name")
End Function

'=== Is MySQL installed as a service ===
' Scans all services for named MySQL service. If found is installed
' Returns true if found otherwise returns false
 
Function us_is_mysql_installed_as_a_service()
	Dim service_name, objWMIService,Services,objService

	service_name = us_get_mysql_service_name()
	Set objWMIService = GetObject("winmgmts:\\.\root\cimv2") 
	Set Services = objWMIService.ExecQuery("Select * from Win32_Service")

	us_is_mysql_installed_as_a_service = False       'Assume service not installed

	For Each objService in Services                  'Scan returned services  
		'objService.DisplayName  objService.State
		If objService.DisplayName = service_name Then  'Is it MySQL service
			us_is_mysql_installed_as_a_service = True     'Yes set ret true
			Exit For
		End If
	Next
	Set Services = Nothing 
	Set objWMIService = Nothing 
End Function

'=== Install MySQL Service ===
' Installs MySQL as a service using WMI

Function us_install_mysql_service()
	Dim MySQL_exe,service_name,strCmd

	' If MySQL already installed as a service exit
	If Not us_is_mysql_installed_as_a_service() Then  'Not installed as a service

		us_set_mysql_tracker("service")                 'Set tracker to 'service' 
		MySQL_exe    = us_get_mysql_exe()               'Get real exe name
		service_name = us_get_mysql_service_name()      'Get service name

		strCmd = US_MYSQL_BIN & "\" & MySQL_exe & " --install " & Chr(34) & service_name & Chr(34) & " --defaults-file=" & USF_MYSQL_INI
		ExecCMD strCmd, 0, false                     'Run process detached hidden
	End If
End Function

'=== Start MySQL Service ===
Function us_start_mysql_service()
	Dim service_name,strCmd

	If us_is_mysql_installed_as_a_service() Then   'Installed as a service
		service_name = us_get_mysql_service_name()   'Get service name
		strCmd = "net start " & Chr(34) & service_name & Chr(34)
		ExecCMD strCmd, 0, false                   'Run process detached hidden
	End If
End Function

'=== Stop MySQL Service ===
Function us_stop_mysql_service()
	Dim service_name,strCmd

	If us_mysql_running() And us_is_mysql_installed_as_a_service() Then
		service_name = us_get_mysql_service_name()  'service name

		strCmd = "net stop " & Chr(34) & service_name & Chr(34)
		ExecCMD strCmd, 0, false                    'Run process detached hidden
	End If
End Function

'=== UnInstall MySQL Service ===
Function us_uninstall_mysql_service()
	Dim MySQL_exe,service_name,strCmd

	If Not us_mysql_running() And us_is_mysql_installed_as_a_service() Then
		MySQL_exe    = us_get_mysql_exe()                'Get real exe name
		service_name = us_get_mysql_service_name()       'Get service name

		strCmd = US_MYSQL_BIN & "\" & MySQL_exe & " --remove " & Chr(34) & service_name & Chr(34)
		ExecCMD strCmd, 0, false                      'Run process detached hidden
		us_set_mysql_tracker("free")                     'Set tracker to 'free'
	End If
End Function

'=== Create MySQL database ===
' Create a MySQL database

Function us_create_mysql_database(database_name,disable_display)

        If isNull(disable_display) Then
	   'User did not pass in a value for disable_display
           disable_display = FALSE
        Else 
	   'The user passed in a value for disable_display
           disable_display = TRUE
        End If


	Dim mysql_password,mysql_port,strCmd,objFSO

	Set objFSO = CreateObject("Scripting.FileSystemObject")                'Create file obj
	us_create_mysql_database = False                   ' DB not created or error
	If  Not objFSO.FolderExists(US_MYSQL & "\data\" & database_name) Then  'Database does notexist. Create it
		'Check MySQL running
		If us_mysql_running() Then                        ' Running can create database 
			mysql_password = us_get_mysql_password()  ' Get password
			mysql_port     = us_get_mysql_port()      ' Get port

			strCmd = US_MYSQL_BIN & "\mysqladmin.exe --port=" & mysql_port & " --user=root --password=" & mysql_password & " create " & database_name
			ExecCMD strCmd, 0 ,true                    ' Run process detached hidden
			us_create_mysql_database = True            ' DB created
		End If
	Else
            If not disable_display Then
		Msgbox lang_cf_str1,,lang_cf_title1 'There is already a database with that name
            End If
	End If
	Set objFSO = Nothing 
End Function

'=== Drop MySQL database ===
' Drop (delete) a MySQL database

Function us_drop_mysql_database(database_name)
	Dim mysql_password,mysql_port,strCmd,objFSO

	Set objFSO = CreateObject("Scripting.FileSystemObject")            'Create file obj
	us_drop_mysql_database = False                     'DB not deleted or error
	If  objFSO.FolderExists(US_MYSQL & "\data\" & database_name) Then  'Database exists. Delete it

		'Check MySQL running
		If us_mysql_running() Then                        ' Running can drop database 
			mysql_password = us_get_mysql_password()        ' Get password
			mysql_port     = us_get_mysql_port()            ' Get port

			strCmd = US_MYSQL_BIN & "\mysqladmin.exe --port=" & mysql_port & " --user=root --password=" & mysql_password & " --force drop " & database_name
			ExecCMD strCmd, 0 ,true                    'Run process detached hidden
			us_drop_mysql_database = True                   'DB deleted
		End If
	Else
		Msgbox lang_cf_str2,,lang_cf_title2 'There is no database with that name
	End If
	Set objFSO = Nothing 
End Function

'=== MySQL Run Batch mode ===
'Runs myql in batch mode i.e sql statments (mysql_str) saved to a file. This
'file is read by mysql and executed. Results directed to a second file.
'This second file is read and results returned in mysql_array.
'Using batch mode avoids a user having to  install a driver. 

Function us_mysql_batch(mysql_str,mysql_array)
	Const ForReading = 1
	us_mysql_batch = False                            'Unable to run batch mode or error
	If us_mysql_running() Then                                          'Running can use batch mode 
		Dim objFSO,batch_file_in,mysql_password,mysql_port,strCmd,objFile,i
		Set objFSO = CreateObject("Scripting.FileSystemObject")            'Create file obj

		Set batch_file_in= objFSO.CreateTextFile(USF_MYSQL_BATCH_IN, True) 'Create file to save sql commands 
		batch_file_in.WriteLine mysql_str                                  'Save string (sql) to file 
		batch_file_in.Close                                                'Close file  

		mysql_password = us_get_mysql_password()        'Get password
		mysql_port     = us_get_mysql_port()            'Get port
		strCmd = US_MYSQL_BIN & "\mysql.exe --no-defaults --host=" & US_DB_HOST & " --port=" & mysql_port & " --user=root --password=" & mysql_password & " < " & USF_MYSQL_BATCH_IN & " > " & USF_MYSQL_BATCH_RESULT
		ExecCMD "cmd /c " & strCmd,0,true          'Run command hidden.Wait result put in file mysql_batch_results.txt 

		If us_file_exists(USF_MYSQL_BATCH_RESULT) Then 'File was created hence have some results
			'--Read file into array line-by-line
			Set objFile = objFSO.OpenTextFile(USF_MYSQL_BATCH_RESULT, ForReading) 'Open file
			i = 0                                          'Set array index ref
			Do Until objFile.AtEndOfStream                 'Read to end of file
				Redim Preserve mysql_array(i)                'Keep array and add another element
				mysql_array(i) = objFile.ReadLine            'Read line from file save to array
				i = i + 1                                    'Increment array index
			Loop                                           'Read another line
			objFile.Close                                  'Finished with file hence close
			us_mysql_batch = True                         'Result placed in array 
			objFSO.DeleteFile USF_MYSQL_BATCH_IN          'Remove file no longer required
			objFSO.DeleteFile USF_MYSQL_BATCH_RESULT      'Remove file no longer required
			Set objFile = Nothing  
		End If
		Set objFSO = Nothing 
		Set batch_file_in = Nothing 
	End If
End Function

'=== MySQL Dump database to a file ===
'db_name: Database name
'dump_to_file: Full path of file to save

Function us_dump_database(db_name,dump_to_file)
	Dim mysql_password,mysql_port,strCmd

	mysql_password = us_get_mysql_password()        'Get password
	mysql_port     = us_get_mysql_port()            'Get port
	strCmd = US_MYSQL_BIN & "\mysqldump.exe --no-defaults --host=" & US_DB_HOST & " --port=" & mysql_port & " --user=root --password=" & mysql_password & " " & db_name & " > " & dump_to_file
	'ExecCMD "cmd /c " & strCmd,0,true         'Run command hidden. Wait to complete 
	ExecCMD "cmd /c " & strCmd,0,false         'Run command hidden. Do not wait to complete 
End Function


'=== MySQL restore database from a file ===
'db_name: Database name
'dump_file: Full path of file to save

Function us_restore_database(db_name,dump_file)
	Dim mysql_password,mysql_port,strCmd,objFSO

	'--MySQL folder may have been deleted
	set objFSO=CreateObject("Scripting.FileSystemObject")            'Create fso
	If  Not objFSO.FolderExists(US_MYSQL & "\data\" & db_name) Then  'Does db folder exits
	 Call us_create_mysql_database(db_name,NULL)                     'No: create db
	End If
	'--Restore db
	mysql_password = us_get_mysql_password()        'Get password
	mysql_port     = us_get_mysql_port()            'Get port

	strCmd = US_MYSQL_BIN & "\mysql.exe --host=' & US_DB_HOST & ' --port=" & mysql_port & " --user=root --password=" & mysql_password & " " & db_name & " < " & dump_file
	ExecCMD "cmd /c " & strCmd,0,false         'Run command hidden. Do not wait to complete 
	Set objFSO = Nothing 
End Function


'#### PHP ####
'=== PHP Switch to production ===
Function us_php_switch_to_production()        'Copies production ini to php.ini
	Dim FS 
	'Create file object
	set FS=CreateObject("Scripting.FileSystemObject")
	FS.CopyFile USF_PHP_INI_PROD, USF_PHP_INI,true    'Copy and overwrite
	us_set_php_tracker("production")                  'update tracker
	set FS=Nothing 
End Function

'=== PHP Switch to development ===
Function us_php_switch_to_development()       'Copies development ini to php.ini
	Dim FS 
	'Create file object
	set FS=CreateObject("Scripting.FileSystemObject")
	FS.CopyFile USF_PHP_INI_DEV, USF_PHP_INI,true    'Copy and overwrite
	us_set_php_tracker("development")                'update tracker
	set FS=Nothing 
End Function

'### CRON ###
'=== Is Cron installed as a service ===
' Scans all services for named Cron service. If found is installed
' Returns true if found otherwise returns false

Function us_is_cron_installed_as_a_service()
	Dim service_name, objWMIService,Services,objService

	service_name = us_get_cron_service_name()
	Set objWMIService = GetObject("winmgmts:\\.\root\cimv2") 
	Set Services = objWMIService.ExecQuery("Select * from Win32_Service")

	us_is_cron_installed_as_a_service = False        'Assume service not installed

	For Each objService in Services                  'Scan returned services  
		'objService.DisplayName  objService.State
		If objService.DisplayName = service_name Then  'Is it Cron service
			us_is_cron_installed_as_a_service = True      'Yes set ret true
			Exit For
		End If
	Next
	Set objWMIService = Nothing 
	Set Services = Nothing 
End Function

'### PERL ###
'=== Shebang Update ===
Function us_shebang_update(startDirectory)
	Dim fso, folder, file ,sub_folder,filestreamOUT,fileExt1,fileExt2,i,file_array

	fileExt1 = ".pl": fileExt2 = ".cgi"
	Set fso = CreateObject("Scripting.FileSystemObject")   'Create object
	Set folder = fso.GetFolder(startDirectory)             'Create reference folder

	For Each file in folder.Files                          'Scan through files
		If InStr(file.Name,fileExt1) > 0 Or _
			InStr(file.Name,fileExt2) > 0 Then               'Is it required extension

			file_array = us_get_file_as_array(file.Path)     'Yes: Read file into array      
			If InStr(file_array(0),"#!") Then                'Does first line contain a shebang
				file_array(0) = "#!" & USF_PERL_EXE            'Create new shebang line path to PERL exe

				'--- Write array to file 
				Set filestreamOUT = CreateObject("Scripting.FileSystemObject").OpenTextFile(file.Path,2,true)
				for i = LBound(file_array) to UBound(file_array) 'Scan array
					filestreamOUT.WriteLine(file_array(i))         'Save line to file with return at end
				Next

				filestreamOUT.Close()
				Set filestreamOUT = Nothing  
				'--- End Write array to file 
			End If 
			Erase file_array                                 'clear the array
		End If 'End is file extension
	Next

	For Each sub_folder In folder.SubFolders               'Loop through sub-folder
	us_shebang_update sub_folder.Path                   'Recursive call this function 
	Next                                                   'Check files in this new folder

	'cleanup
	Set folder = Nothing  
	Set fso    = Nothing  
End Function

'=== Shebang Update Unix ===
Function us_shebang_update_unix(startDirectory)
	Dim fso, folder, file ,sub_folder,filestreamOUT,i,file_array,fileExt1,fileExt2

	fileExt1 = ".pl"
	fileExt2 = ".cgi"
	Set fso = CreateObject("Scripting.FileSystemObject")   'Create object
	Set folder = fso.GetFolder(startDirectory)             'Create reference folder

	For Each file in folder.Files                          'Scan through files
		If InStr(file.Name,fileExt1) > 0 Or _
			InStr(file.Name,fileExt2) > 0 Then               'Is it required extension

			file_array = us_get_file_as_array(file.Path)     'Yes: Read file into array      
			If InStr(file_array(0),"#!") Then                'Does first line contain a shebang
				file_array(0) = "#!/usr/bin/perl"              'Create new shebang line path to PERL exe

				'--- Write array to file 
				Set filestreamOUT = CreateObject("Scripting.FileSystemObject").OpenTextFile(file.Path,2,true)

				for i = LBound(file_array) to UBound(file_array) 'Scan array
					filestreamOUT.WriteLine(file_array(i))         'Save line to file with return at end
				Next

				filestreamOUT.Close()
				Set filestreamOUT = Nothing 

				'--- End Write array to file 
			End If 
			Erase file_array                      'clear the array
		End If 'End is file extension
	Next

	For Each sub_folder In folder.SubFolders    'Loop through sub-folder
		us_shebang_update sub_folder.Path        'Recursive call this function 
	Next                                        'Check files in this new folder
	'cleanup
	Set folder = Nothing  
	Set fso    = Nothing  
End Function


'#### TRACKERS ####

'=== my_ini_get ===
' Obtains an option value from a configuration file. Reads file into array,
' Scan array for section. Use regex to select item and extract value.
' Inputs:
' FileName      Absolute path to file including file name
' Section       Name of block excluding []
' KeyName       Name of option
' Outputs:
' Returns       Option value

Function us_my_ini_get(FileName, Section, KeyName)
	Const ForReading = 1
	Dim strLine,section_found,arrFileLines,objRegEx,colMatches,patern,match
	arrFileLines = us_get_file_as_array(FileName) 'Save file to array

	'Scan array
	us_my_ini_get = "Default"               'Set a dummy return value
	section_found = false                   'set section tracker

	Set objRegEx = New RegExp                     'Create new reg obj
	patern = "^\s*" & KeyName & "\s*=\s*([^\s]+)" 'Create search pattern

	objRegEx.Pattern = patern               'Assign search pattern

	For Each strLine in arrFileLines        'Scan all lines

		If section_found Then                  'Section was found hence this is a line in that setion
			If InStr(strLine, "=") Then          'Is line a key value pair

				Set colMatches = objRegEx.Execute(strLine) 'Return collection of Match objects				
				If colMatches.Count > 0 Then               'Match found
					match = colMatches(0).SubMatches(0)      'Extract first capturing group
					us_my_ini_get = match                    'Set return value
				End If
			End If
		End If

		If section_found and InStr(strLine,"[" ) Then 'Section was found is this start of a new section
			Exit For                                     'Terminate if new section
		End If

		If InStr(strLine,"[" & Section &"]" ) Then    'Is it start of our section block
			section_found = true                        'Yes set tracker to true
		End If
	Next                                           'Get next line
	Set objRegEx = Nothing 
	Set colMatches = Nothing 
End Function


'=== my_ini_set ===
' Sets an option value in a configuration file
' Inputs:
' FileName      Absolute path to file including file name
' Section       Name of block excluding []
' KeyName       Name of option
' Value         New option value

Function us_my_ini_set(FileName, Section, KeyName, Value)
	Const ForReading = 1
	Dim arrFileLines(),objFSO,objFile,i,strLine,section_found,a,str
	Dim objRegEx,patern,colMatches

	Set objFSO = CreateObject("Scripting.FileSystemObject")   'Create file obj
	Set objFile = objFSO.OpenTextFile(FileName, ForReading)   'Open file

	i = 0                                   'Set array index ref
	Do Until objFile.AtEndOfStream          'Read to end of file
		Redim Preserve arrFileLines(i)        'Keep array and add another element
		arrFileLines(i) = objFile.ReadLine    'Read line from file save to array
		i = i + 1                             'Increment array index
	Loop                                    'Read another line
	objFile.Close                           'Finished with file hence close

	'Scan array
	section_found = false                    'set section tracker

	Set objRegEx = New RegExp                'Create new reg obj
	patern = "^(\s*" & KeyName & "\s*=\s*)"  'Create search pattern Key and =
	objRegEx.Pattern = patern                'Assign search pattern

	For i = 0 To UBound(arrFileLines)        'Scan all lines in array

		If section_found Then                   'Section was found hence this is a line in that setion
			Set colMatches = objRegEx.Execute(arrFileLines(i))  'Return collection of Match objects 
			If colMatches.Count > 0 Then                        'Match found hence is our key value pair
				arrFileLines(i) = KeyName & " = " & Value         'Set new value
			End If
		End If

		If section_found and InStr(arrFileLines(i),"[" ) Then 'Section was found is this start of a new section
			Exit For                                             'Terminate if new section
		End If

		If InStr(arrFileLines(i),"[" & Section &"]" ) Then    'Is it start of our section block
			section_found = true                                'Yes set tracker to true
		End If
	Next                                                   'Get next line

	str=""                               'Reset string
	For Each strLine in arrFileLines     'Scan array
		str = str & strLine & vbCRLF       'and build string
	Next

	Call us_writefile_str(FileName, str) 'Save string to file
End Function

'=== Set Apache Tracker ====
Function us_set_apache_tracker(value)
	Call us_my_ini_set(USF_TRACKER,"APACHE","status",value)
End Function

'=== Get Apache Tracker ===
Function us_get_apache_tracker()
	us_get_apache_tracker = us_my_ini_get(USF_TRACKER,"APACHE","status")
End Function

'=== Set MySQL Tracker ===
Function us_set_mysql_tracker(value)
	Call us_my_ini_set(USF_TRACKER,"MYSQL","status",value)
End Function

'=== Get MySQL Tracker ===
Function us_get_mysql_tracker()
	us_get_mysql_tracker = us_my_ini_get(USF_TRACKER,"MYSQL","status")
End Function

'=== Set PHP Tracker ===
Function us_set_php_tracker(value)
	Call us_my_ini_set(USF_TRACKER,"PHP","status",value)
End Function

'=== Get PHP Tracker ===
Function us_get_php_tracker()
	us_get_php_tracker = us_my_ini_get(USF_TRACKER,"PHP","status")
End Function

'=== Set Location Tracker ===
Function us_set_location_tracker()
	Call us_my_ini_set(USF_TRACKER,"LOCATION","path",UNICON_PATH)
End Function

'=== Get Location Tracker ===
Function us_get_location_tracker()
	us_get_location_tracker = us_my_ini_get(USF_TRACKER,"LOCATION","path")
End Function

'=== Set Cron Tracker ===
Function us_set_cron_tracker(value)
	Call us_my_ini_set(USF_TRACKER,"CRON","status",value)
End Function

'=== Get Cron Tracker ===
Function us_get_cron_tracker()
	us_get_cron_tracker = us_my_ini_get(USF_TRACKER,"CRON","status")
End Function

'=== Set Cron Service name ===
Function us_set_cron_service_name(value)
	Call us_my_ini_set(USF_TRACKER,"SERVICE","cron_service_name",value)
End Function

'=== Get Cron Service Name ===
Function us_get_cron_service_name()
	us_get_cron_service_name = us_my_ini_get(USF_TRACKER,"SERVICE","cron_service_name")
End Function

'=== Set server numbr ===
Function use_set_server_number(value)
	Call us_my_ini_set(USF_TRACKER,"APP","app_number",value)
End Function

'=== Get server number ===
Function us_get_server_number()
	us_get_server_number = us_my_ini_get(USF_TRACKER,"APP","app_number")
End Function

'=== Get server version ===
Function us_get_server_version()
	us_get_server_version = us_my_ini_get(USF_TRACKER,"VERSION","us_version")
End Function

'=== Set VHOST ===
Function us_set_vhost_tracker(value)
	Call us_my_ini_set(USF_TRACKER,"VHOST","status",value)
End Function

'=== Get VHOST status ===
Function us_get_vhost_tracker()
	us_get_vhost_tracker = us_my_ini_get(USF_TRACKER,"VHOST","status")
End Function

'#### END TRACKERS ####

'### File functions
'=== Write string to file ===
' FileName: Absolute path to file.
' Contents: Str to write
' Write string to file overite content

Function us_writefile_str(ByVal FileName, ByVal Contents)
	Dim FS,OutStream                                       ' Define vars
	Set FS = CreateObject("Scripting.FileSystemObject")    ' Get handle to file obj
	Set OutStream = FS.OpenTextFile(FileName, 2, True)     ' Open for write
	OutStream.Write Contents  ' Write contents
	Set FS = Nothing  
	Set OutStream = Nothing 
End Function

'=== Get File as string ===
'FileName: Absolute path to file.
'Reads content of a file and returns it as a string

Function us_getfile_str(ByVal FileName)
	Dim FS                                               'Define variable
	Set FS = CreateObject("Scripting.FileSystemObject")  'Get handle to file obj
	On Error Resume Next
	us_getfile_str = FS.OpenTextFile(FileName).ReadAll   'Read all return string
	Set FS = Nothing 
End Function

'=== File Search and replace  ===
' Inputs:  file        - File to search and replace
'          search_str  - A plain text string 
'          replace_str - A plain text string 
' Notes :  Searches entire file for a pattern and replaces with a string.
' ----------------------------------------------------------------------------
 
Function us_file_search_replace(file,search_str,replace_str)
	if us_file_exists(file) then
		Call us_writefile_str(file, Replace(us_getfile_str(file), search_str, replace_str))
	else
		Msgbox file & vbcrlf & lang_cf_str3,,lang_cf_title3 'Requested file Not Found
	end if
End Function

'=== File Exists  ====
'If exists return true otherwise return false 
Function us_file_exists(ByVal FileName)
	Dim FS                                               'Define variable
	Set FS = CreateObject("Scripting.FileSystemObject")  'Get handle to file obj
	us_file_exists = FS.FileExists(FileName) 'return from this function is already a boolean ... needs no comparison
	Set FS = Nothing 
End Function

'=== File Delete ===
'If file exists delete it  
Function us_delete_file(ByVal FileName)
	Dim FS                                               'Define variable
	Set FS = CreateObject("Scripting.FileSystemObject")  'Get handle to file obj
	If FS.FileExists(FileName) Then FS.DeleteFile FileName
	Set FS = Nothing 
End Function

'=== Get File as an Array ===
' Read a file into an array line-by-line
' Returns array
' File_name: Full path to file
Function us_get_file_as_array(FileName)

	Const ForReading = 1
	Dim objFSO,objFile,i,arrFileLines()

	Set objFSO = CreateObject("Scripting.FileSystemObject")   'Create file obj
	Set objFile = objFSO.OpenTextFile(FileName, ForReading)   'Open file

	i = 0                                   'Set array index ref
	Do Until objFile.AtEndOfStream          'Read to end of file
		Redim Preserve arrFileLines(i)        'Keep array and add another element
		arrFileLines(i) = objFile.ReadLine    'Read line from file save to array
		i = i + 1                             'Increment array index
	Loop                                    'Read another line
	objFile.Close                           'Finished with file hence close

	us_get_file_as_array = arrFileLines     'Return array
	Set objFSO = Nothing 
	Set objFile = Nothing 
End Function

'=== Save Array To File ===
' Save array line-by-line to file
' Array: Name of array to save
' File_name: Full path to file

Function us_save_array_to_file(arryFileLines,FileName)
	Dim objFSO,filetxt,line
	Const ForReading = 1, ForWriting = 2, ForAppending = 8, ReadOnly = 1

	Set objFSO = CreateObject("Scripting.FileSystemObject")        'Create file object
	Set filetxt = objFSO.OpenTextFile(FileName, ForWriting, True)  'Open for write
	For each line in arryFileLines                                 'Scan array
		filetxt.WriteLine(line)                                      'Write to file
	Next
	filetxt.Close 
	Set objFSO = Nothing 
	Set filetxt = Nothing 
End Function

'=== Create Folder ===
'Creates folder including all sub-folders to it
'Full path to folder required

Function us_create_folder(path)
	Dim path_array,objFSO,str,i

	path = Replace(path,"/","\")           'Replace forward slashes
	path_array = Split(path,"\")           'Create array

	Set objFSO = CreateObject ("Scripting.FileSystemObject")  'Create obj

	str=path_array(0)                       'Drive letter
	For i=1 to UBound(path_array)           'Scan array
		str = str & "\" & path_array(i)       'Build Folder path from drive
		If Not objFSO.FolderExists(str) Then  'Folder does not exist
			objFSO.CreateFolder(str)            'create it
		End If
	Next                                    'Get next folder
	Set objFSO = Nothing                    'Remove obj
End Function

'### End File functions

'### PROCESS FUNCTIONS ===
'=== Is process running ===
' Checks for a running process
' Input: Process name e.g cal.exe
' Output: Return true if process running otherwise return false
 
Function us_process_running(strProcessName)
	Dim objWMIService, procItem, objItem
 
	Set objWMIService = GetObject("winmgmts:\\.\root\cimv2") 'access CIM library
	Set procItem = objWMIService.ExecQuery("Select * from Win32_process") 'query

	us_process_running=false                  'Assume not found
	For each objItem in procItem              'Iterate through all items returned
		if objItem.Name = strProcessName Then    'Check for named process
			us_process_running=true                'Named process found set return val  
			Exit For                               'Nothing else to do exit loop
		End if
	Next                                      'Process next item
	Set objWMIService = Nothing                'Object reference remove
	Set procItem      = Nothing                'Object reference remove
End Function

'=== Kill process ===
' Kills a named process. All processes with identical name are killed 
' Input: Process name e.g cal.exe
 
Function us_kill_process(strProcessName)

'	Dim objWMIService, procItem, objItem
 
'	Set objWMIService = GetObject("winmgmts:\\.\root\cimv2") 'access CIM library
'	Set procItem = objWMIService.ExecQuery("Select * from Win32_process") 'query

'	For each objItem in procItem              'Iterate through all items returned
'		If objItem.Name = strProcessName Then    'Check for named process
'			objItem.Terminate()                    'kill process using terminate function 
'		End If
'	Next                                      'Process next item
'	Set objWMIService = Nothing                'Object reference remove
'	Set procItem      = Nothing                'Object reference remove

        Dim objWMIService, colProcessList,objProcess
	Set objWMIService = GetObject("winmgmts:\\.\root\cimv2") 'access CIM library
	'Return all processes with name strProcessName
        Set colProcessList = objWMIService.ExecQuery ("Select * from Win32_Process Where Name = '" & strProcessName & "'")
        For Each objProcess in colProcessList
          objProcess.Terminate()
        Next
	Set objWMIService  = Nothing 'Object reference remove
	Set colProcessList = Nothing 'Object reference remove


End Function

'### UNITRAY ===

'=== Update UniTray - Refresh or Change ===
' If UniTray plugin installed update status to match current server status
' Parameters str: Refresh or Change (UniTray to match server number)

Function us_unitray_update(str)
	Dim us_unitray,usf_unitray_ini
	Dim strCmd1,strCmd2,strCmd3,strCmd,lang

	lang = us_my_ini_get(USF_TRACKER,"LANGUAGE","selected_lang")             'Get lang from main .ini file 
	us_unitray       = US_PLUGINS & "\tray_menu"                             'Unitray folder
	usf_unitray_ini  = US_PLUGINS & "\tray_menu\lang\" & lang & "_tray.ini"  'Unitray ini file
	usf_unitray_wsf  = US_PLUGINS & "\tray_menu\start_stop_update.wsf"       'Unitray wsf file

	If us_file_exists(usf_unitray_ini) Then           'Check for config file
		strCmd1 = "Wscript.exe "                        'Script exe 
		strCmd2 = usf_unitray_wsf                       'Script to run 
		strCmd3 = " " & str                             'Parameter Refresh or Change
		strCmd = strCmd1 & strCmd2 & strCmd3            'Assemble complete command
		ExecCMD strCmd, 0, false
	End if
End Function

'=== Remove main Listen Port ==================================================
'--Ensure the main Listen port is removed from Vhost file

Function us_remove_main_listen_port()
  Dim file_array,file_array2(),port,i,j

  port = us_get_apache_port() 'Get main server Listen port
  file_array  = us_get_file_as_array(USF_APACHE_VHOST_CNF) 'Read config file

  '---Scan array
  j=0
  For i = 0 To UBound(file_array)                          'Scan all lines in array
      If InStr(file_array(i),"Listen " & port) Then    'Not main port
        ' msgbox file_array(i)
      else
         ReDim Preserve file_array2(j)                     'Create space for new entry
         file_array2(j) = file_array(i)                    'Add line to new array
         j =j +1
       End If
  Next

  call us_save_array_to_file(file_array2,USF_APACHE_VHOST_CNF) 'Save array 

End Function
'============================================== End Remove main Listen Port ===

'### END PROCESS FUNCTIONS ===
