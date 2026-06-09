@echo off
chcp 437 >nul
title Sync to GitHub

echo ============================================
echo   MES API Docs - Sync to GitHub
echo ============================================
echo.

cd /d "F:\Obsidian\MES接口文档\Mes接口"

echo [1/3] Detecting changes...
git add -A
git status --short

echo.
echo [2/3] Committing...
git commit -m "update %date% %time%"

echo.
echo [3/3] Pushing to GitHub...
git push origin main

echo.
echo ============================================
echo   Done!
echo   https://Miss-You-Name.github.io/mes-api-docs/
echo ============================================
echo.
echo Press any key to close...
pause >nul
