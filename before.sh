#/bin/sh

set -x
set -e

env | sort

CHROME_REVISION="228611"
CHROMEDRIVER_VERSION="2.4"
sh -e /etc/init.d/xvfb start

sudo chmod 1777 /dev/shm

sudo apt-get install -y unzip libxss1
curl -L -O "http://commondatastorage.googleapis.com/chromium-browser-snapshots/Linux_x64/${CHROME_REVISION}/chrome-linux.zip"
unzip chrome-linux.zip

curl -L -O "http://chromedriver.storage.googleapis.com/${CHROMEDRIVER_VERSION}/chromedriver_linux64.zip"
unzip chromedriver_linux64.zip

sudo chown root:root chrome-linux/chrome_sandbox
sudo chmod 4755 chrome-linux/chrome_sandbox
# export CHROME_DEVEL_SANDBOX="$PWD/chrome-linux/chrome_sandbox"
export CHROME_DEVEL_SANDBOX=""

mv chromedriver chrome-linux/chromedriver
chmod +x chrome-linux/chromedriver

ls -la chrome-linux
cat /etc/fstab

./chrome-linux/chrome &
