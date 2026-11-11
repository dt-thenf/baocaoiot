@echo off
setlocal
cd /d "%~dp0"
set "IOT_MAIN=%~1"
if "%IOT_MAIN%"=="" set "IOT_MAIN=main"
where xelatex >nul 2>nul
if errorlevel 1 (
  echo Khong tim thay XeLaTeX. Cai TeX Live hoac MiKTeX truoc.
  exit /b 1
)
xelatex -interaction=nonstopmode -halt-on-error "%IOT_MAIN%.tex"
if errorlevel 1 exit /b 1
xelatex -interaction=nonstopmode -halt-on-error "%IOT_MAIN%.tex"
if errorlevel 1 exit /b 1
xelatex -interaction=nonstopmode -halt-on-error "%IOT_MAIN%.tex"
if errorlevel 1 exit /b 1
echo Da tao %IOT_MAIN%.pdf
