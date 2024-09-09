#!/bin/bash

# --- Part 2: Granting permissions to the app ---
# Replace com.your.package.name with your app's package name
package_name="vn.edu.gkebooks.launcher"

# List of permissions to grant
permissions=(
    "android.permission.READ_PRIVILEGED_PHONE_STATE"
    "android.permission.WRITE_SECURE_SETTINGS"
    "android.permission.FOREGROUND_SERVICE"
    "android.permission.REQUEST_INSTALL_PACKAGES"
    "android.permission.INSTALL_PACKAGES"
    "android.permission.DELETE_PACKAGES"
    "android.permission.REQUEST_DELETE_PACKAGES"
    "android.permission.SET_PREFERRED_APPLICATIONS"
    "android.permission.ACTION_MANAGE_OVERLAY_PERMISSION"
    "android.permission.SYSTEM_ALERT_WINDOW"
    "android.permission.QUERY_ALL_PACKAGES"
    "android.permission.BIND_ACCESSIBILITY_SERVICE"
    "android.permission.INTERNET"
    "android.permission.ACCESS_NETWORK_STATE"
    "android.permission.ACCESS_WIFI_STATE"
    "android.permission.WAKE_LOCK"
    "android.permission.READ_PHONE_STATE"
    "android.permission.RECORD_AUDIO"
    "android.permission.CAMERA"
    "android.permission.MODIFY_AUDIO_SETTINGS"
    "android.permission.WRITE_EXTERNAL_STORAGE"
    "android.permission.ACCESS_FINE_LOCATION"
    "android.permission.ACCESS_COARSE_LOCATION"
    "android.permission.GET_TASKS"
    "android.permission.ACCESS_GPS"
    "android.permission.ACCESS_ASSISTED_GPS"
    "android.permission.ACCESS_LOCATION"
    "android.permission.READ_EXTERNAL_STORAGE"
    "android.permission.FOREGROUND_SERVICE_DATA_SYNC"
    "android.permission.PACKAGE_USAGE_STATS"
)

# Loop through each permission and grant it to the app
for permission in "${permissions[@]}"; do
    echo "Granting $permission to $package_name"
    adb shell pm grant "$package_name" "$permission"
done

echo "All permissions granted to $package_name."
