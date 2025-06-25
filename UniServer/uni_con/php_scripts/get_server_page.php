<?php
/*
###############################################################################
# Name: get_server_page.php
# Developed By: The Uniform Server Development Team
# Modified Last By: Mike Gleaves (Ric)
# Web: http://www.uniformserver.com
# V1.0 24-7-2011
###############################################################################
# Is server accessible from Internet
#
# Input:  None:
# Output: Write to file us_ss_page.txt value page data or, 0 = failed
*/

#error_reporting(0);             // Disable PHP errors and warnings
                                 // Comment to Enable for testing

chdir(dirname(__FILE__));        // Change wd to this files location
include_once "config.inc.php";   // Load constants
  
  //print $argv[1];

  $rec_data ="0";                             // Assume no data

  if(file_exists(USF_SS_PAGE_TXT)){           // Ensure file does not exits 
    unlink(USF_SS_PAGE_TXT);                  // If it does delete it
  }

  $ch=curl_init();                            // Get handle
  curl_setopt($ch,CURLOPT_URL, $argv[1]);     // Page to get
  curl_setopt($ch,CURLOPT_CONNECTTIMEOUT,2);  // Give up after 2s
  curl_setopt($ch, CURLOPT_TIMEOUT, 2);       // Give up after 2s

  curl_setopt($ch,CURLOPT_RETURNTRANSFER,1);  // Force text string op
  $buffer = curl_exec($ch);                   // Run above save to buffer  
  curl_close($ch);                            // Close resource

  if (!empty($buffer)){                       // Is buff empty
    $rec_data = $buffer;                      // No: Set to data
  }

  $fh = fopen(USF_SS_PAGE_TXT, 'w');          // Open file for write
  fwrite($fh, $rec_data);                     // Write page data to file
  fclose($fh);                                // Close file handle

?>