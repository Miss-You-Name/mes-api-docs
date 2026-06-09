@echo off
chcp 65001 >nul
title MES接口文档 - 同步到GitHub

echo ============================================
echo   MES接口文档 → GitHub 同步工具
echo ============================================
echo.

cd /d "F:\Obsidian\MES接口文档\Mes接口"

echo [1/3] 正在检测变更...
git add -A
git status --short

echo.
echo [2/3] 正在提交...
git commit -m "更新文档 %date% %time%"

echo.
echo [3/3] 正在推送到GitHub...
git push origin main

echo.
echo ============================================
echo   同步完成！
echo   访问 https://Miss-You-Name.github.io/mes-api-docs/
echo ============================================
pause
