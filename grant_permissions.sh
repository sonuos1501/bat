#!/bin/bash

# --- Part 2: Grant permissions to the application ---
# Replace com.your.package.name with the package name of the app you want to grant permissions to
package_name="vn.edu.gkebooks.launcher"

# List of permissions to grant
permissions=(
    "android.permission.WRITE_SECURE_SETTINGS"
    "android.permission.SYSTEM_ALERT_WINDOW"
    "android.permission.READ_PHONE_STATE"
    "android.permission.RECORD_AUDIO"
    "android.permission.CAMERA"
    "android.permission.WRITE_EXTERNAL_STORAGE"
    "android.permission.ACCESS_FINE_LOCATION"
    "android.permission.ACCESS_COARSE_LOCATION"
    "android.permission.READ_EXTERNAL_STORAGE"
    "android.permission.PACKAGE_USAGE_STATS"
)

# Loop through each permission and grant it to the app
for permission in "${permissions[@]}"; do
    echo "Granting $permission to $package_name"
    adb shell pm grant "$package_name" "$permission"
done

echo "All permissions granted to $package_name."
