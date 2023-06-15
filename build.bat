@ECHO OFF

where /q cindex
IF ERRORLEVEL==0 (
   cindex .
)

SET "PROJECTDIR=%cd"
SET "DEBUGDIR=%PROJECTDIR\build"

IF NOT EXIST %DEBUGDIR% (
	MD %DEBUGDIR%
	cmake -B %DEBUGDIR% -G Ninja -S %PROJECTDIR%
)

cmake --build %DEBUGDIR%
