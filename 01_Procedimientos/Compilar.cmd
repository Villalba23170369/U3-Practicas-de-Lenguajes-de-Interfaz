@echo off
setlocal
pushd "%~dp0"
if not defined IrvineDir set "IrvineDir=C:\Irvine"
where ml.exe >nul 2>&1
if errorlevel 1 goto falta
if not exist Debug mkdir Debug
ml.exe /nologo /c /coff /Zi /safeseh /I "%IrvineDir%" /Fo"Debug\main.obj" "Proyecto\main.asm"
if errorlevel 1 goto fallo
link.exe /nologo /subsystem:console /machine:x86 /debug /out:"Debug\Practica_U3_01.exe" "Debug\main.obj" /libpath:"%IrvineDir%" Irvine32.lib kernel32.lib user32.lib
if errorlevel 1 goto fallo
echo Compilacion terminada.
popd
exit /b 0
:falta
echo Abre x86 Native Tools Command Prompt for VS 2022 y ejecuta este archivo.
:fallo
popd
exit /b 1
