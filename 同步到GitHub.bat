@echo off
chcp 437 >nul
title Sync to GitHub

cd /d "F:\Obsidian\MES接口文档\Mes接口"

echo ============================================
echo   MES API Docs - Sync to GitHub
echo ============================================
echo.

echo [1/3] Detecting changes...
git add -A
git status --short

echo.
echo [2/3] Committing...
git diff --cached --quiet
if %errorlevel%==0 (
    echo No changes to commit.
) else (
    git commit -m "update %date% %time%"
)

echo.
echo [3/3] Pushing to GitHub...
git push origin main

echo.
echo ============================================
echo   Done!
echo   https://Miss-You-Name.github.io/mes-api-docs/
echo ============================================
echo.
pause
