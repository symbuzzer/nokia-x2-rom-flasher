@ECHO OFF
set romversion=0001
title Rom v%romversion%
color 80
mode con:cols=125 lines=11 > nul
ECHO.
ECHO. !!! WARNING !!! THIS PROCESS WIPE YOUR ROM AND DATA TOTALLY! MAKE BACKUP FIRSTLY !!!
ECHO.
ECHO.ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
ECHO.บ 1- Remove USB cable and battery from device. Reinsert battery                                                            บ
ECHO.บ 2- Press and hold 'Voldown' + 'Power' buttons for 5 seconds                                                              บ
ECHO.บ 3- Reconnect device to PC                                                                                                บ
ECHO.ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
ECHO. 
fastboot -i 0x0421 oem
cls
mode con:cols=125 lines=30 > nul
ECHO.
ECHO. Flashing started...
fastboot -i 0x0421 oem unlock
ECHO. Flashing RECOVERY
fastboot -i 0x0421 flash recovery recovery.img
ECHO. Flashing KERNEL
fastboot -i 0x0421 flash boot boot.img
ECHO. Flashing SYSTEM
fastboot -i 0x0421 flash system system.img
ECHO. Flashing CUSTOM
fastboot -i 0x0421 flash custom custom.img
fastboot -i 0x0421 oem unlock
ECHO. Flashing finished...
pause
exit
