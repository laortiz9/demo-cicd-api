#!/usr/bin/env powershell
$ErrorActionPreference = "Continue"

cd "c:\ClasesESPE\Arquitectura\CICD"

# Limpiar archivos de merge
Remove-Item ".git\MERGE_MSG*" -Force -ErrorAction SilentlyContinue
Remove-Item ".git\MERGE_HEAD" -Force -ErrorAction SilentlyContinue
Remove-Item ".git\MERGE_MODE" -Force -ErrorAction SilentlyContinue
Remove-Item ".git\AUTO_MERGE" -Force -ErrorAction SilentlyContinue
Remove-Item ".git\ORIG_HEAD" -Force -ErrorAction SilentlyContinue
Remove-Item ".git\COMMIT_EDITMSG*" -Force -ErrorAction SilentlyContinue

Write-Host "Merge files cleaned"

# Hacer push
git push -u origin main --force

Write-Host "Push completed"
