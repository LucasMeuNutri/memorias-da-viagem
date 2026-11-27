@echo off
cd /d "%~dp0"
where npm.cmd >nul 2>nul
if errorlevel 1 (
  echo Instale o Node.js LTS primeiro: https://nodejs.org/en/download
  pause
  exit /b 1
)
if not exist "node_modules\.bin\vite.cmd" (
  call npm.cmd install
  if errorlevel 1 (
    echo Nao foi possivel instalar as dependencias. Verifique sua internet.
    pause
    exit /b 1
  )
)
echo Abra o endereco Local mostrado abaixo no navegador.
call npm.cmd run dev -- --open
pause
