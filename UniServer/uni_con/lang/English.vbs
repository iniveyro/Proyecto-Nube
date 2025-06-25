'******************************************************************************
' Language file - Coral Series
'******************************************************************************
'- Entries in this language file have the following format:
'- Const name  =  "Text to be displayed" 
'- Translate and change only the "Text to be displayed" part
'- For example this line:
'- Const lang_about                     = "About" 
'- Chinese translation:
'- Const lang_about                     = "關於" 
'------------------------------------------------------------------------------

'******************************************************************************
' User Configuration
'******************************************************************************

Const lang_view_www   = "View www"   'User button text
Const lang_view_ssl   = "View ssl"   'User button text

'-------------------------------------------------- End User Configuration ---

'******************************************************************************
' Messages common functions
'******************************************************************************

Const lang_cf_title1            = "MySQL Create Database"
Const lang_cf_str1              = "There is already a database with that name"

Const lang_cf_title2            = "Remove MySQL Database"
Const lang_cf_str2              = "There is no database with that name"

Const lang_cf_title3            = "Requested file"
Const lang_cf_str3              = "Not Found"


'******************************************************************************
' Initial Start Up
'******************************************************************************

'*** Space Check ==============================================================

Const lang_space_popup_title1         = "Space detected!"
lang_space_popup_str1                 = _
"A space was detected in folder name leading to folder UniServer"           & vbCRLF & vbCRLF &  _
"Unfortunately spaces are not allowed in path names"                        & vbCRLF & _
"Please correct and try again."                                             & vbCRLF & vbCRLF &  _
"Reasons for this restriction:"                                             & vbCRLF & _
"Ability to run legacy applications."                                       & vbCRLF & _
"This also avoids restricted write permissions in C:\Program Files."        & vbCRLF & vbCRLF &  _
"Note:"                                                                     & vbCRLF & _
"If you wish to run The Uniform Server containing spaces in the path"       & vbCRLF & _
"use a virtual drive as explained in document run_on_drive_w.txt"           & vbCRLF & _
"located in folder UniServer\alternative_control. Suitable only"            & vbCRLF & _
"when servers are run as a program"

'*** Pre Check ================================================================

Const lang_pre_popup_title1         = "Warning Ports in use!"
Const lang_pre_in_use               = "The following ports are in use:"
Const lang_pre_port_number          = "Port number"
Const lang_pre_pid                  = "PID"
Const lang_pre_process_name         = "Process name"
Const lang_pre_path_to_process      = "Path to process"
lang_pre_popup_str1                 = _
"To start The Uniform Server, the above ports must be free."  & vbCRLF &  _
"Either stop & uninstall the conflicting application"         & vbCRLF &  _
"or move The Uniform Server to different ports."

Const lang_pre_popup_title2         = "Change MySQL Password!"
lang_pre_popup_str2                 = _
"For a development server there is no real need to "     & vbCRLF & _
"change the MySQL password although it is good"          & vbCRLF & _
"practice to do so."                                     & vbCRLF & vbCRLF &  _
"If you are going to use your servers for production"    & vbCRLF & _ 
"or put them on the Internet or an intranet, it is"      & vbCRLF & _ 
"imperative to set a new MySQL password. The default"    & vbCRLF & _
"password is published, so your server is already"       & vbCRLF & _
"compromised."                                           & vbCRLF & vbCRLF &  _
"Click YES to change password (opens a new window)"      & vbCRLF &  _
"Or NO to skip password setup."

Const lang_pre_popup_title4         = "Start-up options skipped!"
lang_pre_popup_str4                 = _
"You skipped one or more start-up configuration options."      & vbCRLF &  _ 
"The next time you start Coral you will again be prompted."    & vbCRLF & vbCRLF &  _
"You can disable prompting by setting nag_user = false"        & vbCRLF &  _
"in config_tracker.ini"                                        & vbCRLF & vbCRLF &  _
"Alternatively:"                                               & vbCRLF &  _
"Click YES to automatically disable prompting"                 & vbCRLF &  _
"Click NO to be prompted next time you start Server"           

'*** ZoneAlarm ================================================================

Const lang_za_popup_title1         = "Warning ZoneAlarm detected!"
lang_za_popup_str1                 = _
"The ZoneAlarm application may conflict with the Apache"       & vbCRLF &  _ 
"producing a blue screen of death when Apache is closed."      & vbCRLF & vbCRLF &  _
"Recommendation EXIT ZoneAlarm before closing Apache"         & vbCRLF &  _
"or preferably upgrade ZoneAlarm."

'******************************************************************************
' Main menus - Program and Service
'******************************************************************************

'*** Run As Program ===========================================================

Const lang_legend_start_stop_servers = "Start/Stop servers" 
Const lang_start_apache              = "Start Apache"
Const lang_stop_apache               = "Stop Apache"
Const lang_start_mysql               = "Start MySQL" 
Const lang_stop_mysql                = "Stop MySQL" 
Const lang_start_both                = "Start Both"
Const lang_stop_both                 = "Stop Both"

Const lang_program_title1            = "Apache Start Error"
Const lang_program_str1              = "Unable to start Apache Server"

Const lang_program_title2            = "Apache Stop Error"
Const lang_program_str2              = "Unable to stop Apache Server"

Const lang_program_title3            = "MySQL Start Error"
Const lang_program_str3              = "Unable to start MySQL Server"

Const lang_program_title4            = "MySQL Stop Error"
Const lang_program_str4              = "Unable to stop MySQL Server"

'*** Run As Service ===========================================================

Const lang_legend_start_stop_services  = "Start/Stop services"

Const lang_install_apache_service      = "Install Apache Service" 
Const lang_uninstall_apache_service    = "Uninstall Apache Service"
Const lang_start_apache_service        = "Start Apache Service"
Const lang_stop_apache_service         = "Stop Apache Service" 

Const lang_install_mysql_service       = "Install MySQL Service"
Const lang_uninstall_mysql_service     = "Uninstall MySQL Service"
Const lang_start_mysql_service         = "Start MSQL Service"
Const lang_stop_mysql_service          = "Stop MySQL Service"

Const lang_start_both_services       = "Install/Run Apache and MySQL Services" 
Const lang_stop_both_services        = "Stop/Uninstall Apache and MySQL Services" 

'*** Common Program and Service ===============================================

Const lang_server_utilities          = "Server Utilities" 
Const lang_mysql_console             = "MySQL Console"
Const lang_server_status             = "Server Status"
Const lang_server_configuration      = "Server Configuration"
Const lang_multi_servers             = "Multi Servers" 
Const lang_about                     = "About"

Const lang_about_popup_title1       = "About"
lang_about_popup_str1               = _
"Server control uses Windows HTA and scripting language"      & vbCRLF &  _
"VBScript. This combination allows The Uniform Server’s"     & vbCRLF &  _
"control and menus to be easily modified without the"        & vbCRLF &  _
"need for compiling. In addition, different languages"       & vbCRLF &  _
"are more easily supported."


Const lang_view_php_info             = "View phpInfo"
Const lang_phpmyadmin                = "phpMyAdmin"
Const lang_apache_syntax_check       = "Apache Syntax Check"         '- Button and message box title
Const lang_server_documentation      = "Server Documentation" 
Const lang_select_language           = "             Select Language" 
Const lang_select_language_spacer    = "--------------------------------------"

Const lang_documentation_popup_title       = "Documentation"
lang_documentation_popup_str               = _
"Sorry this documentation page"             & vbCRLF &  _
"is unavailable in your language."


'*** Server Status ============================================================

Const lang_server_status_page_title  = "Server Status"
Const lang_ss_general                = "General Status" 
Const lang_general_1a                = "Your Internet IP Address"
Const lang_general_2a                = "Accessible from Internet" 
Const lang_general_3a                = "Cron run status"
Const lang_general_4a                = "PHP INI: php.ini file"
Const lang_general_5a                = "Cron service name"

Const lang_general_6a                = "Newer UniServer Version"
Const lang_general_6b                = "Unavailable"
Const lang_general_6c                = "Current"

Const lang_ss_apache_server          = "Apache Server"
Const lang_apache_1a                 = "Apache port"
Const lang_apache_2a                 = "Apache SSL port" 
Const lang_apache_3a                 = "Apache executable name"
Const lang_apache_4a                 = "Apache service name" 
Const lang_apache_5a                 = "Apache SSL server" 
Const lang_apache_6a                 = "Apache run status" 
Const lang_apache_7a                 = "Apache install status"

Const lang_ss_mysql_server           = "MySQL Server"
Const lang_mysql_1a                  = "MySQL port"
Const lang_mysql_2a                  = "MySQL executable name"
Const lang_mysql_3a                  = "MySQL service name"
Const lang_mysql_4a                  = "MySQL run status"
Const lang_mysql_5a                  = "MySQL install status"

Const lang_ss_port_status            = "Port Status"
Const lang_port_1a                   = "Apache port" 
Const lang_port_2a                   = "Apache SSL port" 
Const lang_port_3a                   = "MySQL port" 

Const lang_ss_get_ip                   = "Get IP"
Const lang_ss_run_access_check         = "Run check"
Const lang_ss_yes                      = "Yes" 
Const lang_ss_no                       = "No"
Const lang_ss_running                  = "Running"
Const lang_ss_not_running              = "Not running"
Const lang_ss_development              = "Development" 
Const lang_ss_production               = "Production" 
Const lang_ss_enabled                  = "Enabled"
Const lang_ss_disabled                 = "Disabled" 
Const lang_ss_free_to_install          = "Free to install" 
Const lang_ss_installed_as_service     = "Installed as a service"
Const lang_ss_installed_as_program     = "Installed as a program"
Const lang_ss_is_free_to_use           = "Is free to use"
Const lang_ss_in_use_by_this_server    = "In use by this server" 
Const lang_ss_in_use_by_another_server = "In use by another server"

'*** Move Servers Multi-servers ===============================================

Const lang_multi_server_page_title     = "Move Servers Multi-servers"
Const lang_multi_old_heading           = "-- Old --"
Const lang_multi_new_heading           = "-- New --"
Const lang_multi_reload                = "Reload"
Const lang_multi_increment             = "Increment"
Const lang_multi_run                   = "RUN Move Servers" 
Const lang_multi_invalid               = "Invalid input"
Const lang_multi_please_correct        = "Please correct"

'##############################################################################
' Server configuration - Main Menu 
'##############################################################################

'******************************************************************************
' General - Server configuration
'******************************************************************************

lang_m1_general          = " General"
lang_m2_general          = " Change ports. Apache and MySQL"
lang_m3_general          = " Clear Server Log Files"

lang_m4_general_www         = " Root www - Change passwords and access"
lang_m5_general_ssl         = " Root ssl - Change passwords and access"
lang_m6_general_phpmyadmin  = " Root phpMyAdmin - Change access type"

lang_m20_general_spacer  = "--------------------------------------------------"

'*** Sub-General Change ports, Apache and MySQL ===============================

lang_port_change_reload         = "Reload"
lang_port_change_change         = "Change"
lang_port_change_change_all     = "Change All"
lang_port_change_change_title   = "Port/s Changed"
lang_port_change_changed        = "Port or Ports have been changed"

'*** Sub-General Clear Server Log Files ======================================
Const lang_logs_title             = "Clear Server Logs"
Const lang_logs_frame             = "Select Log"

Const lang_log_apache_error       = "Apache Error Log"
Const lang_log_apache_access      = "Apache Access Log"
Const lang_log_ssl_apache_error   = "Apache SSL Error Log"
Const lang_log_ssl_apache_access  = "Apache SSL Access Log"

Const lang_log_mysql_error        = "MySQL Error Log"
Const lang_log_cron               = "Cron Log"
Const lang_log_DTDNS              = "DTDNS Log"
Const lang_log_dbbackup           = "Database Backup Log"

Const lang_log_select_all_bt      = "Select all"
Const lang_log_clear_bt           = "Clear Selected"

Const lang_log_popup_title1       = "Apache running"
lang_log_popup_str1               = _
"Apache server is running. Log files cannot be cleared."      & vbCRLF  & vbCRLF &  _  
"Please stop Apache and try again."

Const lang_log_popup_title2       = "MySQL running"
lang_log_popup_str2               = _
"MySQL server is running. Log file cannot be cleared."      & vbCRLF  & vbCRLF &  _  
"Please stop MySQL and try again."

Const lang_log_popup_title3       = "Clear Content of log files"
lang_log_popup_str3               = _
"Log files can become very large use this"             & vbCRLF &  _ 
"menu option to delete the content of a"               & vbCRLF &  _ 
"selected log file."                                   & vbCRLF & vbCRLF &  _  
"Select a log file and click ""Clear Button"""         & vbCRLF & vbCRLF &  _  
"Alternatively click ""Select all"" button and"        & vbCRLF &  _ 
"then click ""Clear Button"""                          & vbCRLF & vbCRLF &  _  
"Note 1:"                                              & vbCRLF &  _ 
"Files are not deleted only content cleared."          & vbCRLF & vbCRLF &  _  
"Note 2:"                                              & vbCRLF &  _ 
"Stop servers to clear Apache and MySQL"               & vbCRLF &  _ 
"log files ." 


'*** Sub-General Root www - Change passwords and access ========================
Const lang_passwords_page_title_www          = "Root www - Change passwords and access"
Const lang_passwords_www_legend              = "ROOT WWW Folder UniServer\www "

Const lang_passwords_name_www                = "Name:"
Const lang_passwords_password_www            = "Password:"
Const lang_passwords_edit_www_bt             = "Edit"
Const lang_passwords_change_password_www_bt  = "Change name password"
Const lang_passwords_reload_www              = "Reload values from file"

Const lang_www_htaccess1_title               = "Blank Name or Password"
Const lang_www_htaccess1_str                 = "Both a name and password required"

Const lang_www_htaccess2_title               = "Name and Password"
Const lang_www_htaccess2_str                 = "Updated"

Const lang_passwords_state_www_legend        = "Change State www "

Const lang_www_password                      = "Password:"
Const lang_www_password_disabled             = "Password Disabled"
Const lang_www_password_enabled              = "Password Enabled"
Const lang_www_access                        = "Access:"
Const lang_www_access_local                  = "Local Access"
Const lang_www_access_local_intranet         = "Local and Intranet Access"
Const lang_www_access_internet               = "Local, Intranet and Internet Access"

Const lang_passwords_test_www_bt             = "Test"

Const lang_www_passwords_help_title          = "Set www access. Optionally Password protect"
lang_www_passwords_help_str                  = _
"Overview:"                                                             & vbCRLF & _
"This page allows you to put your server on-line or restrict access"    & vbCRLF & _
"to local host (default) or to localhost and Intranet. "                & vbCRLF & _
"Optionally, you can set a name and password to access folder www"      & vbCRLF & vbCRLF & _
"1] Button ""Edit"" allows you to directly edit a configuration file."  & vbCRLF & vbCRLF & _
"2] After entering a name and password, click ""Change name"            & vbCRLF & _
"   password"" button. This updates the corresponding password file."   & vbCRLF & vbCRLF & _
"3] Enable and disable password protection:"                            & vbCRLF & _
"   Use the radio buttons to enable or disable authentication."         & vbCRLF & _
"   Password Disabled: Authentication is not required. "                & vbCRLF & _
"   Password Enabled: Name and password are required to access server." & vbCRLF & vbCRLF & _
"4] Local or Local and Intranet or on-line access:"                     & vbCRLF & _
"   Use the radio buttons to select the required access mode "          & vbCRLF & _
"   Local Access: Restricts server access to local user only. "         & vbCRLF & _
"   Local and Intranet Access: Allow users on your Intranet access"     & vbCRLF & _
"   Local, Intranet and Internet Access: Puts your server On-Line "         

'*** Sub-General Root ssl - Change passwords and access ========================
Const lang_passwords_page_title_ssl          = "Root ssl - Change passwords and access"
Const lang_passwords_ssl_legend              = "ROOT SSL Folder UniServer\ssl "

Const lang_passwords_name_ssl                = "Name:"
Const lang_passwords_password_ssl            = "Password:"
Const lang_passwords_edit_ssl_bt             = "Edit"
Const lang_passwords_change_password_ssl_bt  = "Change name password"
Const lang_passwords_reload_ssl              = "Reload values from file"

Const lang_ssl_htaccess1_title               = "Blank Name or Password"
Const lang_ssl_htaccess1_str                 = "Both a name and password required"

Const lang_ssl_htaccess2_title               = "Name and Password"
Const lang_ssl_htaccess2_str                 = "Updated"

Const lang_passwords_state_ssl_legend    = "Change State ssl "

Const lang_ssl_password                      = "Password:"
Const lang_ssl_password_disabled             = "Password Disabled"
Const lang_ssl_password_enabled              = "Password Enabled"
Const lang_ssl_access                        = "Access:"
Const lang_ssl_access_local                  = "Local Access"
Const lang_ssl_access_local_intranet         = "Local and Intranet Access"
Const lang_ssl_access_internet               = "Local, Intranet and Internet Access"

Const lang_passwords_test_ssl_bt             = "Test"

Const lang_ssl_passwords_help_title          = "Set ssl access. Optionally Password protect"
lang_ssl_passwords_help_str                  = _
"Overview:"                                                               & vbCRLF & _
"This page allows you to put your ssl server on-line or restrict access"  & vbCRLF & _
"to local host (default) or to localhost and Intranet. "                  & vbCRLF & _
"Optionally, you can set a name and password to access folder ssl"        & vbCRLF & vbCRLF & _
"1] Button ""Edit"" allows you to directly edit a configuration file."    & vbCRLF & vbCRLF & _
"2] After entering a name and password, click ""Change name"              & vbCRLF & _
"   password"" button. This updates the corresponding password file."     & vbCRLF & vbCRLF & _
"3] Enable and disable password protection:"                              & vbCRLF & _
"   Use the radio buttons to enable or disable authentication."           & vbCRLF & _
"   Password Disabled: Authentication is not required. "                  & vbCRLF & _
"   Password Enabled: Name and password are required to access server."   & vbCRLF & vbCRLF & _
"4] Local or Local and Intranet or on-line access:"                       & vbCRLF & _
"   Use the radio buttons to select the required access mode "            & vbCRLF & _
"   Local Access: Restricts server access to local user only. "           & vbCRLF & _
"   Local and Intranet Access: Allow users on your Intranet access"       & vbCRLF & _
"   Local, Intranet and Internet Access: Puts your server On-Line "        

'*** Sub-General Root phpmyadmin - Change passwords and access ========================
Const lang_passwords_page_title_phpmyadmin          = "phpMyAdmin - Change Access"
Const lang_passwords_phpmyadmin_legend              = "phpMyAdmin Access"

Const lang_phpmyadmin_access_local                  = "Local"
Const lang_phpmyadmin_access_local_intranet         = "Intranet + passwords"
Const lang_phpmyadmin_access_internet               = "Internet + passwords + ssl"

Const lang_passwords_phpmyadmin_legend2             = "Option Edit Config files"
Const lang_passwords_edit1_phpmyadmin_bt            = "View or Edit .htaccess"
Const lang_passwords_edit2_phpmyadmin_bt            = "View or Edit config.inc.php"
Const lang_passwords_test_phpmyadmin_bt             = "Test - View in browser"

Const lang_phpmyadmin_passwords_title1              = "SSL Not enabled"
lang_phpmyadmin_passwords_str1                      = _
"This option is unavailable!"                                                  & vbCRLF & vbCRLF & _
"Allowing Internet access to phpMyAdmin requires SSL to be enabled."           & vbCRLF & _
"SSL encrypts all transactions across the Internet."                           & vbCRLF & vbCRLF & _
"No action has been performed other than to return to previous access state."  & vbCRLF & _
"Rerun this menu option after enabling SSL."                                   & vbCRLF & vbCRLF & _
"Note:"                                                                        & vbCRLF & _
"SSL is automatically enabled when creating a server certificate."



Const lang_phpmyadmin_passwords_help_title          = "Set phpmyadmin access."
lang_phpmyadmin_passwords_help_str                  = _
"Overview:"                                                                      & vbCRLF & _
"This menu allows you to change phpMyAdmin access and to view or manually edit"  & vbCRLF & _
"associated configuration files."                                                & vbCRLF & vbCRLF & _
"1] Local"                                                                       & vbCRLF & _
"Local access is the default. This restricts phpMyAdmin access to localhost"     & vbCRLF & _
"meaning it is accessible only from the PC it is running on. In addition to"     & vbCRLF & _
"access the MySQL server no password is required it automatically uses root."    & vbCRLF & vbCRLF & _
"2] Intranet + passwords"                                                        & vbCRLF & _
"This option allows Intranet users access to the MySQL server to gain access"    & vbCRLF & _
"all users are required to enter a name and password. "                          & vbCRLF & vbCRLF & _
"3] Internet + passwords + ssl"                                                  & vbCRLF & _
"This option allows Internet users access to the MySQL server to gain access"    & vbCRLF & _
"all users are required to enter a name and password. All transactions occur"    & vbCRLF & _
"over a secure encrypted connection."                                            & vbCRLF & _
"Note: This option is disabled until a server certificate has been generated."

'******************************************************************************
' Apache - Server configuration
'******************************************************************************

lang_m1_apache   = " Apache"
lang_m2_apache   = " Edit Basic Configuration"
lang_m3_apache   = " Edit httpd.conf"
lang_m4_apache   = " Edit httpd-ssl.conf"
lang_m5_apache   = " View Error log file error.log"
lang_m6_apache   = " View Access log file access.log"
lang_m7_apache   = " View SSL Error log file error.log"
lang_m8_apache   = " View SSL Access log file access.log"
lang_m9_apache   = " Generate Certificate"
lang_m10_apache  = " Apache Vhosts"
lang_m12_apache  = " Apache server-status"
lang_m13_apache  = " Apache server-info"
lang_m14_apache  = " Apache Modules Enable/Disable"
lang_m20_apache_spacer  = "----------------------------------------"

'*** Sub-Apache Edit Basic Configuration ======================================

Const lang_ab_page_title              = "Basic Apache Configuration"
Const lang_ab_legend                  = "Commonly changed parameters"
Const lang_ab_server_name             = "Server name" 
Const lang_ab_admin_email             = "Server Admin Email" 
Const lang_ab_directory_indexs        = "Directory Index Files" 
Const lang_ab_server_side_includes    = "Server Side Includes" 
Const lang_ab_server_signature        = "Server Signature" 
Const lang_ab_listen                  = "Listen port" 
Const lang_ab_update_configuration_bt = "Update Configuration" 
Const lang_ab_help_bt                 = "Help" 

Const lang_ab_help_title              = "Basic Apache Configuration"
lang_ab_help_str                      = _
"This form allows you to change commonly configured"     & vbCRLF & _
"Apache options."                                        & vbCRLF & vbCRLF & _
"To edit Apache's entire configuration, select edit"     & vbCRLF & _
"httpd.conf from the Apache drop-down menu."  

'*** Sub-Apache Generate Certificate ==========================================

Const lang_openssl_page_title          = "Server Certificate and Key generator"
Const lang_openssl_cn                  = "Hostname or your full name"
Const lang_openssl_o                   = "Organisation/Company" 
Const lang_openssl_ou                  = "Department"
Const lang_openssl_e                   = "Email"
Const lang_openssl_l                   = "City/Local"
Const lang_openssl_st                  = "State"
Const lang_openssl_c                   = "Country"
Const lang_openssl_rsa_bits            = "RSA bits"
Const lang_openssl_bt_reload           = "Reload Defaults"
Const lang_openssl_bt_generate         = "Run Generate"

lang_openssl_cn_help_title             = "Help - Common name CN"
lang_openssl_cn_help =  _
"(CN) Common Name, usually the web server hostname or your name."    & vbCRLF &  _
" To secure https://www.fred.com, your common name is www.fred.com"  & vbCRLF &  _ 
" or *.fred.com for a wildcard certificate."

lang_openssl_o_help_title              = "Help - Organisation O"
lang_openssl_o_help =  "(O) Organisation for example, My Corporation"

lang_openssl_ou_help_title             = "Help - Organisation Unit OU"
lang_openssl_ou_help =  "(OU) Your division or department. For example, PHP Dept."

lang_openssl_email_help_title          = "Help - Email E"
lang_openssl_email_help =  _
"(E) Usually specified for a email user certificate"    & vbCRLF &  _
" for Activesync or SMIM."

lang_openssl_l_help_title             = "Help - City/Local L"
lang_openssl_l_help =  "(L) City/Local For example, London."

lang_openssl_st_help_title            = "Help - State ST"
lang_openssl_st_help =  "(ST) For example, Cambridgeshire."

lang_openssl_c_help_title             = "Help - Country C"
lang_openssl_c_help = _
"(C) Country code two alphabetic characters."    & vbCRLF &  _
"For example 'United Kingdom' gives 'UK' "

lang_openssl_rsa_help_title           = "Help - RSA Bit length"
lang_openssl_rsa_help = _
"Certification authorities are no longer issuing"          & vbCRLF &  _
"certificates that are less than 2048 bit key lengths."    & vbCRLF &  _
"Recommended to leave this set to default of 2048 bits." 

lang_openssl_ca_detected_title             = "CA Found"
lang_openssl_ca_detected = _
"It looks like you are using your own CA."                        & vbCRLF & vbCRLF & _
"To avoid overwriting your current server certificate and key"    & vbCRLF &  _
"this script has terminated."                                     & vbCRLF & vbCRLF & _
"To create a new server certificate and key, use the CA script." 

lang_openssl_cert_detected_title             = "Server Certificate Found"
lang_openssl_cert_detected = _
"A server certificate was found."                                       & vbCRLF & vbCRLF & _
"Would you like to overwrite the existing server certificate and key"   & vbCRLF & vbCRLF & _
"                                          Overwrite?"

lang_openssl_generated_title             = "Server Certificate Generated"
lang_openssl_generated = _
"Server certificate and key generated."                  & vbCRLF & vbCRLF & _
"These have been installed and"                          & vbCRLF &  _
"SSL has been enabled in Apache's configuration file."   & vbCRLF & vbCRLF & _
"Restart servers for changes to take place." & vbCRLF

'*** Sub-Apache APACHE VHOSTS =================================================

Const lang_av_apache_virtual_hosts_title  = "Apache Virtual Hosts"
Const lang_av_virtual_host_setup_frame    = "Virtual Host Setup"
Const lang_av_list_of_hosts_frame         = "List of Hosts"

Const lang_av_port_td                     = "Port"
Const lang_av_server_admin_td             = "Server Admin"
Const lang_av_document_root_td            = "Document Root"
Const lang_av_server_name_td              = "Server Name"
Const lang_av_server_alias_td             = "Server Alias"
Const lang_av_error_log_td                = "Error Log"
Const lang_av_custom_log_td               = "Custom Log"
Const lang_av_additions_td                = "Additional Directives"
Const lang_av_vhost_help_td               = "Help Vhost"

Const lang_av_delete_bt                   = "Delete"
Const lang_av_update_vhost_bt             = "Update Vhost"
Const lang_av_create_vhost_bt             = "Create Vhost"
Const lang_av_cancel_bt                   = "Cancel"

Const lang_av_select_folder_bt            = "Select Folder"
Const lang_av_confirm_name_bt             = "Confirm"

Const lang_av_delete_vhost_bt             = "Delete Vhost"
Const lang_av_view_in_browser_bt          = "View In Browser"
Const lang_av_cancel2_bt                  = "Cancel"

'--Port
Const lang_av_popup_title1                = "VHost Port"
lang_av_popup_str1                        = _
"Default Vhost Port uses main server listening port."  & vbCRLF &  _   
"This generally is the standard port 80. "             & vbCRLF &  _   
"Running multi-server menu updates this port."         & vbCRLF & vbCRLF &  _ 
"You can change port value. It becomes fixed and"      & vbCRLF &  _   
"not updated when  multi-server menu is run."

'--Server Admin
Const lang_av_popup_title2                = "Server Admin"
lang_av_popup_str2                        = _
"E-mail address for website administrator."                & vbCRLF &  _  
"This is derived from Server Name by default."             & vbCRLF & vbCRLF &  _ 
"You can use whatever e-mail you prefer."                  & vbCRLF & vbCRLF &  _ 
"Alternatively delete this by clicking delete button."

'--Document Root
Const lang_av_popup_title3                = "Document Root"
lang_av_popup_str3                        = _
"Document root is the full path to a folder. Apache"         & vbCRLF &  _ 
"will serve a host website from this folder."                & vbCRLF & vbCRLF &  _ 
"1) For portability use the default path displayed;"         & vbCRLF &  _ 
"   replace *** with the folder you want to use."            & vbCRLF & vbCRLF &  _ 
"2) Alternatively use the ""Select Folder"" button."         & vbCRLF &  _ 
"   In the popup navigate to and select required folder."    & vbCRLF &  _ 
"   Click OK to accept."                                     & vbCRLF & vbCRLF &  _ 
"Note:"                                                      & vbCRLF &  _ 
"The script will replace back slashes with"                  & vbCRLF &  _ 
" forward slashes. If the folder does not exist, it"         & vbCRLF &  _ 
" will be created."

'--Document Root Browse Folder Dialog
Const lang_av_folder_dialog_str1          = "Select a folder for your Vhost root folder."
Const lang_av_folder_dialog_str2          = "Alternatively create a new folder to use." 

'--Server Name - Host Name
Const lang_av_popup_title4                = "Server Name - Host Name"
lang_av_popup_str4                        = _
"Host name is the address you type into"                 & vbCRLF &  _             
"a browser, excluding the http:// part."                 & vbCRLF & vbCRLF &  _ 
"Example 1:"                                             & vbCRLF &  _ 
"Full Internet address: http://www.me.com"               & vbCRLF &  _ 
"Host name: www.me.com"                                  & vbCRLF & vbCRLF &  _ 
"Example 2:"                                             & vbCRLF &  _ 
"Full Internet address: http://uniserver.com"            & vbCRLF &  _ 
"Host name: uniserver.com"                               & vbCRLF & vbCRLF &  _ 
"After entering Host Name click the ""Confirm"" button." & vbCRLF &  _ 
"This enables menu options and displays defaults."       & vbCRLF &  _ 
"Change or delete defaults as appropriate."

'---Server Alias
Const lang_av_popup_title5                = "Server Alias"
lang_av_popup_str5                        = _
"Server alias allows the server to be accessible by more"      & vbCRLF &  _ 
"than one name. "                                              & vbCRLF & vbCRLF &  _ 
"You must have a DNS server properly configured to map"        & vbCRLF &  _ 
"these names to an IP address associated with your server."    & vbCRLF & vbCRLF &  _ 
"The defaults offered are derived from your ""Host Name""."    & vbCRLF &  _ 
"Change or delete defaults as appropriate."

'---Error Log
Const lang_av_popup_title6                = "Error Log"
lang_av_popup_str6                        = _
"The ErrorLog directive sets the name of the file to which"       & vbCRLF &  _ 
"the server will log any errors it encounters. If the file-path"  & vbCRLF &  _ 
"is not absolute then it is assumed to be relative to"            & vbCRLF &  _ 
"the ServerRoot."                                                 & vbCRLF & vbCRLF &  _ 
"The default offered is derived from your ""Server Name""."       & vbCRLF &  _ 
"Change or delete default as appropriate."                        & vbCRLF & vbCRLF &  _ 
"Note: To minimise file resources delete this option. Errors"     & vbCRLF &  _ 
"will be logged to main server file.  "

'---Custom Log
Const lang_av_popup_title7                = "Custom Log"
lang_av_popup_str7                        = _
"The CustomLog directive sets the name of the file to which"      & vbCRLF &  _ 
"the server will log access information. If the file-path"        & vbCRLF &  _ 
"is not absolute then it is assumed to be relative to"            & vbCRLF &  _ 
"the ServerRoot."                                                 & vbCRLF & vbCRLF &  _ 
"The default offered is derived from your “Server Name”"          & vbCRLF &  _ 
"Change or delete default as appropriate."                        & vbCRLF & vbCRLF &  _ 
"Note: To minimise file resources delete this option. Accesses"   & vbCRLF &  _ 
"will be logged to main server access file.  "

'--Additional Directives
Const lang_av_popup_title8                = "Additional Apache Directives"
lang_av_popup_str8                        = _
"Additional Apache Directives"                                & vbCRLF &  _
"Each Vhost inherits settings from the main"                  & vbCRLF &  _
"server configuration."                                       & vbCRLF & vbCRLF &  _  
"Placing these directives in a Vhost will"                    & vbCRLF &  _
"override main servers settings allowing each"                & vbCRLF &  _
"Vhost to be independently tailored."                         & vbCRLF & vbCRLF &  _ 
"Example 1: You may require code between the dotted lines:"   & vbCRLF & vbCRLF &  _ 
"<VirtualHost *:80>"                                          & vbCRLF &  _
"    ServerName my_domain.com"                                & vbCRLF &  _
"    DocumentRoot " & Chr(34) & "D:/websites/site1" & Chr(34) & vbCRLF &  _
"----------------------------------------------------"        & vbCRLF &  _
"<Directory " & Chr(34) & "D:/websites/site" & Chr(34) & ">"  & vbCRLF &  _
"    Options Indexes FollowSymLinks Includes ExecCGI"         & vbCRLF &  _
"    AllowOverride All"                                       & vbCRLF &  _
"    Order allow,deny"                                        & vbCRLF &  _
"    Allow from all"                                          & vbCRLF &  _
"</Directory>"                                                & vbCRLF &  _
"----------------------------------------------------"        & vbCRLF &  _
"</VirtualHost>" 

Const lang_av_popup_title9                = "Document Root Folder error"
Const lang_av_popup_str9                  = "Please eneter or select a document root folder"

Const lang_av_popup_title10               = "Server Name error"
Const lang_av_popup_str10                 = "Please eneter a server name"

Const lang_av_popup_title11               = "Server Name error"
Const lang_av_popup_str11                 = "Server Name already exists in configuration file!"

Const lang_av_popup_title12               = "Delete root folder"
Const lang_av_popup_str12                 = "Do you want to delete root folder?"

Const lang_av_popup_title13               = "Vhost configuration updated"
Const lang_av_popup_str13                 = "For changes to take effect restart Apache server"

'******************************************************************************
' MySQL - Server configuration
'******************************************************************************

lang_m1_mysql  = " MySQL"
lang_m2_mysql  = " Change Password"
lang_m3_mysql  = " Restore Password"

lang_m4_mysql  = " Edit my.ini"
lang_m5_mysql  = " View Error log file mysql.err"

lang_m6_mysql  = " Create delete Database"
lang_m7_mysql  = " Create Restricted MySQL User"
lang_m8_mysql  = " Edit Restricted MySQL User"
lang_m9_mysql  = " InnoDB Enable/Disable"

lang_m20_mysql_spacer  = "-----------------------------------"

'*** Sub-MySQL Change Password ================================================

Const lang_new_mysql_password_title    = "Set New MySQL Password"
Const lang_new_pass_mysql_legend       = "Set New MySQL Password Status" 
Const lang_new_pass_starting_1         = "Starting MySQL server"
Const lang_new_setting_new_password    = "Setting New Password"
Const lang_new_popup_title             = "MySQL Root Password"
Const lang_new_popup_str               = "MySQL root password has been changed"

Const lang_new_enter_pass_mysql_legend = "Enter a new password"
Const lang_new_change_mysql_password   = "Change password"
Const lang_new_error_title             = "Error"
Const lang_new_error_str               = "Please enter a password"

'*** Sub-MySQL Restore Password ===============================================

Const lang_restore_mysql_password_title  = "Restore MySQL Password"
Const lang_restore_mysql_legend          = "Restoring MySQL password" 
Const lang_restore_stopping_kill         = "Stopping or killing server"
Const lang_restore_start_nogrant         = "Restart MySQL server with no grant"
Const lang_restore_root                  = "Restoring password to root"
Const lang_restore_kill_no_grant         = "Killing no grant MySQL server"
Const lang_restore_initial               = "Restore initial MySQL server state"

Const lang_restore_run_legend            = "Restore Password"
Const lang_restore_run_button            = "Run restore"

Const lang_restore_popup_title           = "MySQL Password"
Const lang_restore_popup_str             = "MySQL password has been restored"


'*** Sub-MySQL Create delete Database =========================================

Const lang_create_delete_mysql_db_title   = "Create Delete MySQL Database"
Const lang_create_database_mysql_legend   = "Create a Database" 
Const lang_clear_both_mysql_legend        = "Clear Both" 
Const lang_delete_database_mysql_legend   = "Delete a Database" 

Const lang_enter_name_to_create_mysql     = "Enter database name to create" 
Const lang_select_name_to_delete_mysql    = "Select database to delete" 

Const lang_create_database_mysql_bt       = "Create Database" 
Const lang_clear_both_mysql_bt            = "Clear Both" 
Const lang_delete_database_mysql_bt       = "Delete Database" 

Const lang_create_mysql_popup_title1      = "Error"
Const lang_create_mysql_popup_str1        = "Please enter a database name"

Const lang_create_mysql_popup_title2      = "Error"
Const lang_create_mysql_popup_str2        = "Database already created!"

Const lang_create_mysql_popup_title3      = "Error"
Const lang_create_mysql_popup_str3        = "No database selected"

Const lang_create_mysql_popup_title4      = "MySQL Not Running"
Const lang_create_mysql_popup_str4        = "To use this menu item please start the MySQL server"

'*** Sub-MySQL Create Restricted MySQL User ===================================

Const lang_create_restricted_mysql_user_title   = "Create Restricted MySQL User"
Const lang_cr_mysql_create_legend               = "Create restricted User"
Const lang_cr_mysql_privileges_legend           = "Privileges"
Const lang_cr_mysql_option_select_db            = "Option select a database"
Const lang_cr_mysql_user_name                   = "User Name"
Const lang_cr_mysql_user_password               = "Password"
Const lang_cr_mysql_database_name               = "Database"

Const lang_cr_mysql_select                      = "Select"
Const lang_cr_mysql_insert                      = "Insert"
Const lang_cr_mysql_update                      = "Update"
Const lang_cr_mysql_delete                      = "Delete"
Const lang_cr_mysql_create                      = "Create"
Const lang_cr_mysql_drop                        = "Drop"
Const lang_cr_mysql_alter                       = "Alter"
Const lang_cr_mysql_index                       = "Index"

Const lang_cr_mysql_cancel_bt                   = "Cancel"
Const lang_cr_mysql_create_bt                   = "Create User"
Const lang_cr_mysql_help_bt                     = "Help"

Const lang_cr_mysql_popup_title1                = "User Name Empty"
Const lang_cr_mysql_popup_str1                  = "Please enter a user name"

Const lang_cr_mysql_popup_title2                = "Password Empty"
Const lang_cr_mysql_popup_str2                  = "Please enter a user password"

Const lang_cr_mysql_popup_title3                = "Database Name Empty"
Const lang_cr_mysql_popup_str3                  = "Please enter or select a database name"

Const lang_cr_mysql_popup_title4                = "Created"
Const lang_cr_mysql_popup_str4                  = "Restricted MySQL User Created"

Const lang_cr_mysql_popup_help_title            = "Restricted MySQL User - Help"
lang_cr_mysql_popup_help_str                    = _
"This menu item creates a MySQL user with restricted privileges." & vbCRLF & vbCRLF & _  
"Enter a user name and password."                                 & vbCRLF & _                 
"Select required user privileges."                                & vbCRLF & vbCRLF & _        
"This user is restricted to using a single database."             & vbCRLF & _    
"Enter a database name or select one from the option list."       & vbCRLF & _      
"If the database does not exit it is created."             

'*** Sub-MySQL Edit Restricted MySQL User =====================================

Const lang_edit_restricted_mysql_user_title     = "Edit Restricted MySQL User"
Const lang_er_mysql_edit_legend                 = "Edit restricted User"
Const lang_er_mysql_privileges_legend           = "Privileges"
Const lang_er_mysql_select_user                 = "Select a user"
Const lang_er_mysql_user_name                   = "User Name"
Const lang_er_mysql_user_password               = "Password"
Const lang_er_mysql_database_name               = "Database"

Const lang_er_mysql_select                      = "Select"
Const lang_er_mysql_insert                      = "Insert"
Const lang_er_mysql_update                      = "Update"
Const lang_er_mysql_delete                      = "Delete"
Const lang_er_mysql_create                      = "Create"
Const lang_er_mysql_drop                        = "Drop"
Const lang_er_mysql_alter                       = "Alter"
Const lang_er_mysql_index                       = "Index"

Const lang_er_mysql_cancel_bt                   = "Cancel"
Const lang_er_mysql_update_bt                   = "Update User"
Const lang_er_mysql_help_bt                     = "Help"
Const lang_er_mysql_delete_bt                   = "Delete"

Const lang_er_mysql_popup_title1                = "User Name Empty"
Const lang_er_mysql_popup_str1                  = "Please enter a user name"

Const lang_er_mysql_popup_title2                = "Password Empty"
Const lang_er_mysql_popup_str2                  = "Please enter a user password"

Const lang_er_mysql_popup_title3                = "Database Name Empty"
Const lang_er_mysql_popup_str3                  = "Please enter or select a database name"

Const lang_er_mysql_popup_title4                = "Created"
Const lang_er_mysql_popup_str4                  = "Restricted MySQL User Created"

Const lang_er_mysql_popup_title5                = "Updated"
Const lang_er_mysql_popup_str5                  = "Restricted MySQL User Updated"

Const lang_er_mysql_popup_help_title            = "Edit Restricted MySQL User - Help"
lang_er_mysql_popup_help_str                    = _
"From this menu item you can either delete"                      & vbCRLF & _ 
"or update a restricted MySQL user."                             & vbCRLF & vbCRLF & _  
"Delete:"                                                        & vbCRLF & _                                                        
"Select user from list and click delete button "                 & vbCRLF & vbCRLF & _             
"Update:  "                                                      & vbCRLF & _ 
"Select user from list. Change parameters as required. "         & vbCRLF & _ 
"Click Update User button."

'*** Sub-MySQL InnoDB Enable/Disable ==========================================
Const lang_innodb_mysql_str1                  = "Enable InnoDB"

'******************************************************************************
' PHP - Server configuration
'******************************************************************************

lang_m1_php  = " PHP"
lang_m2_php  = " Edit Basic Configuration"
lang_m3_php  = " Edit Current Configuration file: php.ini"
lang_m4_php  = " Edit Production Configuration file: php_production.ini"
lang_m5_php  = " Edit Development Configuration file: php_development.ini"
lang_m6_php  = " Edit Command Line Configuration file: php-cli.ini"
lang_m7_php  = " Switch to Development Configuration file"
lang_m8_php  = " Switch to Production Configuration file"
lang_m9_php  = " phpinfo() - Display PHP Information"
lang_m10_php = " PHP Accelerators APC, eAccelerator and Zend OpCache"
lang_m11_php = " Pear control panel"
lang_m12_php = " PHP Extensions Enable/Disable"

lang_m20_php_spacer  = "--------------------------------------------------------------------"

'*** Sub-PHP Edit Basic Configuration =========================================

Const lang_php_page_title                          = "Basic PHP Configuration"
Const lang_php_current_frame                       = "Current"
Const lang_php_development_frame                   = "Development"
Const lang_php_production_frame                    = "Production"

Const lang_php_safe_mode_label                     = "Safe Mode"
Const lang_php_Show_PHP_in_server_signature_label  = "Show PHP In Server Signature"
Const lang_php_register_globals_label              = "Register Globals"
Const lang_php_maximum_script_execute_time_label   = "Maximum Script Execute Time (s.)"
Const lang_php_maximum_memory_amount_label         = "Maximum Memory Amount (MB)"
Const lang_php_display_errors_label                = "Display Errors"
Const lang_php_maximum_post_size_label             = "Maximum Post Size"
Const lang_php_maximum_upload_size_label           = "Maximum Upload Size"
Const lang_php_short_open_tags_label               = "Short Open Tags"
Const lang_php_display_startup_errors_label        = "Display startup errors"
Const lang_php_track_errors_label                  = "Track errors"
Const lang_php_html_errors_label                   = "Html errors"
Const lang_php_variables_order_label               = "Variables order"

Const lang_php_help_bt                             = "Help"
Const lang_php_update_bt                           = "Update"

'-- Current updated
Const lang_php_current_config_title              = "PHP Current Updated"
lang_php_current_config_str                      = _
"The current PHP configuration file has been updated"  & vbCRLF & vbCRLF & _
"For changes to take effect restart Apache server"

'-- Development updated
Const lang_php_develpopment_config_title         = "PHP Development Updated"
lang_php_develpopment_config_str                 = _
"The development PHP configuration file has been updated "                & vbCRLF & vbCRLF & _
"For changes to take effect:  "                                           & vbCRLF & vbCRLF & _
" 1] Switch to development this replaces the current configuration file." & vbCRLF & _
" 2] Restart Apache server "

'-- Production updated
Const lang_php_production_config_title           = "PHP Production Updated"
lang_php_production_config_str                   = _
"The production PHP configuration file has been updated"                 & vbCRLF & vbCRLF & _
"For changes to take effect:"                                            & vbCRLF & vbCRLF & _
" 1] Switch to production this replaces the current configuration file." & vbCRLF & _
" 2] Restart Apache server" 

'-- Main help
Const lang_php_config_main_help_title              = "PHP Configuration"
lang_php_config_main_help_str                      = _
"This form allows you to change commonly configured PHP options"        & vbCRLF & vbCRLF & _ 
"Current PHP ini file:"                                                 & vbCRLF & _ 
"  Switching to development or production overwrites this file"         & vbCRLF & vbCRLF & _ 
"php_development.ini file."                                             & vbCRLF & _ 
"  Allows errors to be written to screen. You can enable other"         & vbCRLF & _ 
"  parameters for testing."                                             & vbCRLF & vbCRLF & _ 
"php_production.ini file."                                              & vbCRLF & _ 
"  Prevents errors being written to screen. Settings tighten security." & vbCRLF & _ 
"  For example, globals are off by default."  

'*** Sub-PHP Switch to Development/Production Configuration file ==============

Const lang_php_switching_title         = "PHP Configuration file" 
Const lang_php_switched_to_production  = "Configuration file has been switched to Production" 
Const lang_php_switched_to_development = "Configuration file has been switched to Develpopment"

'*** Sub-PHP PHP Accelerators eAccelerator and APC and ZOP =====
Const lang_accel_eaccelerator_legend   = "eAccelerator"
Const lang_accel_eaccelerator_bti      = "eAccelerator control panel"
Const lang_accel_eaccelerator_txt1     = "Enable eAccelerator"


Const lang_accel_apc_legend            = "APC"
Const lang_accel_apc_bti               = "APC control panel"
Const lang_accel_apc_txt1              = "Enable APC"

Const lang_accel_zop_legend            = "Zend OpCache"
Const lang_accel_zop_bti               = "Zend OpCache control panel"
Const lang_accel_zop_txt1              = "Enable Zend OpCache"


Const lang_accel_title                 = "PHP Configuration"
lang_accel_str                         = _
"PHP Configuration files have been updated."   & vbCRLF & vbCRLF & _
"Restart servers for changes to take place." 



'*** Sub-PHP Pear Control ==============

Const lang_pear_leg             = "Pear Control"
Const lang_pear_install_bt      = "Install Pear"
Const lang_pear_frontend_bt     = "View Pear Front-end"


'******************************************************************************
' MSMPT - Server configuration
'******************************************************************************

lang_m1_msmpt = " MSMPT"
lang_m2_msmpt = " Edit MSMPT Configuration"
lang_m3_msmpt = " Default Account"
lang_m4_msmpt = " View Log"
lang_m5_msmpt = " Send Test E-Mail"
lang_m20_msmpt_spacer  = "-------------------------------"

'*** Sub-MSMPT Default Account/Send Test E-Mail ===============================

Const lang_msmpt_account_frame         = "MSMPT Select Default Account"
Const lang_msmpt_email_test_frame      = "MSMPT Send a test E-mail"
Const lang_msmpt_email_to              = "Email To"
Const lang_msmpt_subject               = "Subject"
Const lang_msmpt_message               = "Message"  
Const lang_msmpt_send_mail_bt          = "Send Mail"

Const lang_msmpt_email_to_user_input   = "mexxx@tiscali.co.uk"
Const lang_msmpt_subject_user_input    = "UniServer Test"
Const lang_msmpt_message_user_input    = "Test Message 1. Delete and use your own!" 

Const lang_msmpt_test_title            = "Email Test"
Const lang_msmpt_test_str              = "Test email sent"

'******************************************************************************
' CRON  - Server configuration
'******************************************************************************

lang_m1_cron = " CRON"
lang_m2_cron = " Edit Cron Configuration"
lang_m3_cron = " Cron Controller"
lang_m4_cron = " View Log"
lang_m20_cron_spacer  = "----------------------------"

'*** Sub-CRON Cron Controller =================================================
Const lang_cron_program_legend         = "Run Cron as a program"
Const lang_cron_program_start          = "Start"
Const lang_cron_program_stop           = "Stop"

Const lang_cron_service_legend         = "Run Cron as a service"
Const lang_cron_service_install_run    = "Install and Run Service"
Const lang_cron_service_stop_uninstall = "Stop and Uninstall Service"

'******************************************************************************
' DtDNS - Server configuration
'******************************************************************************

lang_m1_dtdns = " DtDNS"
lang_m2_dtdns = " Edit DtDNS Accounts"
lang_m3_dtdns = " Force DtDNS UpDATE"
lang_m4_dtdns = " Enable Log"
lang_m5_dtdns = " View Log"
lang_m6_dtdns = " Enable in CRON"
lang_m20_dtdns_spacer  = "--------------------------"

'*** Sub-DtDNS Force DtDNS UpDATE =============================================

Const lang_dtdns_popup_title       = "DtDNS Force Update"
lang_dtdns_popup_str               = _
"DtDNS was manually updated"   & vbCRLF & vbCRLF &  _
"View log for details." 

'******************************************************************************
' DbBackup - Server configuration
'******************************************************************************

lang_m1_db_backup = " DB Backup"
lang_m2_db_backup = " Edit DB Backup Config"
lang_m3_db_backup = " Force DB  Backup"
lang_m4_db_backup = " Enable log"
lang_m5_db_backup = " View Log"
lang_m6_db_backup = " Enable In Cron"

lang_m7_db_backup = " Select DBs to backup"
lang_m8_db_backup = " Restore DBs from backup"
lang_m20_db_backup_spacer  = "------------------------------"

'*** Sub-DbBackup Force DB  Backup ============================================

Const lang_dbbackup_popup_title        = "DB Force Backup"
lang_dbbackup_popup_str                = _
"Database was manually backed up"   & vbCRLF & vbCRLF &  _
"View log for details." 

'*** Sub-DbBackup Select DBs to backup ========================================

Const lang_db_select_title               = "Select Databases To Backup"
Const lang_db_select_databases_legend    = "MySQL Databases"
Const lang_db_select_to_backup_legend    = "Databases To Backup"
Const lang_db_select_database_to_backup  = "Select database to backup"
Const lang_db_select_delete_or_save      = "Delete item from file"
Const lang_db_select_clear_bt            = "Clear"
Const lang_db_select_add_bt              = "Add >>"
Const lang_db_select_delete_bt           = "Delete"
Const lang_db_select_help_bt             = "Help"

Const lang_db_select_popup_title1        = "Error"
Const lang_db_select_popup_str1          = "No Database selected"

Const lang_db_select_popup_title2        = "Error"
Const lang_db_select_popup_str2          = "Database already containined in list"

Const lang_db_select_popup_help_title          = "Select Databases to backup – Help"
lang_db_select_popup_help_str                  = _
"Select database to backup:"                                    & vbCRLF & vbCRLF & _ 
"A list of MySQL databases is shown on the left."               & vbCRLF & _ 
"Select a database to backup and press Add button."             & vbCRLF & _ 
"Selected database is stored in a folder and displayed on"      & vbCRLF & _ 
"the right."                                                    & vbCRLF & vbCRLF & _ 
"Delete item from file:"                                        & vbCRLF & vbCRLF & _ 
"A list of databases to be backed up is shown on the right."    & vbCRLF & _ 
"These are the current entries saved in a file."                & vbCRLF & _ 
"To delete an entry select a database from the list and"        & vbCRLF & _ 
"click Delete button. "                                         & vbCRLF & vbCRLF & _ 
"Note: File location"                                           & vbCRLF & _ 
"UniServer\uni_con\db_backup\dbs_to_backup.txt"               & vbCRLF & vbCRLF & _ 
"This file is used by Force DB backup"                          & vbCRLF & _ 
"and or automatic backup using Cron."

'*** Sub-DbBackup Restore DBs from backup =====================================

Const lang_db_restore_title               = "Restore Database From Backup"
Const lang_db_restore_databases_legend    = "Restore MySQL Database"
Const lang_db_restore_select_name         = "Select database to restore"

Const lang_db_restore_bt                  = "Restore"
Const lang_db_restore_help_bt             = "Help"

Const lang_db_restore_popup_title1        = "Error"
Const lang_db_restore_popup_str1          = "No Database backup selected"

Const lang_db_restore_popup_title2        = "Restored"
Const lang_db_restore_popup_str2          = "Database was restored"

Const lang_db_restore_popup_help_title    = "Restore MySQL Database – Help"
lang_db_restore_popup_help_str            = _
"This menu option allows you to restore a database from"    & vbCRLF & _ 
"a backup file."                                            & vbCRLF & vbCRLF & _ 
"Restore:"                                                  & vbCRLF & _ 
"A list of MySQL backups is displayed."                     & vbCRLF & _  
"Select a database to restore and click Restore button."    & vbCRLF & vbCRLF & _  
"File format: dbname_time stamp_.sql"

'******************************************************************************
' Perl - Server configuration
'******************************************************************************

lang_m1_perl = " PERL"
lang_m2_perl = " Perl control panel"
lang_m20_perl_spacer  = "---------------------"

'*** Sub-Perl Force Shebang Update/Convert Win2Nix/Run Test Script ============

Const lang_perl_control_legend        = "Perl control panel"
Const lang_perl_force_update          = "Force Shebang Update"
Const lang_perl_convert_win2nix       = "Convert Win2Nix"
Const lang_perl_run_test_script       = "Run Test Script"

Const lang_perl_popup_title1           = "Perl Error - Perl Not Installed!"
lang_perl_popup_str1                   = _
"How to install Perl:"                                 & vbCRLF  & vbCRLF &  _                          
"Navigate to folder UniServer\alt_diag\install_perl"   & vbCRLF &  _ 
"and follow instructions in the Read_me.txt file"      & vbCRLF  & vbCRLF &  _  
"Greyed out menu options will then become available."

Const lang_perl_popup_title2           = "Perl Shebang Updated"
lang_perl_popup_str2                   = _
"Updated shebang in files: *.pl and *.cgi"            & vbCRLF  & vbCRLF &  _      
"For folder UniServer\cgi-bin and all sub-folders." 

Const lang_perl_popup_title3           = "File not found"
Const lang_perl_popup_str3             = "Unable to find file index.pl" 

Const lang_perl_popup_title4           = "Force Shebang Update"
lang_perl_popup_str4                   = _
"Perl scripts developed on Unix will not run on a Window machine"           & vbCRLF &  _            
"they require conversion to a Windows format."                              & vbCRLF  & vbCRLF &  _ 
" This script replaces the Unix shebang with a Windows shebang"             & vbCRLF &  _       
" allowing Apache to find the Perl interpreter"                             & vbCRLF & vbCRLF &  _  
"Note: After installing third-party scripts to cgi-bin run"                 & vbCRLF &  _ 
"Force Shebang Update. After this the shebang is automatically updated"     & vbCRLF &  _ 
"when servers are moved. Remember to use correct shebang for new scripts."

Const lang_perl_popup_title5           = "Convert Win2Nix"
lang_perl_popup_str5                   = _
"Perl scripts developed on Windows will not run on a Unix machine"           & vbCRLF &  _          
" they require conversion to a Unix format."                                 & vbCRLF  & vbCRLF &  _   
" This script copies all files in cgi-bin to a new folder \cgi-bin-unix\"    & vbCRLF &  _      
" scripts in this new folder are converted from Windows to Unix format. "    & vbCRLF  & vbCRLF &  _     
" a) Converts end of line:  Dec(#10#13=>#13) Hex 0D0A to 0A"                 & vbCRLF &  _ 
"                           CR+LF to LF"                                     & vbCRLF &  _ 
" b) Replaces Windows shebang with Unix shebang"                             

Const lang_perl_popup_title6           = "Run Test Script"
lang_perl_popup_str6                   = _
"A default installation of The Uniform Server contains index.pl test page "  & vbCRLF &  _ 
"located in folder UniServer\cgi-bin. This can be run by clicking the"       & vbCRLF &  _ 
"Run Test Script button."                                                    & vbCRLF  & vbCRLF &  _ 
"Note: This page can be replaced with your own index.pl file.  "             & vbCRLF &  _ 
"Run Test Script button then becomes a short cut to run your application."


'###-END-###


