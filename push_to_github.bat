@echo off
echo ===================================================
echo   Push Android Project to GitHub (Cloud Build)
echo ===================================================
echo.
echo 1. Go to https://github.com/new
echo 2. Create a new repository (e.g., "my-android-app")
echo 3. Copy the HTTPS URL (e.g., https://github.com/username/my-android-app.git)
echo.
set /p REMOTE_URL="Paste the Repository URL here: "

git remote add origin %REMOTE_URL%
git branch -M main
git push -u origin main

echo.
echo ===================================================
echo   Done! 
echo   Now go to the 'Actions' tab on your GitHub repo page.
echo   Wait for the build to finish and download the APK.
echo ===================================================
pause
