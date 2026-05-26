# Script to organize MindGuard project into frontend and backend folders
# Excludes Research2 folder as requested

Write-Host "Starting project organization..." -ForegroundColor Green

# Create directories
Write-Host "Creating directories..." -ForegroundColor Yellow
New-Item -ItemType Directory -Force -Path ".\frontend" | Out-Null
New-Item -ItemType Directory -Force -Path ".\backend" | Out-Null

# Move Frontend files
Write-Host "Moving frontend files..." -ForegroundColor Cyan

# Frontend source and config files
Move-Item -Path ".\src" -Destination ".\frontend\src" -Force
Move-Item -Path ".\public" -Destination ".\frontend\public" -Force
Move-Item -Path ".\package.json" -Destination ".\frontend\package.json" -Force
Move-Item -Path ".\package-lock.json" -Destination ".\frontend\package-lock.json" -Force
Move-Item -Path ".\next.config.js" -Destination ".\frontend\next.config.js" -Force
Move-Item -Path ".\next.config.ts" -Destination ".\frontend\next.config.ts" -Force
Move-Item -Path ".\next-env.d.ts" -Destination ".\frontend\next-env.d.ts" -Force
Move-Item -Path ".\tsconfig.json" -Destination ".\frontend\tsconfig.json" -Force
Move-Item -Path ".\eslint.config.mjs" -Destination ".\frontend\eslint.config.mjs" -Force
Move-Item -Path ".\postcss.config.mjs" -Destination ".\frontend\postcss.config.mjs" -Force
Move-Item -Path ".\Dockerfile.frontend" -Destination ".\frontend\Dockerfile" -Force

# Environment files (frontend uses these)
if (Test-Path ".\.env") { Move-Item -Path ".\.env" -Destination ".\frontend\.env" -Force }
if (Test-Path ".\.env.local") { Move-Item -Path ".\.env.local" -Destination ".\frontend\.env.local" -Force }
if (Test-Path ".\.env.example") { Move-Item -Path ".\.env.example" -Destination ".\frontend\.env.example" -Force }

Write-Host "Frontend files moved successfully!" -ForegroundColor Green

# Move Backend files
Write-Host "Moving backend files..." -ForegroundColor Cyan

# Python server files
Move-Item -Path ".\mindguard_server.py" -Destination ".\backend\mindguard_server.py" -Force
Move-Item -Path ".\facial_server.py" -Destination ".\backend\facial_server.py" -Force
Move-Item -Path ".\requirements.txt" -Destination ".\backend\requirements.txt" -Force
Move-Item -Path ".\Dockerfile.backend" -Destination ".\backend\Dockerfile" -Force

# Database and Prisma
Move-Item -Path ".\prisma" -Destination ".\backend\prisma" -Force

# Model and ML files
Move-Item -Path ".\model_artifacts" -Destination ".\backend\model_artifacts" -Force
Move-Item -Path ".\colab_training_script.py" -Destination ".\backend\colab_training_script.py" -Force
Move-Item -Path ".\retrain_local.py" -Destination ".\backend\retrain_local.py" -Force
Move-Item -Path ".\unzip_model.py" -Destination ".\backend\unzip_model.py" -Force

# Test and utility files
Move-Item -Path ".\test_model.py" -Destination ".\backend\test_model.py" -Force
Move-Item -Path ".\test_model_debug.py" -Destination ".\backend\test_model_debug.py" -Force
Move-Item -Path ".\test_face_diag.py" -Destination ".\backend\test_face_diag.py" -Force
Move-Item -Path ".\analyze_province.py" -Destination ".\backend\analyze_province.py" -Force
Move-Item -Path ".\inspect_data.py" -Destination ".\backend\inspect_data.py" -Force

# Database utility files
Move-Item -Path ".\check_db.js" -Destination ".\backend\check_db.js" -Force
Move-Item -Path ".\check_db.sql" -Destination ".\backend\check_db.sql" -Force
Move-Item -Path ".\fix_status.sql" -Destination ".\backend\fix_status.sql" -Force

# Data files
if (Test-Path ".\response.json") { Move-Item -Path ".\response.json" -Destination ".\backend\response.json" -Force }
if (Test-Path ".\mental_health_iot_dataset_2500.csv.xlsx") { 
    Move-Item -Path ".\mental_health_iot_dataset_2500.csv.xlsx" -Destination ".\backend\mental_health_iot_dataset_2500.csv.xlsx" -Force 
}
if (Test-Path ".\MindGuard_Models-20260121T040644Z-1-001.zip") { 
    Move-Item -Path ".\MindGuard_Models-20260121T040644Z-1-001.zip" -Destination ".\backend\MindGuard_Models-20260121T040644Z-1-001.zip" -Force 
}

Write-Host "Backend files moved successfully!" -ForegroundColor Green

Write-Host ""
Write-Host "Project organization complete!" -ForegroundColor Green
Write-Host ""
Write-Host "Summary:" -ForegroundColor Yellow
Write-Host "  - Frontend files are now in: .\frontend\" -ForegroundColor White
Write-Host "  - Backend files are now in: .\backend\" -ForegroundColor White
Write-Host "  - Root files remain: docker-compose.yml, README.md, etc." -ForegroundColor White
Write-Host "  - Research2 folder was not touched" -ForegroundColor White
Write-Host "  - esp32_sensors folder was not touched" -ForegroundColor White
Write-Host ""
Write-Host "Next steps:" -ForegroundColor Yellow
Write-Host "  1. Update docker-compose.yml to reference new paths" -ForegroundColor White
Write-Host "  2. Update start_all.ps1 and setup.ps1 if needed" -ForegroundColor White
Write-Host "  3. Update any import paths if required" -ForegroundColor White
