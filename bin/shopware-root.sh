#!/usr/bin/env bash

CURRENT_DIR=$(pwd)
SHOPWARE_ROOT=""

while [ ! -e "$CURRENT_DIR/shopware.php" ]; do
    SHOPWARE_ROOT="../$SHOPWARE_ROOT"
    CURRENT_DIR="$(dirname "$CURRENT_DIR")"
done

echo "$SHOPWARE_ROOT"