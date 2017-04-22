REM ###########################################################
REM This script needs command text file called "start_rfc2217_server_linux.txt"
REM ###########################################################

start com2tcp-rfc2217.bat \\.\COM9 192.168.1.10 2217 

start putty.exe -load "RpiNodeWifiJenkins" -m start_rfc2217_server_linux.txt
