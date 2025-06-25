<?php
/*
###############################################################################
# Name: server_atatus_access.php
# Developed By: The Uniform Server Development Team
# Modified Last By: Mike Gleaves (Ric)
# Web: http://www.uniformserver.com
# V1.0 22-7-2011
###############################################################################
# Is server accessible from Internet
#
# Input:  None:
# Output: Write to file us_ss_access.txt value true = success, false = failed
*/

#error_reporting(0);             // Disable PHP errors and warnings
                                 // Comment to Enable for testing

chdir(dirname(__FILE__));        // Change wd to this files location
include_once "config.inc.php";   // Load constants
  
  $ip_current ="Failed";                               // IP address. Assume failed

  if(file_exists(USF_SS_ACCESS_TXT)){                  // Ensure file does not exits 
    unlink(USF_SS_ACCESS_TXT);                         // If it does delete it
  }

  //Get Server IP addess
  $ch=curl_init();                                      // Get handle
  curl_setopt($ch,CURLOPT_URL,'http://myip.dtdns.com'); // Page to get
  curl_setopt($ch,CURLOPT_CONNECTTIMEOUT,2);            // Give up after 2s
  curl_setopt($ch, CURLOPT_TIMEOUT, 2);                 // Give up after 2s
  curl_setopt($ch,CURLOPT_RETURNTRANSFER,1);            // Force text string op
  $buffer = curl_exec($ch);                             // Run above save to buffer  
  curl_close($ch);                                      // Close resource

  if (!empty($buffer)){                                 // Is buff empty
    $buffer = trim($buffer);                            // Clean
    if(filter_var($buffer, FILTER_VALIDATE_IP)) {       // Validate address
      $ip_current = $buffer;                            // Valid
    }
    else {
      $ip_current ="Failed";                            // it's not valid
    }
  }

  //Set file flag
  if( $ip_current == "Failed" ){                        // No IP no access
    $fh = fopen(USF_SS_GET_IP_TXT, 'w');                // Open file for write
    fwrite($fh, "False");                               // Write False failed to file
    fclose($fh);                                        // Close file handle
  }

  //Valid IP address
  else{                                                 // We have an IP is server accessible

   //--Get Apache port
   if ($filearray=file(USF_APACHE_CNF)) {               // read file into array
     foreach ($filearray as $txt) {                     // scan array for port
                                                        // check $text line save $matches 
      if(preg_match("/^Listen\s+(\d+)/", $txt,$matches)){  
        $apache_port =  $matches[1];                    // match found save port number 
        break;                                          // give up nothing else to do
      }
     }
   }
   else {                                               // failed to read file
     echo "Cannot read the file";
     $apache_port = "80";
   }

   $ch=curl_init();                                                        // Get handle
   curl_setopt($ch,CURLOPT_URL,'http://'. $ip_current .":". $apache_port); // Page to get
   curl_setopt($ch,CURLOPT_CONNECTTIMEOUT,2);            // Give up after 2s
   curl_setopt($ch, CURLOPT_TIMEOUT, 2);                 // Give up after 2s
   curl_setopt($ch,CURLOPT_RETURNTRANSFER,1);            // Force text string op
   $buffer = curl_exec($ch);                             // Run above save to buffer  
   curl_close($ch);                                      // Close resource

    if (empty($buffer)){                                 // Is buff empty
     $fh = fopen(USF_SS_ACCESS_TXT, 'w');                // Open file for write
     fwrite($fh, "False");                               // Write $ip_current to file
     fclose($fh);                                        // Close file handle
    }
    else{
     $fh = fopen(USF_SS_ACCESS_TXT, 'w');                // Open file for write
     fwrite($fh, "True");                                // Write $ip_current to file
     fclose($fh);                                        // Close file handle
    }
  }

?>