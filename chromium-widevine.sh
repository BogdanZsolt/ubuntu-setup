#!/bin/bash
#LATEST=`curl https://dl.google.com/widevine-cdm/current.txt`
awk 'match($0,/"version": "([0-9.]*)"/,a) {print a[1];}' /opt/google/chrome/WidevineCdm/manifest.json
echo $LATEST
[ -d /usr/lib/chromium ] || mkdir -p /usr/lib/chromium
chmod 755 /usr/lib/chromium
[ -d /usr/lib/chromium-dev ] || mkdir -p /usr/lib/chromium-dev
chmod 755 /usr/lib/chromium-dev
sudo cp /opt/google/chrome/WidevineCdm /usr/lib/chromium/.
sudo ln -s /usr/lib/chromium/WidevineCdm /usr/lib/chromium-dev/WidevineCdm
sudo cp /opt/google/chrome/WidevineCdm/LICENSE /usr/share/licenses/chromium-widevine/LICENSE
sudo chmod 644 /usr/share/licenses/chromium-widevine/LICENSE
ln -s /usr/lib/chromium/WidevineCdm/_platform_specific/linux_x64/libwidevinecdm.so /usr/lib/chromium/libwidevinecdm.so

#wget https://dl.google.com/widevine-cdm/$LATEST-linux-x64.zip
#unzip $LATEST-linux-x64.zip
#sudo mkdir /usr/lib/chromium
#sudo mv libwidevinecdm.so /usr/lib/chromium
#sudo chmod 644 /usr/lib/chromium/libwidevinecdm.so
