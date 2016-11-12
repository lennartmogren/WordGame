#!/bin/bash
#
# Script that creates app icons in required sizes.
# Usage: ./create-icons.sh
echo "Creating icons"
# Enable this script with:
# chmod u+x create-icons.sh
#

iosicondir="./resources/ios/icons/"
andicondir="./resources/android/icons/"
icon="./resources/original/icon-orig.png"
iossplash="./resources/original/ios-splash.png"

echo "Master file: $iconmaster"

function ioscreateiconfile {
	local iconfile="$iosicondir$1"
	createimagefile "$icon" "$iconfile" $2 $2
}

function andcreateiconfile {
	local iconfile="$andicondir$1"
	createimagefile "$icon" "$iconfile" $2 $2
}

function createimagefile {
	echo "Creating: $2"
	#echo "cp $1 $2"
	cp "$1" "$2"
	sips -z $4 $3 "$2"
}

ioscreateiconfile "icon-76@2x.png" 152
ioscreateiconfile "icon-76.png" 76
ioscreateiconfile "icon-72@2x.png" 144
ioscreateiconfile "icon-72.png" 72
ioscreateiconfile "icon-60@2x.png" 120
ioscreateiconfile "icon-60.png" 60
ioscreateiconfile "icon-50@2x.png" 100
ioscreateiconfile "icon-50.png" 50
ioscreateiconfile "icon-40@2x.png" 80
ioscreateiconfile "icon-40.png" 40
ioscreateiconfile "icon-small@2x.png" 58
ioscreateiconfile "icon-small.png" 29
ioscreateiconfile "icon@2x.png" 114
ioscreateiconfile "icon.png" 57
createimagefile "$icon" "./resources/ios/iTunes/iTunesArtwork.png" 512 512
createimagefile "$icon" "./resources/ios/iTunes/iTunesArtwork@2x.png" 1024 1024
createimagefile "$iossplash" "./resources/ios/splash/Default-568h@2x~iphone.png" 640 1136
createimagefile "$iossplash" "./resources/ios/splash/Default-Landscape@2x~ipad.png" 2048 1496
createimagefile "$iossplash" "./resources/ios/splash/Default-Landscape~ipad.png" 1024 748
createimagefile "$iossplash" "./resources/ios/splash/Default-Portrait@2x~ipad.png" 1536 2008
createimagefile "$iossplash" "./resources/ios/splash/Default-Portrait~ipad.png" 769 1004
createimagefile "$iossplash" "./resources/ios/splash/Default@2x~iphone.png" 640 960
createimagefile "$iossplash" "./resources/ios/splash/Default~iphone.png" 320 480

andcreateiconfile "drawable/icon.png" 96
andcreateiconfile "drawable-hdpi/icon.png" 72
andcreateiconfile "drawable-ldpi/icon.png" 36
andcreateiconfile "drawable-mdpi/icon.png" 48
andcreateiconfile "drawable-xhdpi/icon.png" 96
createimagefile "$icon" "./resources/android/GooglePlay/icon-512.png" 512 512
