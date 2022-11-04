mkdir bkp
robocopy %cd% "%cd%/bkp" /E /XD bkp /XF *.bat *.exe
@REM for /r %%i in (*.ma) do echo %%i
for /r %%i in (*.ma) do delete-maya-virus_windows_x64.exe %%i
echo ENTER
robocopy vicine_template %USERPROFILE%\Documents\maya\scripts\ /it
echo sourceCode https://aizwellenstan/Maya_remove_vicine
echo finished bkp files in ./bkp
pause