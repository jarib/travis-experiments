#/bin/sh

set -x
set -e

node --version
npm --version

npm install -g buster sinon@1.6.0 autolint
