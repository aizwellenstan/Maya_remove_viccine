@REM mkdir bkp
robocopy vicine_template %USERPROFILE%\Documents\maya\scripts\ /it
@REM robocopy %cd% "%cd%/bkp" /E /XD bkp /XF *.bat *.exe
@REM for /r %%i in (*.ma) do echo %%i
for /r %%i in (*.ma) do delete-maya-virus_windows_x64.exe %%i
@REM for /r %%i in (*.mb) do "C:\Program Files\Autodesk\Maya2020\bin\mayabatch.exe" -file %%i -command "python(\"import maya.cmds as cmds; cmds.file(save=True, type="mayaAscii")\")" %*
for /r %%i in (*.mb) do "I:\script\bin\td\software\Maya2018.6\bin\mayabatch.exe" -file %%i -script ./deleteVirus.mel
@REM echo ENTER
@REM robocopy vicine_template %USERPROFILE%\Documents\maya\scripts\ /it
@REM "C:\Program Files\Autodesk\Maya2020\bin\mayabatch.exe" -file %%i -command "python(\"import sys;sys.path.append('I:\script\bin\td\tools\cleanMayaVirus');import deletevirus;reload(deletevirus);deletevirus.deleteVirus()\")" %*