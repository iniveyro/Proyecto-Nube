<?php
/*
#############################################################################
# Name: The Uniform Server Admin Panel
# Developed By: The Uniform Server Development Team
# Modified Last By: Mike Gleaves (Ric) 
# Web: http://www.uniformserver.com
# Notes: Common functions
# V1.0 25-7-2011
#############################################################################
*/

# === Live server test === 
# get_ip_current() - Gets server IP address as seen from the Internet
#                    Uses DtDNS page to obtain IP

//=== Get current IP as seen from Internet =================================
// Input:  None:
// Output: Return value true  = IP was obtained
// Output: Return value false = IP not obtained or error
// Output: $ip_current either IP address or blank
  
function get_ip_current(){
  global $ip_current;                     // IP address

  $ch=curl_init();                                      // Get handle
  curl_setopt($ch,CURLOPT_URL,'http://myip.dtdns.com'); // Page to get
  curl_setopt($ch,CURLOPT_CONNECTTIMEOUT,2);            // Give up after 2s
  curl_setopt($ch, CURLOPT_TIMEOUT, 2);                 // Give up after 2s

  curl_setopt($ch,CURLOPT_RETURNTRANSFER,1);            // Force text string op
  $buffer = curl_exec($ch);                             // Run above save to buffer  
  curl_close($ch);                                      // Cose resource

  if (empty($buffer)){                                  // Is buff empty
    return false;                                       // yes: failed to get ip
  }
  else{                                                 // no: page obtained
   // Extract IP address 
   if(preg_match("/(\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})/", $buffer, $ipmatch)){  
     $ip_current = $ipmatch[0];                         // Save IP to variable
     return true;                                       // Set success                                    
   }
   else{                                                // No match must be error
     return false;                                      // hence failed
   }
  }
}
//============================= END Get current IP as seen from Internet ===


?>