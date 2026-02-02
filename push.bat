@echo off
cd /d "c:\ClasesESPE\Arquitectura\CICD"

REM Eliminar archivos de merge
del /F /Q ".git\MERGE_MSG" 2>nul
del /F /Q ".git\MERGE_MSG.swp" 2>nul
del /F /Q ".git\MERGE_HEAD" 2>nul
del /F /Q ".git\MERGE_MODE" 2>nul
del /F /Q ".git\AUTO_MERGE" 2>nul
del /F /Q ".git\ORIG_HEAD" 2>nul
del /F /Q ".git\COMMIT_EDITMSG" 2>nul

REM Hacer push
git.exe push -u origin main --force

echo Push completed!
pause
