@echo off

echo press 1 to hide and 2 to unhide 
set /P a=""

if %a%==1 ( 
	goto hide
)else if %a%==2 ( 
	goto unhide
) else (
	echo input not valid 
	goto exit
)

:hide
echo Enter folder name to hide
set /P folder_name=""
Attrib +h +s +r "%folder_name%"
echo %folder_name% is hidden
goto exit

:unhide
echo Enter folder name to unhide
set /P folder_name=""
Attrib -h -s -r "%folder_name%"
echo unhiding process for %folder_name% completed
goto exit


:exit
pause