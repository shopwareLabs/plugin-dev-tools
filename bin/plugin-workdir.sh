#!/usr/bin/env bash

CURRENT_DIR=$(pwd)

while [[ ! -e "$CURRENT_DIR/Bootstrap.php" && ! -e "$CURRENT_DIR/plugin.xml" ]]; do
    CURRENT_DIR="$(dirname "$CURRENT_DIR")"
done

# Legacy plugin system
if [[ -e "$CURRENT_DIR/Bootstrap.php" ]]; then
    echo "$CURRENT_DIR" | awk -F 'engine/' '{print "/var/www/html/engine/"$2 }'
    exit 0
fi

# Plugin system for shopware > 5.2
if [[ -e "$CURRENT_DIR/plugin.xml" ]]; then
    PLUGIN_NAME="$(echo "$CURRENT_DIR" | awk -F '/' '{ print $NF }')"
    echo "/var/www/html/custom/plugins/$PLUGIN_NAME"
    exit 0
fi

exit 1