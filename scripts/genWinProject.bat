@echo off

rem Set the SCRIPTS_DIR to the current directory
set SCRIPTS_DIR=%~dp0

rem Set the PROJECT_DIR to the path of the parent directory
set PROJECT_DIR=%SCRIPTS_DIR%\..

rem Set the BUILD_DIR to the build directory
set BUILD_DIR=%PROJECT_DIR%\build

rem Check if the build directory exist, and if not create the build directory
if not exist %BUILD_DIR% mkdir %BUILD_DIR%

rem Build the project within the build directory
cmake "%PROJECT_DIR%" -B"%BUILD_DIR%"

PAUSE