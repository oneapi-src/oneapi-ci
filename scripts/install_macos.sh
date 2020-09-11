#!/bin/bash

URL=$1
COMPONENTS=$2

curl --output webimage.dmg --url $URL
hdiutil attach webimage.dmg
sudo /Volumes/$(basename $URL .dmg)/bootstrapper.app/Contents/MacOS/bootstrapper -s --action install --components=$COMPONENTS --eula=accept --continue-with-optional-error=yes
