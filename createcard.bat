echo off
REM *****  Remove partitions and format *****
diskpart /s sdcardclean.txt >logfile.txt

REM ***** Flash Windows 10 IoT to SDCard *****
dism.exe /Apply-Image /ImageFile:flash.ffu /ApplyDrive:\\.\PhysicalDrive1 /SkipPlatformCheck /Quiet

ECHO Finished applying image to SDCard
