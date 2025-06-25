Const UNICON_FOLDER_NAME  = "uni_con"
Const OPENSSL_FOLDER_NAME = "openssl"
Const PLUGINS_FOLDER_NAME = "plugins"

Dim UNICON_FSO,path

 '=== This is required to resolve errors in either HTA or VBS 
 'HTA fails with Object required: 'Wscript'
 'VBS fails with variable undefined location
   Set UNICON_FSO = CreateObject("Scripting.FileSystemObject")    '* Create a file system object
   On Error Resume Next                                           '* This fails in HTA
   path = UNICON_FSO.GetFile(Wscript.ScriptFullName).ParentFolder '* Get path to this file
   On Error Resume Next                                           '* This fails in VBS
   path = location.pathname                                       '* Get path to this file

  '==Replace / with \
  Set regEx = New RegExp 'Create new regex
  regEx.Pattern = "/"    'Search string
  regEx.Global = True    'All
  path = regEx.Replace(path, "\")

  If Instr(1,path,"\") = 1 Then       'Look for slash at start
    path = Mid(path,2)                'Remove 
  End If

 '=== Now get part we rquire
 'A user can rename folder UniServer hence cannot be used for splitting or matching.
 'Scripts used in sub-folders must have a sub-folder entered in this section.
 'For example regex match folder  UNICON_FOLDER_NAME or OPENSSL_FOLDER_NAME 
 'Path required UNICON_PATH gives for example C:\z_test\UniServer\

  Set regEx = New RegExp 'Create new regex
  regEx.Pattern = "^(.*)(" & UNICON_FOLDER_NAME & "|" & OPENSSL_FOLDER_NAME & "|" & PLUGINS_FOLDER_NAME & ")\\" 'Search string

 Set colMatches = RegEx.Execute(path)               '* Return collection of Match objects 
 If colMatches.Count > 0 Then                       '* Match found
   For Each strMatch in colMatches                  '* Scan matches
     UNICON_PATH = strMatch.SubMatches.Item(0)      '* Extract first capturing group
     Exit For                                       '* First match will do hence end
   Next
 End If

'== FOLDERS ===
US_USR           = UNICON_PATH &  "usr"            '* Apache MySQl PHP root folder
US_WWW           = UNICON_PATH &  "www"            '* Web root folder
US_CGI_BIN       = UNICON_PATH &  "cgi-bin"        '* Top folder CGI
US_CGI_BIN_UNIX  = UNICON_PATH &  "cgi-bin-unix"   '* Top folder CGI UNIX
US_DOCS          = UNICON_PATH &  "docs"           '* Top docs folder
US_HOME          = UNICON_PATH &  "home"           '* Top home folder
US_HOME_ACCESS   = UNICON_PATH &  "home\us_access" '* Home access folder

US_HTPASSWD      = UNICON_PATH &  "htpasswd"       '* Top htpasswd folder
US_MSMTP         = UNICON_PATH &  "msmtp"          '* Top msmpt folder
US_PLUGINS       = UNICON_PATH &  "plugins"        '* Top plugins folder
US_SSL           = UNICON_PATH &  "ssl"            '* Root folder
US_TMP           = UNICON_PATH &  "tmp"            '* Top temp folder
US_VHOSTS        = UNICON_PATH &  "vhosts"         '* Top level folder for all Apache vhosts
US_OPENSSL       = UNICON_PATH &  "openssl"        '* Top openssl folder
US_DB_BAK_MAIN   = UNICON_PATH &  "db_backup"      '* Top Main MySQL db backup folder
US_UNI_CON       = UNICON_PATH &  "uni_con"        '* Top Uni Control folder

US_APACHE        = US_USR  & "\local\apache2"              '* Apache folder
US_APACHE_BIN    = US_USR  & "\local\apache2\bin"          '* Apache binary folder 
US_APACHE_CERTS  = US_USR  & "\local\apache2\server_certs" '* Apache certificates folder 

US_MYSQL         = US_USR & "\local\mysql"            '* MYSQL folder
US_MYSQL_DATA    = US_USR & "\local\mysql\data"       '* MYSQL data folder
US_MYSQL_BIN     = US_USR & "\local\mysql\bin"        '* MySQL Binary folder

US_UNI_CON_LANG  = US_UNI_CON &  "\lang"              '* Language folder

US_PHP           = US_USR & "\local\php"              '* PHP Folder
US_PHP_EXTEN     = US_USR & "\local\php\extensions"   '* PHP extensions

'== FILES ===

'-- Apache
USF_CERT       =  US_APACHE_CERTS & "\server.crt"              '* Server certificate
USF_CERT_CA    =  US_APACHE_CERTS & "\ca.crt"                  '* CA Server

USF_APACHE_ERROR_LOG  =  US_APACHE & "\logs\error.log"          '*  Apache error log
USF_APACHE_ACCESS_LOG =  US_APACHE & "\logs\access.log"         '*  Apache access log

USF_APACHE_SSL_ERROR_LOG  = US_APACHE & "\logs\error_ssl.log"   '* Apache SSL error log
USF_APACHE_SSL_ACCESS_LOG = US_APACHE & "\logs\access_ssl.log"  '* Apache SSL access log

USF_APACHE_PID     = US_APACHE & "\logs\httpd.pid"              '* Apache PID
USF_APACHE_CNF     = US_APACHE & "\conf\httpd.conf"             '* Apache configuration

USF_APACHE_SSL_CNF        = US_APACHE & "\conf\extra\httpd-ssl.conf"    '* Apache httpd-ssl.configuration
USF_APACHE_VHOST_CNF      = US_APACHE & "\conf\extra\httpd-vhosts.conf" '* Apache VHOST configuration
USF_APACHE_DAV_CNF        = US_APACHE & "\conf\extra\httpd-dav.conf"    '* Apache WebDav configuration

USF_APACHE_DEFAULT_CNF    = US_APACHE & "\conf\extra\httpd-default.conf"            '* Apache default configuration
USF_APACHE_MANUAL_CNF     = US_APACHE & "\conf\extra\httpd-manual.conf"             '* Apache documentation configuration
USF_APACHE_USERDIR_CNF    = US_APACHE & "\conf\extra\httpd-userdir.conf"            '* Apache user dir configuration
USF_APACHE_AUTOINDEX_CNF  = US_APACHE & "\conf\extra\httpd-autoindex.conf"          '* Apache auto index configuration
USF_APACHE_ERRORDOC_CNF   = US_APACHE & "\conf\extra\httpd-multilang-errordoc.conf" '* Apache error docs configuration

'-- MySQL
USF_MYSQL_INI       = US_MYSQL & "\my.ini"                      '* MySQL configuration
USF_SMALL_MY_INI    = US_MYSQL & "\small_my.ini"                '* MySQL configuration
USF_MEDIUM_INI      = US_MYSQL & "\medium_my.ini"               '* MySQL configuration

USF_MYSQL_ERROR_LOG = US_MYSQL & "\data\mysql.err"              '* MySQ Eerror log
USF_MYSQL_PID       = US_MYSQL & "\data\mysql.pid"              '* MySQL PID

USF_MYSQL_BATCH_IN      = US_TMP & "\mysql_batch_in.txt"                    '* Temp file contains sql commands 
USF_MYSQL_BATCH_RESULT  = US_TMP & "\mysql_batch_results.txt"               '* Temp file contains batch results
USF_MYSQL_PASSWORD      = UNICON_PATH & "uni_con\includes\mysql_password"   '* MySQL password file

'-- PHP
USF_PHP_INI         = US_PHP & "\php.ini"                 '* PHP configuration
USF_PHP_INI_PROD    = US_PHP & "\php_production.ini"      '* PHP configuration production
USF_PHP_INI_DEV     = US_PHP & "\php_development.ini"     '* PHP configuration development
USF_PHP_INI_CLI     = US_PHP & "\php-cli.ini"             '* PHP command line config
USF_PHP_EXE         = US_PHP & "\php.exe"                 '* PHP executable

'-- PHPMYADMIN
USF_PHPMYADMIN_CNF       =  US_HOME & "\us_phpmyadmin\config.inc.php"  ' phpMyAdmin configuration
USF_PHPMYADMIN_HTACCESS  =  US_HOME & "\us_phpmyadmin\.htaccess"       ' phpMyAdmin htaccess file

'-- Pear
USF_PEAR_CONF       = US_HOME & "\us_pear\pear.conf"      '* Pear configuration
USF_PEAR_BAT        = US_HOME & "\us_pear\bin\pear.bat"     '* Pear utility
USF_PEARDEV_BAT     = US_HOME & "\us_pear\bin\peardev.bat"  '* Pear utility
USF_PECL_BAT        = US_HOME & "\us_pear\bin\pecl.bat"     '* Pear utility

'-- PERL
USF_PERL_EXE        = US_USR & "\bin\perl.exe"                  '* Check perl installed 

'-- Tracker
USF_TRACKER    =  UNICON_PATH & UNICON_FOLDER_NAME & "\config_tracker.ini" '* Tracker file

'-- msmtp configuration
USF_MSMTP_EXE       = US_MSMTP & "\msmtp.exe"                   '* MSMPT executable  
USF_MSMTP_INI       = US_MSMTP & "\msmtprc.ini"                 '* MSMPT config file  
USF_MSMTP_LOG       = US_MSMTP & "\msmtp.log"                   '* MSMPT log file 
USF_MSMTP_BAT       = US_MSMTP & "\Send_test_email.bat"         '* MSMPT batch file 

'-- CRON
USF_CRON_INI           = UNICON_PATH & "uni_con\cron\cron.ini"       '* CRON Config
USF_CRON_LOG           = UNICON_PATH & "uni_con\cron\cron.log"       '* CRON log
USF_CRON_SCRIPT        = UNICON_PATH & "uni_con\cron\run_cron.vbs"   '* CRON start script 
USF_CRON_SCRIPT_STOP   = UNICON_PATH & "uni_con\cron\stop_cron.vbs"  '* CRON stop script 

USF_CRON_SERVICE_INI             = UNICON_PATH & "uni_con\cron_service\srvstart.ini"   '* CRON service config
USF_CRON_SERVICE_Z_INSTALL       = UNICON_PATH & "uni_con\cron_service\z_install.bat"  '* CRON service install bat

USF_CRON_SERVICE_START_AUTOMATIC  = UNICON_PATH & "uni_con\cron_service\start_automatic.vbs"     '* Start service change state automatic
USF_CRON_SERVICE_Z_START          = UNICON_PATH & "uni_con\cron_service\z_service_start.bat"     '* Start Service
USF_CRON_SERVICE_Z_STOP           = UNICON_PATH & "uni_con\cron_service\z_service_stop.bat"      '* Stop Service
USF_CRON_SERVICE_Z_UNINSTALL      = UNICON_PATH & "uni_con\cron_service\z_uninstall_service.bat" '* Uninstall service

USF_CRON_SERVICE_INSTALL_START    = UNICON_PATH & "uni_con\cron_service\install_start_service.bat"  '* Install start Cron service
USF_CRON_SERVICE_STOP_UNINSTALL   = UNICON_PATH & "uni_con\cron_service\stop_uninstall_service.bat" '* Stop Uninstall Cron service


'-- DtDNS
USF_DTDNS_INI       = UNICON_PATH & "uni_con\dtdns_updater\dtdns.ini"          ' DTDNS Config
USF_DTDNS_LOG       = UNICON_PATH & "uni_con\dtdns_updater\dtdns.log"          ' DTDNS log
USF_DTDNS_SCRIPT    = UNICON_PATH & "uni_con\dtdns_updater\dtdns_updater.php"  ' DTDNS script

'-- DB BACKUP
USF_DBBACKUP_INI       = UNICON_PATH & "uni_con\db_backup\db_backup.ini"       ' DBBACKUP Config
USF_DBBACKUP_LOG       = UNICON_PATH & "uni_con\db_backup\db_backup.log"       ' DBBACKUP log
USF_DBBACKUP_LIST      = UNICON_PATH & "uni_con\db_backup\dbs_to_backup.txt"   ' DBBACKUP list of dbs to backup
USF_DBBACKUP_SCRIPT    = UNICON_PATH & "uni_con\db_backup\db_backup.vbs"       ' DBBACKUP script

'-- OPENSSL

'-- PASSWORDS htaccess FILES

USF_WWW_PASSWORD         =  US_HTPASSWD & "\www\.htpasswd"                    ' WWW Root folder password file
USF_SSL_PASSWORD         =  US_HTPASSWD & "\ssl\.htpasswd"                    ' SSL Root folder password file

USF_WWW_HTACCESS         =  UNICON_PATH & "www\.htaccess"              ' WWW Root htaccess file
USF_SSL_HTACCESS         =  UNICON_PATH & "ssl\.htaccess"              ' SSL Root htaccess file


'-- Server status
USF_SS_GET_IP_PHPS  = UNICON_PATH & "uni_con\php_scripts\get_server_ip_address.php"   ' PHP script gets IP save to file us_ss_get_ip.txt
USF_SS_GET_IP_TXT   = US_TMP & "\us_ss_get_ip.txt"                                    ' Contains IP address or unable to


USF_SS_ACCESS_PHPS  = UNICON_PATH & "uni_con\php_scripts\server_status_access.php"    ' PHP script checks accessibility using above IP
USF_SS_ACCESS_TXT   = US_TMP & "\us_ss_access.txt"                                    ' Accessibility results contained in this file

USF_SS_VERSION_PHPS = UNICON_PATH & "uni_con\php_scripts\get_server_version.php"      ' PHP script get US version from main-server
USF_SS_VERSION_TXT  = US_TMP & "\us_ss_version.txt"                                   ' Version results contained in this file

USF_SS_PAGE_PHPS = UNICON_PATH & "uni_con\php_scripts\get_server_page.php"            ' PHP script get server page
USF_SS_PAGE_TXT  = US_TMP & "\us_ss_page.txt"                                         ' Page text contained in this file

'-- Other
USF_HTA_DELAY       = US_TMP & "\us_hta_delay.vbs"                 'VBScript to create delay for HTA

'-- Constants
US_DB_HOST          = "127.0.0.1"                                  'Was localhost 

USF_FIREFOX_EXE        = US_PLUGINS & "\FirefoxPortable\FirefoxPortable.exe"
USF_OPERA_EXE          = US_PLUGINS & "\OperaPortable\OperaPortable.exe"
USF_GOOGLECHROME_EXE   = US_PLUGINS & "\GoogleChromePortable\GoogleChromePortable.exe"
