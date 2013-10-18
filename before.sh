#/bin/sh

env | sort

sh -e /etc/init.d/xvfb start
export DISPLAY=:99

firefox --version

