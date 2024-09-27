@echo off
setlocal enabledelayedexpansion

rem --- Phần 2: Cấp quyền cho ứng dụng ---
rem Thay com.your.package.name bằng tên gói của ứng dụng cần cấp quyền
set package_name=vn.edu.gkebooks.launcher

rem Danh sách các quyền cần cấp
set permissions=^
    android.permission.WRITE_SECURE_SETTINGS ^
    android.permission.WRITE_SECURE_SETTINGS ^
    android.permission.SYSTEM_ALERT_WINDOW ^
    android.permission.READ_PHONE_STATE ^
    android.permission.RECORD_AUDIO ^
    android.permission.CAMERA ^
    android.permission.WRITE_EXTERNAL_STORAGE ^
    android.permission.ACCESS_FINE_LOCATION ^
    android.permission.ACCESS_COARSE_LOCATION ^
    android.permission.READ_EXTERNAL_STORAGE ^
    android.permission.PACKAGE_USAGE_STATS

rem Lặp qua từng quyền và cấp cho ứng dụng
for %%p in (%permissions%) do (
    echo Granting %%p to %package_name%
    adb shell pm grant %package_name% %%p
)

echo All permissions granted to %package_name%.
pause
