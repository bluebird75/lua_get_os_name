REM This is a batch file to help with setting up the desired Lua environment.
REM It is intended to be run as "install" step from within AppVeyor.

REM version numbers and file names for binaries from http://sf.net/p/luabinaries/
set VER_51=5.1.5
set VER_52=5.2.4
set VER_53=5.3.3
set ZIP_51=lua-%VER_51%_Win32_bin.zip
set ZIP_52=lua-%VER_52%_Win32_bin.zip
set ZIP_53=lua-%VER_53%_Win32_bin.zip

:cinst
@echo off
if NOT "%LUAENV%"=="cinst" goto luajit
echo Chocolatey install of Lua ...
if NOT EXIST "C:\Program Files (x86)\Lua\5.1\lua.exe" (
    @echo on
    cinst lua
) else (
    @echo on
    echo Using cached version of Lua
)
set LUA="C:\Program Files (x86)\Lua\5.1\lua.exe"
@echo off
goto :EOF

:luajit
if NOT "%LUAENV%"=="luajit20" goto other
echo Setting up LuaJIT 2.0 ...
if NOT EXIST "luajit20\luajit.exe" (
    call %~dp0install-luajit.cmd LuaJIT-2.0.4 luajit20
) else (
    echo Using cached version of LuaJIT 2.0
)
set LUA=luajit20\luajit.exe
goto :EOF

:other
echo Unknown LUAENV: %LUAENV%
goto :EOF

