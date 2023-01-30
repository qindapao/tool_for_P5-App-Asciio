@echo off
set get_file_temp=%1%
echo %get_file_temp%
:: delete "
set get_file_temp=%get_file_temp:"=%
set get_file_head=/cygdrive/
set get_file_base=%get_file_temp:~0,1%
set get_file_tail=%get_file_temp:~2%

set get_file=%get_file_head%%get_file_base%%get_file_tail%
:: convert \ to /
set get_file=%get_file:\=/%


E:\programes\cygwin\bin\mintty.exe /usr/bin/bash --login -e /usr/bin/start_asciio.sh %get_file%
