#!/bin/sh

echo "Beginning File Download"
ggID='10kVVvs5R8IVOr2krS1nW2D4o3Tddvxkn'  
ggURL='https://drive.google.com/uc?export=download'  
filename="$(curl -sc /tmp/gcokie "${ggURL}&id=${ggID}" | grep -o '="uc-name.*</span>' | sed 's/.*">//;s/<.a> .*//')"  
getcode="$(awk '/_warning_/ {print $NF}' /tmp/gcokie)"  
curl -Lb /tmp/gcokie "${ggURL}&confirm=${getcode}&id=${ggID}" -o "${filename}"
rm -rf /tmp/gcokie

echo "File downloaded. Loading docker image"
docker load /tmp/burp.tar
echo "Image loaded. Starting image..."
docker run -d -e PUID=1000 -e PGID=1000 -p 3000:3000 secclub/burpsuite-desktop
echo "Complete! Exiting..."