#!/bin/bash
cd $PROJECT_DIR
BUILD_VERSION=`/usr/local/bin/git rev-parse --short HEAD`
cd "$BUILT_PRODUCTS_DIR/$PRODUCT_NAME.app"
RELEASE_VERSION=$(/usr/libexec/PlistBuddy -c "Print CFBundleShortVersionString" Info.plist)
/usr/libexec/PlistBuddy -c "Set CFBundleVersion $BUILD_VERSION" Info.plist
/usr/libexec/PlistBuddy -c "Set :PreferenceSpecifiers:1:DefaultValue $RELEASE_VERSION ($BUILD_VERSION)" Settings.bundle/Root.plist