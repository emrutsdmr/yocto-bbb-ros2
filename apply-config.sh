#!/bin/bash

# Absolute paths (update if your path changes)
CONFIG_DIR="$HOME/projects/yocto-bbb-ros2/configs"
BUILD_CONF_DIR="$HOME/projects/yocto-bbb-ros2/yocto/build/conf"

# Source config files
LOCAL_CONF_SOURCE="${CONFIG_DIR}/local.scarthgap.conf"
BBLAYERS_CONF_SOURCE="${CONFIG_DIR}/bblayers.scarthgap.conf"

# Destination paths
LOCAL_CONF_DEST="${BUILD_CONF_DIR}/local.conf"
BBLAYERS_CONF_DEST="${BUILD_CONF_DIR}/bblayers.conf"

# Check if build/conf exists
if [ ! -d "$BUILD_CONF_DIR" ]; then
    echo "ERROR: build/conf/ directory not found. Have you sourced oe-init-build-env?"
    exit 1
fi

# Copy config files
cp "$LOCAL_CONF_SOURCE" "$LOCAL_CONF_DEST"
cp "$BBLAYERS_CONF_SOURCE" "$BBLAYERS_CONF_DEST"

echo "Applied config files to build/conf/"
