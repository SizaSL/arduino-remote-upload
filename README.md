# Arduino remote uploading

The remote uploading needs followings files

* hub4com.exe
* com2tcp-rfc2217.bat
* start_rfc2217_server_linux.txt
* rfc2217_server.py (On Linux side)
* start_remote_upload.bat

The putty session name needs to be setup properly and update in "start_remote_upload.bat" with your own session name. It is recommended to use putty session rather than using putty with ssh into Linux host which will expose your user name and password in batch file. Running this is simply double clicking batch file "start_remote_upload.bat". It will also kills the rfc2217 server process previously ran on Linux host. Well!!! yes, its just kills the Python processes. This needs to be specific process of rfc2217 server. This script needs to be improved in near future.