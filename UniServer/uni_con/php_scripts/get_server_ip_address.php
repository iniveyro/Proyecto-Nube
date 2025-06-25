<?php
/*
###############################################################################
# Name: get_server_ip_address.php
# Developed By: The Uniform Server Development Team
# Modified Last By: Mike Gleaves (Ric)
# Web: http://www.uniformserver.com
# V1.0 20-7-2011
###############################################################################
# Get server IP address as seen from Internet
#
# Input:  None:
# Output: If IP obtained write IP address to file, otherwise write "Failed"
*/

#error_reporting(0);  // Disable PHP errors and warnings
                      // Comment to Enable for testing

chdir(dirname(__FILE__));        // Change wd to this files location
include_once "config.inc.php";   // Load constants
  
  $ip_current ="Failed";                               // IP address. Assume failed

  if(file_exists(USF_SS_GET_IP_TXT)){                  // Ensure file does not exits 
    unlink(USF_SS_GET_IP_TXT);                         // If it does delete it
  }

  $ch=curl_init();                                      // Get handle
  curl_setopt($ch,CURLOPT_URL,'http://myip.dtdns.com'); // Page to get
  curl_setopt($ch,CURLOPT_CONNECTTIMEOUT,2);            // Give up after 2s
  curl_setopt($ch, CURLOPT_TIMEOUT, 2);                 // Give up after 2s

  curl_setopt($ch,CURLOPT_RETURNTRANSFER,1);            // Force text string op
  $buffer = curl_exec($ch);                             // Run above save to buffer  
  curl_close($ch);                                      // Cose resource

  if (!empty($buffer)){                                 // Is buff empty
    $buffer = trim($buffer);                            // Clean
    if(filter_var($buffer, FILTER_VALIDATE_IP)) {       // Validate address
      $ip_current = $buffer;                            // Valid
    }
    else {
      $ip_current ="Failed";                            // it's not valid
    }
  }

  $fh = fopen(USF_SS_GET_IP_TXT, 'w');                  // Open file for write
  fwrite($fh, $ip_current);                             // Write $ip_current to file
  fclose($fh);                                          // Close file handle

  //print "###$ip_current###"
?>