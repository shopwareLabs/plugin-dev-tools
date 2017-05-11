#!/usr/bin/env bash

CURRENT_DIR=$(pwd)
SHOPWARE_ROOT=""

while [ ! -e "$CURRENT_DIR/shopware.php" ]; do
    SHOPWARE_ROOT="$(echo "$CURRENT_DIR" | awk -F '/' '{$NF=""; print $0}' | tr ' ' /)"
    CURRENT_DIR="$(dirname "$CURRENT_DIR")"

    if [[ SHOPWARE_ROOT == "/" ]]; then
        echo "Shopware path was not found"
        exit 1
    fi
done

echo "$SHOPWARE_ROOT"