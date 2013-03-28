#/bin/sh

set -x

CHROME_REVISION=191150

sh -e /etc/init.d/xvfb start
sudo apt-get install -y unzip libxss1
curl -L -O "http://commondatastorage.googleapis.com/chromium-browser-snapshots/Linux/$CHROME_REVISION/chrome-linux.zip"
unzip chrome-linux.zip
curl -L "http://commondatastorage.googleapis.com/chromium-browser-snapshots/Linux/$CHROME_REVISION/chrome-linux.test/chromedriver" > chrome-linux/chromedriver
chmod +x chrome-linux/chromedriver

file chrome-linux/chromedriver
ls -la chrome-linux