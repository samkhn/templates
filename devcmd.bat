@ECHO OFF

IF DEFINED DEVCMD GOTO :EOF
SET "PATH=C:\scripts;C:\bin;%PATH%"

REM LLVM
REM Warnings:
REM clang\tools\clang-format might conflict with other clang-formats
REM GNU Find may conflict with CMD FIND
SET "PATH=C:\LLVM\clang\tools\clang-format;%PATH%"
SET "PATH=C:\Program Files (x86)\GnuWin32\bin;%PATH%"
SET "PATH=C:\Program Files\doxygen\bin;C:\Program Files\Graphviz\bin;%PATH%"
SET "PATH=C:\Program Files\Python311;%PATH%"

REM NOTE: CMake\bin should come before VS in the PATH string
IF NOT DEFINED DevEnvDir (
  CALL "C:\Program Files\Microsoft Visual Studio\2022\Community\VC\Auxiliary\Build\vcvars64.bat" >nul
)
SET "PATH=C:\Program Files\CMake\bin;%PATH%"

SET "PATH=%PATH%;C:\go\bin"
SET "PATH=%USERPROFILE%\.cargo\bin;%PATH%"

SET "PATH=C:\Program Files\qemu;%PATH%"

SET DEVCMD=1
