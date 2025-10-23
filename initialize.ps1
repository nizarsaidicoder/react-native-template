# ============================================
# React Native App Initializer Script
# ============================================
$folderName = Split-Path -Leaf (Get-Location)
Write-Host "Current Directory: $folderName" -ForegroundColor Yellow

Set-Location ..
Write-Host "===========================================" -ForegroundColor Cyan
Write-Host "       Welcome to React Native Setup!      " -ForegroundColor Green
Write-Host "===========================================" -ForegroundColor Cyan
Write-Host "This script will help you create a new React Native project with optional features." -ForegroundColor Green

# -------------------------
# Get App Name
# -------------------------
$appName = Read-Host "Enter your app name (default: Template)"
if ([string]::IsNullOrWhiteSpace($appName)) {
    $appName = "Template"
}

Write-Host "Creating React Native project '$appName'..." -ForegroundColor Cyan
npx create-expo-app@latest $appName --template blank-typescript

Set-Location $appName

# -------------------------
# React Navigation
# -------------------------
npm install @react-navigation/native
npx expo install react-native-screens react-native-safe-area-context
npm install @react-navigation/native-stack --save
npm install @react-navigation/bottom-tabs --save
npm install @react-navigation/drawer --save
npm install react-native-reanimated --save
npm install react-native-gesture-handler --save
npm install expo-image
npx expo install react-native-worklets@0.5.1 

# -------------------------
# Vector Icons
# -------------------------
$installIcons = Read-Host "Do you want to install vector icons? (y/n, default: n)"
if ($installIcons -eq 'y') {
    Write-Host "Installing React Native Vector Icons..." -ForegroundColor Cyan
    npm install @react-native-vector-icons/fontawesome6 @react-native-vector-icons/evil-icons
    Write-Host "For usage instructions, visit:" -ForegroundColor Green
    Write-Host "https://github.com/oblador/react-native-vector-icons/blob/master/README.md" -ForegroundColor Yellow
}
Set-Location ..
# -------------------------
# Project Structure
# ------------------------- 
Write-Host "Creating project folder structure..." -ForegroundColor Cyan
Copy-Item -Path "./$folderName/src" -Destination "./$appName/src" -Recurse
Copy-Item -Path "./$folderName/tsconfig.json" -Destination "./$appName/tsconfig.json" -Force

Copy-Item -Path "./$folderName/App.tsx" -Destination "./$appName/App.tsx" -Force

# -------------------------
# Completion Message
# -------------------------
Write-Host "===========================================" -ForegroundColor Cyan
Write-Host "Project setup complete!" -ForegroundColor Green
Write-Host "Navigate to your project folder and start building:" -ForegroundColor Green
Write-Host "npx expo start" -ForegroundColor Yellow
Write-Host "Happy coding!" -ForegroundColor Green
Write-Host "===========================================" -ForegroundColor Cyan
Set-Location $appName
code .