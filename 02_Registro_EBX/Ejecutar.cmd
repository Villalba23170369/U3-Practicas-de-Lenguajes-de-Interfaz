@echo off
setlocal
pushd "%~dp0"
if not exist "Debug\Practica_U3_02.exe" goto falta
"Debug\Practica_U3_02.exe"
pause
popd
exit /b 0
:falta
echo Compila la solucion en Debug y x86 para generar el ejecutable.
pause
popd
exit /b 1
