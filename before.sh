#/bin/sh

sh -e /etc/init.d/xvfb start

sudo apt-get install -y unzip
curl -L -O "http://commondatastorage.googleapis.com/chromium-browser-snapshots/Linux/116062/chrome-linux.zip"
unzip chrome-linux.zip
curl -L "http://commondatastorage.googleapis.com/chromium-browser-snapshots/Linux/116062/chrome-linux.test/chromedriver" > chrome-linux/chromedriver
chmod +x chrome-linux/chromedriver
ln -s chrome-linux/chrome chrome-linux/google-chrome

