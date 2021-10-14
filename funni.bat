@echo off
echo LoL
SET /P uname="How many sounds? >> "
SET /P killatend="Stop sounds after exitting  (Y/N)? >> "
( 
  echo Do While True
  echo Set Sound = CreateObject("WMPlayer.OCX.7"^)
  echo Sound.URL = WScript.Arguments(0^)
  echo Sound.settings.setMode "loop", True
  echo Sound.Controls.play
  echo do while Sound.currentmedia.duration = 0
  echo wscript.sleep 1
  echo loop
  echo wscript.sleep (int(Sound.currentmedia.duration^)+1^)*1000
  echo Loop
) > sound.vbs
:lmao
set /A times=%times%+1
SET /A RAND=%RANDOM% %%22

if %RAND%==0 set "file=C:\Windows\Media\tada.wav"
if %RAND%==1 set "file=C:\Windows\Media\Windows Critical Stop.wav"
if %RAND%==2 set "file=C:\Windows\Media\Windows Error.wav"
if %RAND%==3 set "file=C:\Windows\Media\Windows Background.wav"
if %RAND%==4 set "file=C:\Windows\Media\Windows Foreground.wav"
if %RAND%==5 set "file=C:\Windows\Media\Windows Exclamation.wav"
if %RAND%==6 set "file=C:\Windows\Media\Windows Notify System Generic.wav"
if %RAND%==7 set "file=C:\Windows\Media\Windows User Account Control.wav"
if %RAND%==8 set "file=C:\Windows\Media\Windows Hardware Insert.wav"
if %RAND%==9 set "file=C:\Windows\Media\Windows Hardware Remove.wav"
if %RAND%==10 set "file=C:\Windows\Media\Windows Notify Calendar.wav"
if %RAND%==11 set "file=C:\Windows\Media\Windows Notify Email.wav"
if %RAND%==12 set "file=C:\Windows\Media\Windows Notify Message.wav"
if %RAND%==13 set "file=.\wav\fard.wav"
if %RAND%==14 set "file=.\wav\whatsapp_drip.wav"
if %RAND%==15 set "file=.\wav\beans-wtf.wav"
if %RAND%==16 set "file=.\wav\fard-reverb.wav"
if %RAND%==17 set "file=.\wav\omg.wav"
if %RAND%==18 set "file=.\wav\ber.wav"
if %RAND%==19 set "file=.\wav\stalrape.wav"
if %RAND%==20 set "file=.\wav\a_n.wav"
if %RAND%==21 set "file=.\wav\sm_alarm_er.wav"
if %RAND%==22 set "file=.\wav\cf.wav"



echo Times: %times% :: Sound: {%RAND%}~%file%

start /min sound.vbs "%file%" > NUL
if %times%==%uname% (goto end) else (echo 0+0 > NUL)
rem timeout 1 > NUL

goto lmao

:end
echo Number of sounds reached. Press a key to exit.
pause
if %killatend%==Y (echo Stopping all sounds... & taskkill /IM wscript.exe /F)
if %killatend%==y (echo Stopping all sounds... & taskkill /IM wscript.exe /F)
del sound.vbs
rem exit
