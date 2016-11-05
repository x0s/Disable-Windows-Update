@echo off

IF /i "%1"=="disable" goto disable_wu
IF /i "%1"=="enable" goto enable_wu

echo Argument should be "disable" or "enable". argument(s) passed=%1
goto exit

:disable_wu
echo ((Stopping windows update))
net stop wuauserv
echo ((Disabling windows update))
sc config wuauserv start= disabled
goto exit

:enable_wu
echo ((Activation of windows update in manual mode))
sc config wuauserv start=demand
;echo ((Launching windows update))
;net start wuauserv
goto exit

:exit
pause
exit
