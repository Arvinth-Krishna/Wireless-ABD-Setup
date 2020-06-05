@echo off
cd ..
cd ..
cd ..
cd Users/Arvinth/Android/Sdk/platform-tools
:setup
cls
echo.
echo ********************************************************
echo      Welocome to the WIRELESS DEBUGGER Setup Wizard
echo ********************************************************
echo.
echo.


echo Enter 1 To Setting up Wireless ADB debugging
echo Enter 2 To Reconnect the Device
echo Enter 3 To Kill the Server
echo.
echo.
echo Enter the Number
set /p helju=

if %helju%== 1 goto fuck1
if %helju%== 2 goto fuck2
if %helju%== ' goto fuck2
if %helju%== 3 goto fuck3
exit
:fuck1
cls
echo.
echo.
echo Make sure you have Connected the device to the host computer with a USB cable.
echo.
pause
adb devices
echo.
echo.
pause
cls
echo.
echo.
adb tcpip 5555
echo.
echo Make sure that your adb host computer and your android phone to same network
echo.
echo.
pause
cls
echo.
echo.
adb connect 192.168.1.41
echo.
Echo Now Remove the USB cable
echo.
echo.
pause
cls
echo.
echo.
echo Now Just get confirmed that your host computer is connected to the target device
echo.
adb devices
pause
cls
echo.
echo.
echo Enter 1 TO Open ANDROID STUDIO
echo Enter 2 To go to MAIN MENU
echo Enter 3 To Exit
echo.
echo.
echo Enter the Number
set /p clg=
if %clg%== ' goto studio
if %clg%== 1 goto studio
if %clg%== 2 goto setup
if %clg%== 3 goto wayout
:wayout
exit

:fuck3
cls
adb kill-server
echo Successfully the SERVER is killed.
echo.
echo.
pause
goto setup

:fuck2
cls
echo Make sure that your adb host computer and your android phone to same network
echo.
echo.
pause
cls
echo.
echo.
adb connect 192.168.1.41

echo.
echo.
pause
cls
echo.
echo.
echo Now Just get confirmed that your host computer is connected to the target device
echo.
adb devices
pause

cls
echo.
echo.
echo ***********************************************
echo Enter 1 TO Open ANDROID STUDIO
echo Enter 2 To go to MAIN MENU
echo.
echo or Simply press Enter to Exit
echo.
echo.
echo Enter the Number
set /p clg=
if %clg%== ' goto studio
if %clg%== 1 goto studio
if %clg%== 2 goto setup
exit

:studio
cd ..
cd ..
cd ..
cd ..
cd ..
cd Program Files/Android/Android Studio/bin
start studio64.exe
exit