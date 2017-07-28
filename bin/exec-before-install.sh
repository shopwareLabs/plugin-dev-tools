#!/usr/bin/env bash

PLUGIN_DIR=$1

ENV=$2

if [ -f $PLUGIN_DIR/before_install_plugin.sh ]; then
    $PLUGIN_DIR/before_install_plugin.sh $PLUGIN_DIR $ENV;
fi