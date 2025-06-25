<?php
# *****************************************************************
# Uniform Server - 1-3-09
# Gets and uses absoute path $path
# V2 14-1-2011  - Addded new tracking section
# V3 3-11-2012  - Corrected $path_array - Forum RSTaylor 
# V4 23-12-2012 - Corrected Update config paths - Forum DrStrange
# V5 5-1-2013   - Corrected bat file paths - Forum Krienas 
# *****************************************************************

//=================================================================
// === Get paths ===
  $path_array      = array(realpath(__DIR__ .'/../..'));
  $us_pear_folder  = $path_array[0]."\home\us_pear";      // Path to us_pear
  $us_php_folder   = $path_array[0]."\usr\local\php";     // Path to php

// After upgrading may get this SECURITY ERROR: Will not write to..- Possible symlink attack
// Solution is to clear the Pear cache.
// At the same time might as well perform other clean up tasks.

//== Folder folder paths

$us_pear_cache         = $us_pear_folder.'\pear\cache';    //Cache
$us_pear_temp_download = $us_pear_folder.'\temp\download'; //Temp

//--Clean Cache folder
if(is_dir($us_pear_cache)){                       //Does folder exist?
  $handle=opendir($us_pear_cache);                //Yes get handle
    while (($file = readdir($handle))!==false) {  //Scan for files
    //echo "$file <br>"; //***Test code
    @unlink($us_pear_cache.'/'.$file);            //and delete file
  }
  closedir($handle);
}

//--Clean Temp folder
if(is_dir($us_pear_temp_download)){               //Does folder exist?
  $handle=opendir($us_pear_temp_download);        //Yes get handle
  while (($file = readdir($handle))!==false) {    //Scan for files
    //echo "$file <br>";//***Test code
    @unlink($us_pear_temp_download.'/'.$file);    //and delete file
  }
closedir($handle);
}

//=== Update config paths =========================================
// Portability requires configuration paths to be updated.
// Pear configuration is stored in a file. Its data has been serialised
// this needs to be unspecialised; paths updated and file resaved.

$filestr = '';        // Clear string
$arr     = array();   // Clear array 
 
$cnf     = $us_pear_folder.'\pear.conf';  // Set config file path
$filestr = file_get_contents($cnf) ;      // Read file into var
$arr     = unserialize($filestr);         // Unserialize line. Save to array 

//print "<pre>";  //***Test code
//var_dump($arr); //***Test code
//print "</pre>"; //***Test code

//---Set new values
$arr['temp_dir']      = $us_pear_folder.'\temp';
$arr['bin_dir']       = $us_pear_folder.'\bin';
$arr['php_dir']       = $us_pear_folder.'\PEAR';
$arr['doc_dir']       = $us_pear_folder.'\PEAR\docs';
$arr['data_dir']      = $us_pear_folder.'\PEAR\data';
$arr['test_dir']      = $us_pear_folder.'\PEAR\tests';
$arr['cache_dir']     = $us_pear_folder.'\PEAR\cache';
$arr['cache_ttl']     = 300;
$arr['php_bin']       = $us_php_folder.'\php.exe';
$arr['download_dir']  = $us_pear_folder.'\temp\download';
$arr['php_ini']       = $us_php_folder;
$arr['www_dir']       = $us_pear_folder.'\www';
$arr['cfg_dir']       = $us_pear_folder.'\cfg';
$arr['http_proxy']    = '';
$arr['__channels']    = array('__uri' => array(),'doc.php.net' => array(),'pecl.php.net' => array());


//---Serialize array and save to config file
file_put_contents($cnf, serialize($arr));

//=================================================================


/**
 * Put this file in a web-accessible directory as index.php (or similar)
 * and point your webbrowser to it.
 */

// $pear_dir must point to a valid PEAR install (=contains PEAR.php)
$pear_dir = $us_pear_folder.'\PEAR';           // default of install

// OPTIONAL: If you have a config file at a non-standard location,
// uncomment and supply it here:
$pear_user_config = $us_pear_folder.'\pear.conf';

// OPTIONAL: If you have protected this webfrontend with a password in a
// custom way, then uncomment to disable the 'not protected' warning:
$pear_frontweb_protected = true;


/***********************************************************
 * Following code tests $pear_dir and loads the webfrontend:
 */
if (!file_exists($pear_dir.'/PEAR.php')) {
    trigger_error('No PEAR.php in supplied PEAR directory: '.$pear_dir,
                    E_USER_ERROR);
}
ini_set('include_path', $pear_dir);
require_once('PEAR.php');

// Include WebInstaller
putenv('PHP_PEAR_INSTALL_DIR='.$pear_dir); // needed if unexisting config
require_once('pearfrontendweb.php');
?>
