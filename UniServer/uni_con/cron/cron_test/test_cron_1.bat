rem ### working directory current folder 
pushd %~dp0

   echo Cron test 1 >> test_cron_1_result.txt

rem ### restore original working directory
popd
