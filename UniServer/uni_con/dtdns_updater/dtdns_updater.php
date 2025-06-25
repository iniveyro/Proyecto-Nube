<?php
/*
###############################################################################
# Name: dtdns_updater.php 
# Developed By: The Uniform Server Development Team
# Modified Last By: Mike Gleaves (Ric) 
# Web: http://www.uniformserver.com
# V 1.0 25-7-2011
###############################################################################
*/
//error_reporting(0); // Disable PHP errors and warnings
                      // Comment to Enable for testing

chdir(dirname(__FILE__)); // Change wd to this files location
include_once "../php_scripts/config.inc.php";            // Load constants
include_once "../php_scripts/functions.inc.php";         // Load Common functions


//=== Variables

$logging  = true;         // true = Enable logging false = disable logging

$test     = false;        // Test true = display IP address and host names
                          // false = no display

//=== Main program ============================================================

if($logging){
  write_to_log("=== Start Log =================================================================");
}

$ini_array = parse_ini_file(USF_DTDNS_INI, true);  // Read dtdns.ini into array

//--Check for configuration
$config = "no_config";                     // Assume no config settings
foreach($ini_array as $key => $value){     // Scan array's main keys
  $config = $ini_array[$key]['hostname'];  // Get hostname
}
if($config == "no_config"){                // No hostname no configuration
  if($logging){
     write_to_log(" No configuration!");
     write_to_log("=== End Log ===================================================================\r\n");
  }
  exit;                                    //Bail out
}

//--Process config
foreach($ini_array as $key => $value){     // Scan array's main keys

 $id = $ini_array[$key]['hostname'];       // Get hostname
 $pw = $ini_array[$key]['password'];       // Get password

  if(get_ip_dns($id)){                     // Was IP from DNS returned
    if(get_ip_current()){                  // Yes: Current IP returned

      if($test){ // Test code
       print "DNS IP = $ip_dns CURRENT IP = $ip_current $id \r\n";
      }

      if($ip_dns != $ip_current){              // Are IP's different
        $result =  dtdns_update($id,$pw);      // yes: Update required
          if ($result){                        // IP was updated
            if($logging){
               $str = date('Y-m-d H:i')." Changed IP from: $ip_dns to $ip_current $id";
               write_to_log($str);
            }
          }                                    // Failed to update IP
          else{
            if($logging){
               $str = date('Y-m-d H:i')." Failed to update IP " . $ip_current . " for " .$id;
               write_to_log($str);
            }
          }
           
      }//End if different
      else{
        if($logging){
          $str = date('Y-m-d H:i')." ". " IPs ". $ip_current . " identical for $id - no change";
          write_to_log($str);
        }
      }
    }
    else{
      if($logging){
        $str = date('Y-m-d H:i')." ". " Unable to get Server IP address";
        write_to_log($str);
      }
    }
  }
  else{
    if($logging){
      $str = date('Y-m-d H:i')." ". " Unable to get current IP address for - " . $id;
      write_to_log($str);
    }    
  }
}// end foreach

if($logging){
  write_to_log("
--- End Log -------------------------------------------------------------------\r\n");
}
//======================================================== END Main program ===

//=== Write to log file =======================================================
// Input:  String to write
  
function write_to_log($log_str){
  $fh = fopen(USF_DTDNS_LOG, 'a') or die("can't open file");
  fwrite($fh, $log_str . "\r\n");
  fclose($fh); 
}
//=================================================== End Write to log file ===


//=== Get IP from DNS server ==================================================
// Input:  ID = Hostname:
// Output: Return value true  = IP was obtained
// Output: Return value false = IP not obtained or error
// Output: $ip_dns either IP address or host name
  
function get_ip_dns($hostname){
  global $ip_dns;                      // IP address saved from DNS server
  $ip_dns = gethostbyname($hostname);  // Get IP address of hostname
  if($ip_dns == $hostname){            // Is hostname returned (not IP address) 
    return false;                      // yes: failed to get IP address
  }
  else{                                // no: IP obtained  
    return true;                       // set success 
  }
}
//============================================== END Get IP from DNS server ===

//=== DtDNS Host Update Page ==================================================
// Input:  $id = Hostname:
// Input:  $pw = User password
// Output: Return value true = sucess false = failed
  
function dtdns_update($id,$pw){
$id_val     = urlencode($id);                   // User Host on DtDNS
$pw_val     = urlencode($pw);                   // User password
$client_val = urlencode('UniServerV1');         // Optional - But added it
$url = 'https://www.dtdns.com/api/autodns.cfm'; // DtDNS update page

// Build complete URL
$str= $url."?id=".$id_val."&pw=".$pw_val."&client=".$client_val;

// Access page using Curl SSL
$ch=curl_init();                                 // Initialize Curl get handle
curl_setopt($ch,CURLOPT_URL,$str);               // Set Curl URL option 
curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false); // no verify
curl_setopt($ch,CURLOPT_CONNECTTIMEOUT,10);      // timeout set to 10 sceonds
curl_setopt($ch,CURLOPT_RETURNTRANSFER,1);       // curl_exec ouputs a string 
$buffer = curl_exec($ch);                        // run above, save to buffer
curl_close($ch);                                 // Close Curl frees memory

// Test returned page 
if(preg_match("/now\spoints\sto/",$buffer)){// Is return value "now points to"
 return true;                               // yes: update OK
}
else{                                       // no: Failed
 return false;
}
}
//============================================== END DtDNS Host Update Page ===
?>