#/bin/sh

set -x
set -e

env | sort

CHROME_REVISION="228611"
CHROMEDRIVER_VERSION="2.4"
sh -e /etc/init.d/xvfb start

ps auxww | grep xvfb
echo "DISPLAY: #{DISPLAY}"

sudo apt-get install -y unzip libxss1
curl -L -O "http://commondatastorage.googleapis.com/chromium-browser-snapshots/Linux_x64/${CHROME_REVISION}/chrome-linux.zip"
unzip chrome-linux.zip
curl -L -O "http://chromedriver.storage.googleapis.com/${CHROMEDRIVER_VERSION}/chromedriver_linux64.zip"
unzip chromedriver_linux64.zip
mv chromedriver chrome-linux/chromedriver
chmod +x chrome-linux/chromedriver
sudo chmod 1777 /dev/shm

ls -la chrome-linux
file chrome-linux/chromedriver
file chrome-linux/chrome

./chrome-linux/chromedriver &
