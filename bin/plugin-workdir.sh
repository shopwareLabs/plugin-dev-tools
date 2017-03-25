#!/usr/bin/env bash

CURRENT_DIR=$(pwd)

while [[ ! -e "$CURRENT_DIR/Bootstrap.php" && ! -e "$CURRENT_DIR/plugin.xml" ]]; do
    CURRENT_DIR="$(dirname "$CURRENT_DIR")"
done

echo "$CURRENT_DIR" | awk -F 'engine/' '{print "/var/www/html/engine/"$2 }'