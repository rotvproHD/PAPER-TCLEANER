@echo off
cls
echo.
echo  [i] DIE UPDATE DATEIEN WERDEN HERUNTERGELADEN,
echo      BITTE WARTEN SIE EINEN MOMENT.
PING localhost -n 6 >NUL
call internet.cmd https://github.com/rotvproHD/PAPER-TCLEANER/raw/main/appfiles/APPFILES.zip -saveTo C:\PAPERSTUDIOS\Temp\appupdate.zip
cls
echo.
echo  [i] ES IST AM BESTEN, WENN SIE IMMER DIE
echo      NEUSTE VERSION UNSERER SOFTWARE BESITZEN
PING localhost -n 6 >NUL
del /q C:\PAPERSTUDIOS\Data\%inproname%\versions\*
rmdir /q C:\PAPERSTUDIOS\Data\%inproname%\versions
cls
echo.
echo  [i] FALLS FEHLER IN DER NEUEN VERSION AUFTRETEN,
echo      KOENNEN SIE DIE IN UPAI UNTER FORMS MELDEN
PING localhost -n 6 >NUL
for %%i in (*.*) do if not "%%i"=="updateservice.bat" del /q "%%i"
"archiver\WinRAR.exe" x "C:\PAPERSTUDIOS\Temp\appupdate.zip" *.* C:\PAPERSTUDIOS\Data\%inproname%\
cls
echo.
echo  [i] DAS UPDATE IST FAST FERTIG INSTALLIERT,
echo      NUR NOCH WENIGE MOMENTE
PING localhost -n 6 >NUL
cls
echo.
echo  [i] DAS UPDATE WURDE INSTALLIERT,
echo      HERZLICHEN GLUECKWUNSCH.
echo.
pause
cls
boot.bat
