@echo off

:: checkout the Batchography book

setlocal

if not defined IDASDK (
    echo IDASDK environment variable not set.
    echo Also make sure ida-cmake is installed in IDASDK.
    echo See: https://github.com/allthingsida/ida-cmake
    goto :eof
)

if not exist build cmake -B build -S . -A x64 -DEA64=YES

if "%1"=="build" cmake --build build --config Release

echo.
echo All done!
echo.