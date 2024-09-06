@echo off
setlocal enabledelayedexpansion

rem --- Phần 1: Cài đặt tất cả các APK từ thư mục ---
for %%f in ("apk\*.apk") do (
    echo Installing %%f
    adb install "%%f"
)

echo All APKs installed.
pause
