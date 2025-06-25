<?php

$path_array  = explode("\\uni_con",dirname(__FILE__));  // Split at folder uni_con
$base        = "$path_array[0]";                          // find drive letter and any sub-folders 
$base_f      = preg_replace('/\\\/','/', $base);          // Replace \ with /

define("UF_uni_con", "$base_f/uni_con/cron/cron_test/test_cron_3_result.txt");

file_put_contents(UF_uni_con, "Cron test 3\r\n", FILE_APPEND);

?>
