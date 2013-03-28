#/bin/sh

set -x

CHROME_REVISION=191150

type -a chrome

sh -e /etc/init.d/xvfb start
sudo apt-get install -y unzip libxss1
curl -L -O "http://commondatastorage.googleapis.com/chromium-browser-snapshots/Linux_x64/$CHROME_REVISION/chrome-linux.zip"
unzip chrome-linux.zip
curl -L "http://commondatastorage.googleapis.com/chromium-browser-snapshots/Linux_x64/$CHROME_REVISION/chrome-linux.test/chromedriver" > chrome-linux/chromedriver
chmod +x chrome-linux/chromedriver

sudo chmod 1777 /dev/shm