<?php
/*
###############################################################################
# Name: The Uniform Server Control Configuration 2.0
# Developed By: The Uniform Server Development Team
# Modified Last By: Mike Gleaves (Ric) 
# Web: http://www.uniformserver.com
# V1.1 22-7-2011
# Comment: Updated to use constants and not variables 
###############################################################################
*/

/* Path variables - NO BACKSLASH */
// All paths are absolute referenced to folder UniServer (can be renamed) 

$path_array  = explode("\\uni_con",dirname(__FILE__));  // Split at folder unicon
$base        = "$path_array[0]";                       // find drive letter and any sub-folders 
$base_f      = preg_replace('/\\\/','/', $base);       // Replace \ with /

//=== FOLDERS ===
define("US_BASE_F",             "$base_f");            // Uniform server base folder forward slash
define("US_TEMP_F",             "$base_f"."/tmp");     // Temp folder

//=== FILES ====

//-- Apache
define("USF_APACHE_CNF",       US_BASE_F."/usr/local/apache2/conf/httpd.conf"); // Apache configuration

//-- Server status
define("USF_SS_GET_IP_TXT",    US_TEMP_F."/us_ss_get_ip.txt" );  // Contains IP address or Failed
define("USF_SS_ACCESS_TXT",    US_TEMP_F."/us_ss_access.txt" );  // Accessibility results contained in this file
define("USF_SS_VERSION_TXT",   US_TEMP_F."/us_ss_version.txt");  // Contains Version or Failed
define("USF_SS_PAGE_TXT",      US_TEMP_F."/us_ss_page.txt");     // Contains Page text

//-- DtDNS
define("USF_DTDNS_INI",        US_BASE_F."/uni_con/dtdns_updater/dtdns.ini");         // DDNS configuration file 
define("USF_DTDNS_LOG",        US_BASE_F."/uni_con/dtdns_updater/dtdns.log");         // DtDNS log file 
define("USF_DTDNS_PHP",        US_BASE_F."/uni_con/dtdns_updater/dtdns_updater.php"); // DtDNS script 

?>