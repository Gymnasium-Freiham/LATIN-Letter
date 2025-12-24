@echo off
cl app.c (Get-ChildItem src\*.c).FullName app.res user32.lib gdi32.lib comdlg32.lib winhttp.lib comctl32.lib ole32.lib winspool.lib
& "C:/Program Files/git/bin/git.exe" add .
set /p userInput=Bitte geben Sie die Versionsnummer ein: 
& "C:/Program Files/git/bin/git.exe" commit -m ("Build" + %userInput%)