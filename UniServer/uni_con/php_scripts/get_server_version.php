<?php
/*
###############################################################################
# Name: get_server_version.php
# Developed By: The Uniform Server Development Team
# Modified Last By: Mike Gleaves (Ric)
# Web: http://www.uniformserver.com
# V1.0 1-11-2011
###############################################################################
# Get server version
#
# Input:  None:
# Output: If version obtained write to file, otherwise write "Failed"
*/

#error_reporting(0);  // Disable PHP errors and warnings
                      // Comment to Enable for testing

chdir(dirname(__FILE__));        // Change wd to this files location
include_once "config.inc.php";   // Load constants
  
  $server_version ="Failed";                             // Version. Assume failed
  $url = "http://www.uniformserver.com/system/.version"; // Uniform Server version page

  if(file_exists(USF_SS_VERSION_TXT)){                  // Ensure file does not exits 
    unlink(USF_SS_VERSION_TXT);                         // If it does delete it
  }

  $ch=curl_init();                                      // Get handle
  curl_setopt($ch,CURLOPT_URL,$url);                    // Page to get
  curl_setopt($ch,CURLOPT_CONNECTTIMEOUT,2);            // Give up after 2s
  curl_setopt($ch, CURLOPT_TIMEOUT, 2);                 // Give up after 2s

  curl_setopt($ch,CURLOPT_RETURNTRANSFER,1);            // Force text string op
  $buffer = curl_exec($ch);                             // Run above save to buffer  
  curl_close($ch);                                      // Cose resource

  if (!empty($buffer)){                                 // Is buff empty

   if(strpos($buffer, "bandwidth" )){                   // Check if server                                      
     $server_version = "Failed";                        // Must have been an error
   }
   else{
     $server_version = $buffer;                         // Set to version
   }
  }

  $fh = fopen(USF_SS_VERSION_TXT, 'w');                 // Open file for write
  fwrite($fh, $server_version);                         // Write $server_version to file
  fclose($fh);                                          // Close file handle
  print "========= $server_version================ ";
?>