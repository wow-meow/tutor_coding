#!/bin/bash

# Set the path to your Scoop apps directory
SCOOP_APPS_DIR="E:/Scoop/apps"

# Loop through each app directory
for app_dir in "$SCOOP_APPS_DIR"/*; do
    if [ -d "$app_dir/current" ]; then
        install_json="$app_dir/current/install.json"
        if [ -f "$install_json" ]; then
            # Check if the bucket value is "xx"
            if grep -q '"bucket": ".*"' "$install_json"; then
                echo "Updating bucket for $(basename "$app_dir")"
                # Replace "xx" with "spc"
                sed -i 's/"bucket": ".*"/"bucket": "spc"/' "$install_json"
            fi
        fi
    fi
done

echo "Done."

