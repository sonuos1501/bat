#!/bin/bash

# --- Part 1: Install all APKs from the directory ---
apk_dir="apk" # Directory where APK files are stored

for apk_file in "$apk_dir"/*.apk; do
    if [ -f "$apk_file" ]; then
        echo "Installing $apk_file"
        adb install "$apk_file"
    else
        echo "No APK files found in $apk_dir"
    fi
done

echo "All APKs installed."
