REM ****** CLEAN SDCARD AND REFORMAT ******
select disk 1
clean
create partition primary
select partition 1
active
format fs=fat32 quick
assign
exit
