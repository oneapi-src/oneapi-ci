#!/bin/bash

URL=$1
COMPONENTS=$2
TIMEOUT=$3
if [ -z "$TIMEOUT" ]
then
  TIMEOUT=300
fi

curl --output webimage.dmg --url $URL
hdiutil attach webimage.dmg
sudo /Volumes/$(basename $URL .dmg)/bootstrapper.app/Contents/MacOS/bootstrapper -s --action install --components=$COMPONENTS --eula=accept --continue-with-optional-error=yes --log-dir=. &
sleep $TIMEOUT
cat $(ls bootstrapper*)
cat $(ls installer*)
