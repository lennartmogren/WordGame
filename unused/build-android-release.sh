#!/bin/bash
#
# Script that builds Android release apk
# rst
echo "Building Android release APK"
#
# Good to have
# chmod u+x build-android-release.sh
# keytool -genkey -v -keystore wordgame.keystore -alias wordgame_alias -keyalg RSA -keysize 2048 -validity 365000
cordova build android --release
jarsigner -verbose -sigalg SHA1withRSA -digestalg SHA1 -keystore wordgame.keystore platforms/android/bin/WordGame-release-unsigned.apk wordgame_alias
jarsigner -verify -verbose platforms/android/bin/HyperReload-release-unsigned.apk
zipalign -v 4 platforms/android/bin/WordGame-release-unsigned.apk platforms/android/bin/WordGame.apk
cp platforms/android/bin/WordGame.apk resources/android/app/WordGame.apk
