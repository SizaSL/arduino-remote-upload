# Arduino remote uploading

The remote uploading needs followings files

* hub4com.exe
* com2tcp-rfc2217.bat
* start_rfc2217_server_linux.txt
* start_remote_upload.bat
* rfc2217_server.py (On Linux side)

The putty session name needs to be setup properly and update in "start_remote_upload.bat" with your own session name. It is recommended to use putty session rather than using putty with ssh into Linux host which will expose your user name and password in batch file. 

The com0com pair needs to be setup on Windows machine communicating IDEs. Visual Studio with VisualMicro or Arduino IDE will connect hub4com via com0com pair. hub4com relay the messages to TCP as TCP client. That TCP client connected to TCP server on Linux host which again relay the messages to its serial port in this case on /dev/ttyUSB0. The sequence diagram as below.

## Sequence diagram
![PlantUML model](http://www.plantuml.com/plantuml/png/RKvDQy904BtlhnZq5YZOq69JIi7OKWg62hLuBEjcJ0PrrkvkQlhlEub6C7ZOMUPzp7j-GxpNJkyWjVLSvpbn0UDxvS-unvyAsU34ENjOb6GsZDv3V4MI2Q4Bd6ofO3380PrIArl3O4cSsuCVm716HHdIROKA0CGUoD1USu3tbrVVnwOVsSCLBEbZPRMwCtQda7EGl6FcZBYgkyGtXyXzcrkREBuTVtjqlrArnuRmz_MPZiv7LTCGdcwUZxMQqMt98qIH51Z9anlaegZXavRloft-5hjCRjmYppnOsM0ndOl_KjAwJet-0G00)

Running this is simply double clicking batch file "start_remote_upload.bat". It will also kills the rfc2217 server process previously ran on Linux host. Well!!! yes, its just kills the Python processes. This needs to be specific process of rfc2217 server. This script needs to be improved in near future.