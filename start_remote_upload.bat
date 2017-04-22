REM ###########################################################
REM This script needs command text file called "start_rfc2217_server_linux.txt"
REM ###########################################################


cd C:\Users\Siza\Downloads\utilities tools\hub4com-2.1.0.0-386
start com2tcp-rfc2217.bat \\.\COM9 192.168.1.10 2217 

start putty.exe -load "RpiNodeWifiJenkins" -m "C:\Users\Siza\Downloads\utilities tools\hub4com-2.1.0.0-386\start_rfc2217_server_linux.txt"
